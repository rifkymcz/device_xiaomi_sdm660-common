# Apex
ifeq ($(ENABLE_APEX), true)
PRODUCT_PRODUCT_PROPERTIES += \
     ro.apex.updatable=true
endif

# ART
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.dex2oat-threads=8 \
    dalvik.vm.image-dex2oat-filter=speed \
    ro.vendor.qti.am.reschedule_service=true

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio.deep_buffer.media=true \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    audio.sys.noisy.broadcast.delay=600 \
    audio.sys.offload.pstimeout.secs=3 \
    persist.audio.in_mmap_delay_micros=100 \
    persist.audio.out_mmap_delay_micros=150 \
    persist.vendor.audio.ras.enabled=true \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=true \
    persist.vendor.audio.hifi.int_codec=true \
    persist.audio.fluence.voicecomm=true \
    persist.vendor.audio.avs.afe_api_version=2 \
    ro.vendor.audio.sos=true \
    persist.vendor.audio.spv3.enable=true \
    persist.vendor.audio.hw.binder.size_kbyte=1024 \
    persist.vendor.audio.ras.enabled=false \
    ro.af.client_heap_size_kbyte=7168 \
    ro.config.vc_call_vol_steps=7 \
    ro.config.media_vol_steps=25 \
    ro.vendor.audio.sdk.fluencetype=fluence \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.audio_hal.period_size=240 \
    vendor.audio.hw.aac.encoder=true \
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    vendor.audio.offload.track.enable=false \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.safx.pbe.enabled=true \
    vendor.audio.snd_card.open.retries=50 \
    vendor.audio.tunnel.encode=false \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio.spkr_prot.tx.sampling_rate=48000 \
    vendor.audio.volume.headset.gain.depcal=true \
    vendor.fm.a2dp.conc.disabled=true \
    vendor.voice.path.for.pcm.voip=true

# Audio Feature
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.adm.buffering.ms=3 \
    vendor.audio.feature.a2dp_offload.enable=false \
    vendor.audio.feature.afe_proxy.enable=true \
    vendor.audio.feature.anc_headset.enable=true \
    vendor.audio.feature.audiozoom.enable=false \
    vendor.audio.feature.battery_listener.enable=false \
    vendor.audio.feature.compr_cap.enable=false \
    vendor.audio.feature.compress_in.enable=false \
    vendor.audio.feature.compress_meta_data.enable=true \
    vendor.audio.feature.compr_voip.enable=true \
    vendor.audio.feature.concurrent_capture.enable=false \
    vendor.audio.feature.custom_stereo.enable=true \
    vendor.audio.feature.deepbuffer_as_primary.enable=false \
    vendor.audio.feature.display_port.enable=false \
    vendor.audio.feature.dsm_feedback.enable=false \
    vendor.audio.feature.dynamic_ecns.enable=false \
    vendor.audio.feature.ext_hw_plugin.enable=false \
    vendor.audio.feature.external_dsp.enable=false \
    vendor.audio.feature.external_speaker.enable=false \
    vendor.audio.feature.external_speaker_tfa.enable=false \
    vendor.audio.feature.fluence.enable=true \
    vendor.audio.feature.fm.enable=true \
    vendor.audio.feature.hdmi_edid.enable=true \
    vendor.audio.feature.hdmi_passthrough.enable=true \
    vendor.audio.feature.hfp.enable=true \
    vendor.audio.feature.wsa.enable=true \
    vendor.audio.feature.snd_mon.enable=true \
    vendor.audio.feature.hifi_audio.enable=true \
    vendor.audio.feature.hwdep_cal.enable=false \
    vendor.audio.feature.incall_music.enable=false \
    vendor.audio.feature.multi_voice_session.enable=true \
    vendor.audio.feature.keep_alive.enable=false \
    vendor.audio.feature.kpi_optimize.enable=false \
    vendor.audio.feature.maxx_audio.enable=false \
    vendor.audio.feature.ras.enable=true \
    vendor.audio.feature.record_play_concurency.enable=false \
    vendor.audio.feature.snd_mon.enable=false \
    vendor.audio.feature.src_trkn.enable=true \
    vendor.audio.feature.ssrec.enable=false \
    vendor.audio.feature.usb_offload.enable=true \
    vendor.audio.feature.usb_offload_burst_mode.enable=false \
    vendor.audio.feature.usb_offload_sidetone_volume.enable=false \
    vendor.audio.feature.vbat.enable=true \
    vendor.audio.feature.wsa.enable=false

ifneq ($(filter jason,$(TARGET_DEVICE)),)
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.feature.spkr_prot.enable=false
else
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.feature.spkr_prot.enable=true
endif

