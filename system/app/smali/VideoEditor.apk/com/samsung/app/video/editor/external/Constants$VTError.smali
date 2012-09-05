.class public Lcom/samsung/app/video/editor/external/Constants$VTError;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VTError"
.end annotation


# static fields
.field public static final TRANCODER_DECODE_ERROR:I = 0x12

.field public static final TRANCODER_ENCODE_ERROR:I = 0x13

.field public static final TRANCODER_ERROR_AUDIO_ONLY:I = 0x9

.field public static final TRANCODER_ERROR_INVALID_FILE:I = 0x4

.field public static final TRANCODER_ERROR_INVALID_FORMAT:I = 0x5

.field public static final TRANCODER_ERROR_INVALID_RESOLUTION:I = 0xe

.field public static final TRANCODER_ERROR_INVALID_USER_TIME:I = 0x6

.field public static final TRANCODER_ERROR_LOW_MEMORY:I = 0x11

.field public static final TRANCODER_ERROR_MULTI_TRAK_AUDIO:I = 0x10

.field public static final TRANCODER_ERROR_MULTI_TRAK_VIDEO:I = 0xf

.field public static final TRANCODER_ERROR_TRACKS:I = 0x8

.field public static final TRANCODER_FILE_OPEN_ERR:I = 0xa

.field public static final TRANCODER_FILE_READ_ERROR:I = 0xb

.field public static final TRANCODER_FILE_WRITE_ERROR:I = 0x7

.field public static final TRANCODER_INVALID_ARGUMENT:I = 0x2

.field public static final TRANCODER_NO_AUDIO_TRACK:I = 0xc

.field public static final TRANCODER_NO_VIDEO_TRACK:I = 0xd

.field public static final TRANCODER_NULL_POINTER_ERR:I = 0x3

.field public static final TRANCODER_OPERATION_CANCELLED:I = 0x1c

.field public static final TRANCODER_SUCCESS:I = 0x1

.field public static final TRANCODER_VTRANSITION_FAILED:I = 0x1d

.field public static final TRANSCODER_ADD_EFFECT_FAILED:I = 0x26

.field public static final TRANSCODER_AUD_APPLYEFFECT_FAIL:I = 0x28

.field public static final TRANSCODER_AUD_NOMORE_FRAMES:I = 0x1e

.field public static final TRANSCODER_AUD_POSTPROCRESS_FAIL:I = 0x27

.field public static final TRANSCODER_AUD_REPEATFILE_FAIL:I = 0x2a

.field public static final TRANSCODER_CREATEDIR_FAILED:I = 0x23

.field public static final TRANSCODER_DINIT_CODEC_FAIL:I = 0x19

.field public static final TRANSCODER_DINIT_READER_FAIL:I = 0x21

.field public static final TRANSCODER_DINIT_WRITER_FAIL:I = 0x20

.field public static final TRANSCODER_FORMAT_CONVERSION_FAILED:I = 0x2b

.field public static final TRANSCODER_INIT_CODEC_FAIL:I = 0x18

.field public static final TRANSCODER_INIT_READER_FAIL:I = 0x16

.field public static final TRANSCODER_INIT_WRITER_FAIL:I = 0x17

.field public static final TRANSCODER_INSERT_TEXT_FAILED:I = 0x25

.field public static final TRANSCODER_MERGE_FAILED:I = 0x22

.field public static final TRANSCODER_READFILE_DONE:I = 0x1a

.field public static final TRANSCODER_READ_FAIL:I = 0x14

.field public static final TRANSCODER_REMOVEDIR_FAILED:I = 0x24

.field public static final TRANSCODER_SEEK_FAIL:I = 0x1b

.field public static final TRANSCODER_VID_SETFILEPROPERTY_FAIL:I = 0x29

.field public static final TRANSCODER_VT_LIB_ERROR:I = 0x1f

.field public static final TRANSCODER_WRITE_FAIL:I = 0x15


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
