# $NetBSD: options.mk,v 1.3 2020/11/29 22:46:02 nia Exp $

PKG_OPTIONS_VAR=		PKG_OPTIONS.librespot
PKG_SUPPORTED_OPTIONS=		alsa gstreamer jack portaudio pulseaudio rodio sdl
PKG_SUGGESTED_OPTIONS=		portaudio

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Malsa)
CARGO_FEATURES+=	alsa-backend
RUSTFLAGS+=		-C link-arg=${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.alsa-lib}/lib
.include "../../audio/alsa-lib/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mgstreamer)
CARGO_FEATURES+=	gstreamer-backend
RUSTFLAGS+=		-C link-arg=${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.gstreamer1}/lib
.include "../../multimedia/gstreamer1/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mjack)
CARGO_FEATURES+=	jackaudio-backend
RUSTFLAGS+=		-C link-arg=-L${BUILDLINK_PREFIX.jack}/lib
RUSTFLAGS+=		-C link-arg=${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.jack}/lib
.include "../../audio/jack/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mportaudio)
CARGO_FEATURES+=	portaudio-backend
RUSTFLAGS+=		-C link-arg=${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.portaudio}/${BUILDLINK_LIBDIRS.portaudio}
.include "../../audio/portaudio/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mpulseaudio)
CARGO_FEATURES+=	pulseaudio-backend
RUSTFLAGS+=		-C link-arg=${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.pulseaudio}/lib
.include "../../audio/pulseaudio/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mrodio)
CARGO_FEATURES+=	rodio-backend
.endif

.if !empty(PKG_OPTIONS:Msdl)
CARGO_FEATURES+=	sdl-backend
RUSTFLAGS+=		-C link-arg=-L${BUILDLINK_PREFIX.SDL2}/lib
RUSTFLAGS+=		-C link-arg=${COMPILER_RPATH_FLAG}${BUILDLINK_PREFIX.SDL2}/lib
.include "../../devel/SDL2/buildlink3.mk"
.endif
