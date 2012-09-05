.class abstract Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;
.super Lcom/infraware/common/util/text/CharsetRecog_sbcs;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/util/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CharsetRecog_IBM420_ar"
.end annotation


# static fields
.field protected static byteMap:[B

.field protected static unshapeMap:[B


# instance fields
.field protected prev_fInputBytes:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x100

    .line 1136
    new-array v0, v1, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->byteMap:[B

    .line 1156
    new-array v0, v1, [B

    fill-array-data v0, :array_96

    sput-object v0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->unshapeMap:[B

    .line 1129
    return-void

    .line 1136
    nop

    :array_12
    .array-data 0x1
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x51t
        0x52t
        0x40t
        0x40t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x80t
        0x81t
        0x82t
        0x83t
        0x84t
        0x85t
        0x86t
        0x87t
        0x88t
        0x89t
        0x8at
        0x8bt
        0x8ct
        0x8dt
        0x8et
        0x8ft
        0x90t
        0x91t
        0x92t
        0x93t
        0x94t
        0x95t
        0x96t
        0x97t
        0x98t
        0x99t
        0x9at
        0x9bt
        0x9ct
        0x9dt
        0x9et
        0x9ft
        0xa0t
        0x40t
        0xa2t
        0xa3t
        0xa4t
        0xa5t
        0xa6t
        0xa7t
        0xa8t
        0xa9t
        0xaat
        0xabt
        0xact
        0xadt
        0xaet
        0xaft
        0xb0t
        0xb1t
        0xb2t
        0xb3t
        0xb4t
        0xb5t
        0x40t
        0x40t
        0xb8t
        0xb9t
        0xbat
        0xbbt
        0xbct
        0xbdt
        0xbet
        0xbft
        0x40t
        0x81t
        0x82t
        0x83t
        0x84t
        0x85t
        0x86t
        0x87t
        0x88t
        0x89t
        0x40t
        0xcbt
        0x40t
        0xcdt
        0x40t
        0xcft
        0x40t
        0x91t
        0x92t
        0x93t
        0x94t
        0x95t
        0x96t
        0x97t
        0x98t
        0x99t
        0xdat
        0xdbt
        0xdct
        0xddt
        0xdet
        0xdft
        0x40t
        0x40t
        0xa2t
        0xa3t
        0xa4t
        0xa5t
        0xa6t
        0xa7t
        0xa8t
        0xa9t
        0xeat
        0xebt
        0x40t
        0xedt
        0xeet
        0xeft
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0xfbt
        0xfct
        0xfdt
        0xfet
        0x40t
    .end array-data

    .line 1156
    :array_96
    .array-data 0x1
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x42t
        0x42t
        0x44t
        0x45t
        0x46t
        0x47t
        0x47t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x49t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x56t
        0x58t
        0x58t
        0x5at
        0x5bt
        0x5ct
        0x5dt
        0x5et
        0x5ft
        0x60t
        0x61t
        0x62t
        0x63t
        0x63t
        0x65t
        0x65t
        0x67t
        0x67t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x69t
        0x71t
        0x71t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x77t
        0x79t
        0x7at
        0x7bt
        0x7ct
        0x7dt
        0x7et
        0x7ft
        0x80t
        0x81t
        0x82t
        0x83t
        0x84t
        0x85t
        0x86t
        0x87t
        0x88t
        0x89t
        0x80t
        0x8bt
        0x8bt
        0x8dt
        0x8dt
        0x8ft
        0x90t
        0x91t
        0x92t
        0x93t
        0x94t
        0x95t
        0x96t
        0x97t
        0x98t
        0x99t
        0x9at
        0x9at
        0x9at
        0x9at
        0x9et
        0x9et
        0x9et
        0xa1t
        0xa2t
        0xa3t
        0xa4t
        0xa5t
        0xa6t
        0xa7t
        0xa8t
        0xa9t
        0x9et
        0xabt
        0xabt
        0xadt
        0xadt
        0xaft
        0xaft
        0xb1t
        0xb2t
        0xb3t
        0xb4t
        0xb5t
        0xb6t
        0xb7t
        0xb8t
        0xb9t
        0xb1t
        0xbbt
        0xbbt
        0xbdt
        0xbdt
        0xbft
        0xc0t
        0xc1t
        0xc2t
        0xc3t
        0xc4t
        0xc5t
        0xc6t
        0xc7t
        0xc8t
        0xc9t
        0xcat
        0xbft
        0xcct
        0xbft
        0xcet
        0xcft
        0xd0t
        0xd1t
        0xd2t
        0xd3t
        0xd4t
        0xd5t
        0xd6t
        0xd7t
        0xd8t
        0xd9t
        0xdat
        0xdat
        0xdct
        0xdct
        0xdct
        0xdft
        0xe0t
        0xe1t
        0xe2t
        0xe3t
        0xe4t
        0xe5t
        0xe6t
        0xe7t
        0xe8t
        0xe9t
        0xeat
        0xebt
        0xect
        0xedt
        0xeet
        0xeft
        0xf0t
        0xf1t
        0xf2t
        0xf3t
        0xf4t
        0xf5t
        0xf6t
        0xf7t
        0xf8t
        0xf9t
        0xfat
        0xfbt
        0xfct
        0xfdt
        0xfet
        0xfft
    .end array-data
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 1129
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecog_sbcs;-><init>()V

    .line 1134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->prev_fInputBytes:[B

    .line 1129
    return-void
.end method

.method private isLamAlef(B)Z
    .registers 5
    .parameter "b"

    .prologue
    .line 1221
    const/4 v2, 0x6

    new-array v1, v2, [B

    fill-array-data v1, :array_16

    .line 1222
    .local v1, shapedLamAlef:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v2, v1

    if-lt v0, v2, :cond_c

    .line 1225
    const/4 v2, 0x0

    :goto_b
    return v2

    .line 1223
    :cond_c
    aget-byte v2, v1, v0

    if-ne p1, v2, :cond_12

    .line 1224
    const/4 v2, 0x1

    goto :goto_b

    .line 1222
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1221
    nop

    :array_16
    .array-data 0x1
        0xb2t
        0xb3t
        0xb4t
        0xb5t
        0xb7t
        0xb8t
    .end array-data
.end method

.method private unshape([B)[B
    .registers 6
    .parameter "inputBytes"

    .prologue
    .line 1195
    invoke-direct {p0, p1}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->unshapeLamAlef([B)[B

    move-result-object v1

    .line 1197
    .local v1, resultByteArr:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, p1

    if-lt v0, v2, :cond_9

    .line 1200
    return-object v1

    .line 1198
    :cond_9
    sget-object v2, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->unshapeMap:[B

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 1197
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private unshapeLamAlef([B)[B
    .registers 9
    .parameter "inputBytes"

    .prologue
    .line 1204
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1206
    .local v1, resultBigBuffer:Ljava/nio/ByteBuffer;
    const/4 v4, 0x2

    new-array v3, v4, [B

    fill-array-data v3, :array_3e

    .line 1209
    .local v3, unshapedLamAlef:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v4, p1

    if-lt v0, v4, :cond_2a

    .line 1215
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1216
    .local v2, resultBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1217
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4

    .line 1210
    .end local v2           #resultBuffer:Ljava/nio/ByteBuffer;
    :cond_2a
    aget-byte v4, p1, v0

    invoke-direct {p0, v4}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->isLamAlef(B)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1211
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1209
    :goto_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1213
    :cond_38
    aget-byte v4, p1, v0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_35

    .line 1206
    :array_3e
    .array-data 0x1
        0xb1t
        0x56t
    .end array-data
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1178
    const-string v0, "ar"

    return-object v0
.end method

.method protected matchFinish(Lcom/infraware/common/util/text/CharsetDetector;)V
    .registers 3
    .parameter "det"

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->prev_fInputBytes:[B

    if-eqz v0, :cond_9

    .line 1230
    iget-object v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->prev_fInputBytes:[B

    invoke-virtual {p1, v0}, Lcom/infraware/common/util/text/CharsetDetector;->setText([B)Lcom/infraware/common/util/text/CharsetDetector;

    .line 1231
    :cond_9
    return-void
.end method

.method protected matchInit(Lcom/infraware/common/util/text/CharsetDetector;)V
    .registers 4
    .parameter "det"

    .prologue
    .line 1182
    iget-object v1, p1, Lcom/infraware/common/util/text/CharsetDetector;->fInputBytes:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->prev_fInputBytes:[B

    .line 1183
    iget-object v1, p1, Lcom/infraware/common/util/text/CharsetDetector;->fInputBytes:[B

    invoke-direct {p0, v1}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;->unshape([B)[B

    move-result-object v0

    .line 1184
    .local v0, bb:[B
    invoke-virtual {p1, v0}, Lcom/infraware/common/util/text/CharsetDetector;->setText([B)Lcom/infraware/common/util/text/CharsetDetector;

    .line 1185
    return-void
.end method
