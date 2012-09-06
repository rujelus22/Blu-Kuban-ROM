.class public abstract Lcom/google/android/music/athome/api/AtHomeErrorType;
.super Ljava/lang/Object;
.source "AtHomeErrorType.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValid(I)Z
    .registers 2
    .parameter "errorType"

    .prologue
    .line 52
    sparse-switch p0, :sswitch_data_8

    .line 66
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 64
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 52
    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0xbbfd1 -> :sswitch_5
        0xbbfd2 -> :sswitch_5
        0xbbfd3 -> :sswitch_5
        0xbbfd4 -> :sswitch_5
        0xbbfd5 -> :sswitch_5
        0xbbfd6 -> :sswitch_5
        0xbbfd7 -> :sswitch_5
        0xbbfd8 -> :sswitch_5
        0xbc3b9 -> :sswitch_5
        0xbc3ba -> :sswitch_5
    .end sparse-switch
.end method