# Bluetooth & FM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.bluetooth.a2dp_offload.disabled=false \
    persist.bluetooth.bluetooth_audio_hal.disabled=false \
    persist.vendor.bt.aac_frm_ctl.enabled=true \
    persist.vendor.qcom.bluetooth.enable.splita2dp=false \
    ro.vendor.bluetooth.wipower=false \
    vendor.qcom.bluetooth.soc=cherokee \
    bt.max.hfpclient.connections=1 \
    ro.vendor.fm.use_audio_session=true \
    vendor.hw.fm.init=0

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    vendor.bluetooth.soc=cherokee

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.privapp.list=org.codeaurora.snapcam \
    persist.vendor.camera.dual.isp.sync=0 \
    persist.vendor.camera.HAL3.enabled=1 \
    persist.vendor.camera.eis.enable=1 \
    persist.vendor.camera.exif.make=Xiaomi \
    vendor.camera.aux.packageblacklist=com.discord \
    camera.aux.packagelist=com.google.android.GoogleCamera,com.android.camera,org.codeaurora.snapcam \
    vendor.camera.aux.packagelist=com.google.android.GoogleCamera,com.android.camera,org.codeaurora.snapcam \
    persist.sys.camera.camera2=true \
    persist.vendor.camera.privapp.list=org.codeaurora.snapcam \
    persist.vendor.camera.preview.ubwc=0 \
    persist.vendor.camera.isp.clock.optmz=0 \
    persist.vendor.camera.isp.turbo=1 \
    persist.vendor.camera.imglib.usefdlite=1 \
    persist.vendor.camera.expose.aux=1 \
    persist.vendor.camera.awb.sync=2 \
    persist.vendor.camera.manufacturer=Xiaomi \
    persist.vendor.camera.model=Redmi Note 7

# Charger
PRODUCT_PRODUCT_PROPERTIES += \
    ro.charger.disable_init_blank=true \
    ro.charger.enable_suspend=true

# Codec2 switch
PRODUCT_PROPERTY_OVERRIDES += \
    debug.media.codec2=2

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.latch_unsignaled=0 \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.hw=1 \
    debug.sf.disable_backpressure= 1 \
    debug.sf.early_app_phase_offset_ns=1500000 \
    debug.sf.early_gl_phase_offset_ns=3000000 \
    debug.sf.early_gl_app_phase_offset_ns=15000000 \
    debug.sf.early_phase_offset_ns=1500000 \
    debug.cpurend.vsync=false \
    debug.hwui.use_buffer_age=false \
    vendor.display.disable_skip_validate=1 \
    vendor.gralloc.enable_fb_ubwc=1 \
    vendor.display.enable_default_color_mode=0 \
    vendor.opengles.version=196610 \
    dev.pm.dyn_samplingrate=1 \
    persist.demo.hdmirotationlock=false \
    persist.hwc.enable_vds=1 \
    ro.opengles.version=196610 \
    ro.sf.lcd_density=403 \
    ro.vendor.display.cabl=2 \
    vendor.display.enable_default_color_mode=1

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# The default sf phase offset is set to 6ms, to avoid it be included into next
# vsync threshold, set high fps early sf and next vsync threshold phase offset
# to 6.1ms, which is bigger than all sf phase offsets in normal frame rate.
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.high_fps_early_phase_offset_ns=6100000 \
    debug.sf.high_fps_early_gl_phase_offset_ns=9000000 \
    debug.sf.phase_offset_threshold_for_next_vsync_ns=6100000

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.backup.ntpServer="0.pool.ntp.org" \
    persist.vendor.overlay.izat.optin=rro
    
# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.egl=adreno \
    ro.hardware.vulkan=adreno

# HAL1 apps list
PRODUCT_PROPERTY_OVERRIDES += \
    camera.hal1.packagelist=com.android.camera,com.android.camera2,com.instagram.android \
    vendor.camera.hal1.packagelist= com.android.camera,com.android.camera2,com.instagram.android

# iwlan vowifi corresponding
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.data.iwlan.enable=true

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.vendor.ims.disableUserAgent=0

