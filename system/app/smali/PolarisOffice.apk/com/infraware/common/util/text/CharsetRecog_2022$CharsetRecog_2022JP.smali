.class Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022JP;
.super Lcom/infraware/common/util/text/CharsetRecog_2022;
.source "CharsetRecog_2022.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/util/text/CharsetRecog_2022;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_2022JP"
.end annotation


# instance fields
.field private escapeSequences:[[B


# direct methods
.method constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 98
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecog_2022;-><init>()V

    .line 99
    const/16 v0, 0xc

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 100
    new-array v2, v4, [B

    fill-array-data v2, :array_6e

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 101
    new-array v2, v4, [B

    fill-array-data v2, :array_74

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 102
    new-array v2, v3, [B

    fill-array-data v2, :array_7a

    aput-object v2, v0, v1

    .line 103
    new-array v1, v3, [B

    fill-array-data v1, :array_80

    aput-object v1, v0, v3

    .line 104
    new-array v1, v3, [B

    fill-array-data v1, :array_86

    aput-object v1, v0, v4

    const/4 v1, 0x5

    .line 105
    new-array v2, v3, [B

    fill-array-data v2, :array_8c

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 106
    new-array v2, v3, [B

    fill-array-data v2, :array_92

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 107
    new-array v2, v3, [B

    fill-array-data v2, :array_98

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 108
    new-array v2, v3, [B

    fill-array-data v2, :array_9e

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 109
    new-array v2, v3, [B

    fill-array-data v2, :array_a4

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 110
    new-array v2, v3, [B

    fill-array-data v2, :array_aa

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 111
    new-array v2, v3, [B

    fill-array-data v2, :array_b0

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022JP;->escapeSequences:[[B

    .line 98
    return-void

    .line 100
    :array_6e
    .array-data 0x1
        0x1bt
        0x24t
        0x28t
        0x43t
    .end array-data

    .line 101
    :array_74
    .array-data 0x1
        0x1bt
        0x24t
        0x28t
        0x44t
    .end array-data

    .line 102
    :array_7a
    .array-data 0x1
        0x1bt
        0x24t
        0x40t
    .end array-data

    .line 103
    :array_80
    .array-data 0x1
        0x1bt
        0x24t
        0x41t
    .end array-data

    .line 104
    :array_86
    .array-data 0x1
        0x1bt
        0x24t
        0x42t
    .end array-data

    .line 105
    :array_8c
    .array-data 0x1
        0x1bt
        0x26t
        0x40t
    .end array-data

    .line 106
    :array_92
    .array-data 0x1
        0x1bt
        0x28t
        0x42t
    .end array-data

    .line 107
    :array_98
    .array-data 0x1
        0x1bt
        0x28t
        0x48t
    .end array-data

    .line 108
    :array_9e
    .array-data 0x1
        0x1bt
        0x28t
        0x49t
    .end array-data

    .line 109
    :array_a4
    .array-data 0x1
        0x1bt
        0x28t
        0x4at
    .end array-data

    .line 110
    :array_aa
    .array-data 0x1
        0x1bt
        0x2et
        0x41t
    .end array-data

    .line 111
    :array_b0
    .array-data 0x1
        0x1bt
        0x2et
        0x46t
    .end array-data
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    const-string v0, "ISO-2022-JP"

    return-object v0
.end method

.method match(Lcom/infraware/common/util/text/CharsetDetector;)I
    .registers 5
    .parameter "det"

    .prologue
    .line 119
    iget-object v0, p1, Lcom/infraware/common/util/text/CharsetDetector;->fInputBytes:[B

    iget v1, p1, Lcom/infraware/common/util/text/CharsetDetector;->fInputLen:I

    iget-object v2, p0, Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022JP;->escapeSequences:[[B

    invoke-virtual {p0, v0, v1, v2}, Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022JP;->match([BI[[B)I

    move-result v0

    return v0
.end method
