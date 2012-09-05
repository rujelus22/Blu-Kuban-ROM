.class Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;
.super Lcom/infraware/common/util/text/CharsetRecog_Unicode;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/util/text/CharsetRecog_Unicode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_UTF_16_BE"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecog_Unicode;-><init>()V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    const-string v0, "UTF-16BE"

    return-object v0
.end method

.method match(Lcom/infraware/common/util/text/CharsetDetector;)I
    .registers 6
    .parameter "det"

    .prologue
    const/4 v1, 0x0

    .line 36
    iget-object v0, p1, Lcom/infraware/common/util/text/CharsetDetector;->fRawInput:[B

    .line 38
    .local v0, input:[B
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1a

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_1a

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1a

    .line 39
    const/16 v1, 0x64

    .line 43
    :cond_1a
    return v1
.end method