# LMKD
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lmk.low=1001 \
    ro.lmk.medium=800 \
    ro.lmk.critical=0 \
    ro.lmk.critical_upgrade=false \
    ro.lmk.upgrade_pressure=100 \
    ro.lmk.downgrade_pressure=100 \
    ro.lmk.kill_heaviest_task=true\
    ro.lmk.kill_timeout_ms=100 \
    ro.lmk.use_minfree_levels=true

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0 \
    media.stagefright.thumbnail.prefer_hw_codecs=true \
    vendor.vidc.dec.enable.downscalar=1 \
    vendor.vidc.enc.disable.pq=true \
    vendor.vidc.enc.disable_bframes=1 \
    vidc.enc.dcvs.extra-buff-count=2 \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.aac_51_output_enabled=true \
    mm.enable.smoothstreaming=true \
    vidc.enc.target_support_bframe=1 \
    vendor.mm.enable.qcom_parser=13631487 \
    vendor.video.disable.ubwc=1 \
    ro.media.recorder-max-base-layer-fps=60

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sys.fw.bservice_enable=true
    
# MISC
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    persist.vendor.delta_time.enable=true \
    qemu.hw.mainkeys=0 \
    ro.com.android.dataroaming=false \
    ro.vendor.qti.sys.fw.bservice_enable=true \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp

# Netflix custom property
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.netflix.bsp_rev=Q660-13149-1

# OEM Unlock reporting
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.oem_unlock_supported=1

# QCOM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1 \
    persist.vendor.qcomsysd.enabled=1 \
    ro.vendor.extension_library=libqti-perfd-client.so \
    persist.vendor.dpm.feature=1

# QTI
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.va_aosp.support=1

PRODUCT_ODM_PROPERTIES += \
    ro.vendor.qti.va_odm.support=1

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.data.mode=concurrent \
    persist.data.df.dev_name=rmnet_usb0 \
    persist.debug.coresight.config=stm-events \
    persist.timed.enable=true \
    persist.vendor.data.iwlan.enable=true \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.qti.telephony.vt_cam_interface=1 \
    persist.vendor.radio.atfwd.start=true \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.data_con_rprt=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.procedure_bytes=SKIP \
    persist.backup.ntpServer=0.pool.ntp.org \
    persist.radio.multisim.config=dsds \
    ro.telephony.iwlan_operation_mode=legacy \
    ro.vendor.use_data_netmgrd=true \
    ro.telephony.default_network=22,22 \
    vendor.rild.libpath=/vendor/lib64/libril-qc-hal-qmi.so \
    persist.vendor.radio.add_power_save=1

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    DEVICE_PROVISIONED=1 \
    ril.subscription.types=NV,RUIM \
    telephony.lteOnCdmaDevice=1

# Rendering
PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.hw=1 \
    debug.enable.sglscale=1 \
    debug.sf.disable_hwc=0 \
    debug.sf.gpu_comp_tiling=1 \
    debug.sf.recomputecrop=0 \
    persist.dbg.ims_volte_enable=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.vendor.ims.disableADBLogs=1 \
    persist.vendor.ims.disableIMSLogs=1 \
    persist.vendor.radio.data_ltd_sys_ind=1 \
    persist.vendor.radio.force_ltd_sys_ind=1 \
    persist.radio.calls.on.ims=1

# Sensor
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.sensors.facing=false \
    ro.vendor.sdk.sensors.gestures=false \
    ro.vendor.sensors.cmc=false \
    ro.vendor.sensors.dev_ori=false \
    ro.vendor.sensors.mot_detect=true \
    ro.vendor.sensors.pmd=true \
    ro.vendor.sensors.sta_detect=true \
    ro.vendor.sensors.mot_detect=true

# SurfaceFlinger
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.disable_backpressure=1 \
    debug.sf.enable_gl_backpressure=1 \
    debug.sdm.support_writeback=0 \
    debug.sf.latch_unsignaled=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.max_virtual_display_dimension=4096

# System restart
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.ssr.restart_level=ALL_ENABLE \
    ro.build.shutdown_timeout=2

# Thermal configs path
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    sys.thermal.data.path=/data/vendor/thermal/

# WFD
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0

# ZRAM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.zram.mark_idle_delay_mins=60 \
    ro.zram.first_wb_delay_mins=180 \
    ro.zram.periodic_wb_delay_hours=24

# Gboard
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase.ms=android-xiaomi-rev2 \
    ro.com.google.ime.kb_pad_port_b=1 \
    ro.com.google.ime.corner_key_r=35 \
    ro.com.google.ime.kb_pad_port_l=7 \
    ro.com.google.ime.kb_pad_port_r=7 \
    ro.com.google.ime.kb_pad_land_l=14 \
    ro.com.google.ime.kb_pad_land_r=14 \
    ro.com.google.ime.kb_pad_port_b=1 \
    ro.opa.eligible_device=true \
    ro.com.google.ime.theme_id=5 \
    ro.com.google.ime.bs_theme=true \
    ro.com.google.ime.system_lm_dir=/product/usr/share/ime/google/d3_lms
