.class Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022KR;
.super Lcom/infraware/common/util/text/CharsetRecog_2022;
.source "CharsetRecog_2022.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/util/text/CharsetRecog_2022;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_2022KR"
.end annotation


# instance fields
.field private escapeSequences:[[B


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecog_2022;-><init>()V

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 125
    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022KR;->escapeSequences:[[B

    .line 123
    return-void

    .line 125
    :array_12
    .array-data 0x1
        0x1bt
        0x24t
        0x29t
        0x43t
    .end array-data
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    const-string v0, "ISO-2022-KR"

    return-object v0
.end method

.method match(Lcom/infraware/common/util/text/CharsetDetector;)I
    .registers 5
    .parameter "det"

    .prologue
    .line 133
    iget-object v0, p1, Lcom/infraware/common/util/text/CharsetDetector;->fInputBytes:[B

    iget v1, p1, Lcom/infraware/common/util/text/CharsetDetector;->fInputLen:I

    iget-object v2, p0, Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022KR;->escapeSequences:[[B

    invoke-virtual {p0, v0, v1, v2}, Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022KR;->match([BI[[B)I

    move-result v0

    return v0
.end method
