.class public Lcom/sec/android/app/videoplayer/activity/Native;
.super Ljava/lang/Object;
.source "Native.java"


# static fields
.field public static final SUBTITLE_CODEC_GRAY8:I = 0x626d7038

.field public static final SUBTITLE_LANGUAGE_CHINESE:I = 0x690f

.field public static final SUBTITLE_LANGUAGE_ENGLISH:I = 0x15c7

.field public static final SUBTITLE_LANGUAGE_FRENCH:I = 0x1a45

.field public static final SUBTITLE_LANGUAGE_GERMAN:I = 0x1cb2

.field public static final SUBTITLE_LANGUAGE_ITALIAN:I = 0x2681

.field public static final SUBTITLE_LANGUAGE_JAPANESE:I = 0x2a0e

.field public static final SUBTITLE_LANGUAGE_KOREAN:I = 0x2df2

.field public static final SUBTITLE_LANGUAGE_SIMPLE_CHINESE:I = 0xd13

.field public static final SUBTITLE_LANGUAGE_SPANISH:I = 0x4e01

.field public static final SUBTITLE_LANGUAGE_TRADITION_CHINESE:I = 0xd14

.field public static final SUBTITLE_LANGUAGE_UNKNOW:I = 0x0

.field public static final SUBTITLE_SETCFG_DEFAULTLAN:I = 0x457

.field public static final SUBTITLE_SETCFG_SETCHARSET:I = 0x459

.field public static final SUBTITLE_SETCFG_SETSUBFPS:I = 0x458

.field public static final SUBTITLE_TYPE_IMAGE:I = 0x1

.field public static final SUBTITLE_TYPE_STRING:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const-string v0, "arcsoft_subtitle"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native ARCSubtitleGetString(JJ)Ljava/lang/String;
.end method

.method public static native ARCSubtitleGetString_Native(JJ[CJ)I
.end method

.method public static native ARCSubtitleGetString_TimeSpan(J)J
.end method

.method public static native ARCSubtitleGetString_TimeStamp(J)J
.end method

.method public static native ARCSubtitleGetTrackInfo_CharSet(JJ)J
.end method

.method public static native ARCSubtitleGetTrackInfo_EndTime(JJ)J
.end method

.method public static native ARCSubtitleGetTrackInfo_Language(JJ)J
.end method

.method public static native ARCSubtitleGetTrackInfo_StartTime(JJ)J
.end method

.method public static native ARCSubtitleGetTrackInfo_SubtitleType(JJ)J
.end method

.method public static native ARCSubtitleGetTrackNumber(J)I
.end method

.method static native ARCSubtitleIndex2Time(JJ)I
.end method

.method public static native ARCSubtitleInit([BJ)J
.end method

.method public static native ARCSubtitleSelectTrack(JJJJ)I
.end method

.method public static native ARCSubtitleSetConfig(JJJ)I
.end method

.method public static native ARCSubtitleTime2Index(JJ)I
.end method

.method public static native ARCSubtitleUnInit(J)I
.end method
