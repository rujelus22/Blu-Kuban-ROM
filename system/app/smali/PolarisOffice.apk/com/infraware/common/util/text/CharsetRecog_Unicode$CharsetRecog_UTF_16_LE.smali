.class Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;
.super Lcom/infraware/common/util/text/CharsetRecog_Unicode;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/util/text/CharsetRecog_Unicode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_UTF_16_LE"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecog_Unicode;-><init>()V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const-string v0, "UTF-16LE"

    return-object v0
.end method

.method match(Lcom/infraware/common/util/text/CharsetDetector;)I
    .registers 7
    .parameter "det"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 56
    iget-object v0, p1, Lcom/infraware/common/util/text/CharsetDetector;->fRawInput:[B

    .line 58
    .local v0, input:[B
    array-length v2, v0

    if-lt v2, v4, :cond_25

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_25

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_25

    .line 61
    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_26

    aget-byte v2, v0, v4

    if-nez v2, :cond_26

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    if-nez v2, :cond_26

    .line 69
    :cond_25
    :goto_25
    return v1

    .line 65
    :cond_26
    const/16 v1, 0x64

    goto :goto_25
.end method
