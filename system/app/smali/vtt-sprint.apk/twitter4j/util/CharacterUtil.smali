.class public final Ltwitter4j/util/CharacterUtil;
.super Ljava/lang/Object;
.source "CharacterUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static count(Ljava/lang/String;)I
    .registers 2
    .parameter "text"

    .prologue
    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public static isExceedingLengthLimitation(Ljava/lang/String;)Z
    .registers 3
    .parameter "text"

    .prologue
    .line 45
    invoke-static {p0}, Ltwitter4j/util/CharacterUtil;->count(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8c

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
