.class Lcom/vlingo/client/core/util/URLEncoder$CCharacter;
.super Ljava/lang/Object;
.source "URLEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/util/URLEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CCharacter"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forDigit(II)C
    .registers 4
    .parameter "digit"
    .parameter "radix"

    .prologue
    const/4 v0, 0x0

    .line 114
    if-ge p0, p1, :cond_5

    if-gez p0, :cond_6

    .line 123
    :cond_5
    :goto_5
    return v0

    .line 117
    :cond_6
    const/4 v1, 0x2

    if-lt p1, v1, :cond_5

    const/16 v1, 0x24

    if-gt p1, v1, :cond_5

    .line 120
    const/16 v0, 0xa

    if-ge p0, v0, :cond_15

    .line 121
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    goto :goto_5

    .line 123
    :cond_15
    add-int/lit8 v0, p0, 0x57

    int-to-char v0, v0

    goto :goto_5
.end method
