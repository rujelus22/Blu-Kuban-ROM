.class public Lcom/android/vcard/VCardUtils$TextUtilsPort;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextUtilsPort"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrintableAscii(C)Z
    .registers 4
    .parameter "c"

    .prologue
    .line 106
    const/16 v0, 0x20

    .line 107
    .local v0, asciiFirst:I
    const/16 v1, 0x7e

    .line 108
    .local v1, asciiLast:I
    const/16 v2, 0x20

    if-gt v2, p0, :cond_c

    const/16 v2, 0x7e

    if-le p0, v2, :cond_14

    :cond_c
    const/16 v2, 0xd

    if-eq p0, v2, :cond_14

    const/16 v2, 0xa

    if-ne p0, v2, :cond_16

    :cond_14
    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 112
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 113
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 114
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/vcard/VCardUtils$TextUtilsPort;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_13

    .line 115
    const/4 v2, 0x0

    .line 118
    :goto_12
    return v2

    .line 113
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 118
    :cond_16
    const/4 v2, 0x1

    goto :goto_12
.end method
