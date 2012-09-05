.class Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022CN;
.super Lcom/infraware/common/util/text/CharsetRecog_2022;
.source "CharsetRecog_2022.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/util/text/CharsetRecog_2022;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_2022CN"
.end annotation


# instance fields
.field private escapeSequences:[[B


# direct methods
.method constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x4

    .line 138
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecog_2022;-><init>()V

    .line 139
    const/16 v0, 0xb

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 140
    new-array v2, v3, [B

    fill-array-data v2, :array_66

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 141
    new-array v2, v3, [B

    fill-array-data v2, :array_6c

    aput-object v2, v0, v1

    .line 142
    new-array v1, v3, [B

    fill-array-data v1, :array_72

    aput-object v1, v0, v4

    const/4 v1, 0x3

    .line 143
    new-array v2, v3, [B

    fill-array-data v2, :array_78

    aput-object v2, v0, v1

    .line 144
    new-array v1, v3, [B

    fill-array-data v1, :array_7e

    aput-object v1, v0, v3

    const/4 v1, 0x5

    .line 145
    new-array v2, v3, [B

    fill-array-data v2, :array_84

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 146
    new-array v2, v3, [B

    fill-array-data v2, :array_8a

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 147
    new-array v2, v3, [B

    fill-array-data v2, :array_90

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 148
    new-array v2, v3, [B

    fill-array-data v2, :array_96

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 149
    new-array v2, v4, [B

    fill-array-data v2, :array_9c

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 150
    new-array v2, v4, [B

    fill-array-data v2, :array_a2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022CN;->escapeSequences:[[B

    .line 138
    return-void

    .line 140
    nop

    :array_66
    .array-data 0x1
        0x1bt
        0x24t
        0x29t
        0x41t
    .end array-data

    .line 141
    :array_6c
    .array-data 0x1
        0x1bt
        0x24t
        0x29t
        0x47t
    .end array-data

    .line 142
    :array_72
    .array-data 0x1
        0x1bt
        0x24t
        0x2at
        0x48t
    .end array-data

    .line 143
    :array_78
    .array-data 0x1
        0x1bt
        0x24t
        0x29t
        0x45t
    .end array-data

    .line 144
    :array_7e
    .array-data 0x1
        0x1bt
        0x24t
        0x2bt
        0x49t
    .end array-data

    .line 145
    :array_84
    .array-data 0x1
        0x1bt
        0x24t
        0x2bt
        0x4at
    .end array-data

    .line 146
    :array_8a
    .array-data 0x1
        0x1bt
        0x24t
        0x2bt
        0x4bt
    .end array-data

    .line 147
    :array_90
    .array-data 0x1
        0x1bt
        0x24t
        0x2bt
        0x4ct
    .end array-data

    .line 148
    :array_96
    .array-data 0x1
        0x1bt
        0x24t
        0x2bt
        0x4dt
    .end array-data

    .line 149
    :array_9c
    .array-data 0x1
        0x1bt
        0x4et
    .end array-data

    .line 150
    nop

    :array_a2
    .array-data 0x1
        0x1bt
        0x4ft
    .end array-data
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    const-string v0, "ISO-2022-CN"

    return-object v0
.end method

.method match(Lcom/infraware/common/util/text/CharsetDetector;)I
    .registers 5
    .parameter "det"

    .prologue
    .line 159
    iget-object v0, p1, Lcom/infraware/common/util/text/CharsetDetector;->fInputBytes:[B

    iget v1, p1, Lcom/infraware/common/util/text/CharsetDetector;->fInputLen:I

    iget-object v2, p0, Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022CN;->escapeSequences:[[B

    invoke-virtual {p0, v0, v1, v2}, Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022CN;->match([BI[[B)I

    move-result v0

    return v0
.end method
