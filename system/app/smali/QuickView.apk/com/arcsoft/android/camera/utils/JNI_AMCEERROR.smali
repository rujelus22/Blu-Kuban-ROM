.class public Lcom/arcsoft/android/camera/utils/JNI_AMCEERROR;
.super Ljava/lang/Object;
.source "JNI_AMCEERROR.java"


# static fields
.field public static final MERR_AMCE_BASE:I = 0x7050000

.field public static final MERR_AMCE_CONTINUE_CANCELED:I = 0x7050031

.field public static final MERR_AMCE_CONTINUE_FAILED:I = 0x7050030

.field public static final MERR_AMCE_MOSOIC_FAILED:I = 0x7050010

.field public static final MERR_AMCE_NO_DISKSPACE:I = 0x7050002

.field public static final MERR_AMCE_NO_SDCARD:I = 0x7050001

.field public static final MERR_AMCE_NO_VIEWFINDER:I = 0x7050003

.field public static final MERR_AMCE_PANORAMA_FAILED:I = 0x7050020

.field public static final MERR_AMCE_RECORDING_FAILED:I = 0x7050800


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
