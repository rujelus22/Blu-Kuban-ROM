.class public final Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EmbedCommon.java"

# interfaces
.implements Lcom/google/protos/embeds/EmbedCommon$ThumbnailOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/EmbedCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Thumbnail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private boxHeightPx_:I

.field private boxWidthPx_:I

.field private exactHeight_:Z

.field private exactWidth_:Z

.field private imageHeightPx_:I

.field private imageUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recenterVertically_:Z

.field private uncroppedImageUrl_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 760
    new-instance v0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->defaultInstance:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    .line 761
    sget-object v0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->defaultInstance:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    invoke-direct {v0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->initFields()V

    .line 762
    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 51
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 199
    iput-byte v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->memoizedIsInitialized:B

    .line 237
    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->memoizedSerializedSize:I

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;Lcom/google/protos/embeds/EmbedCommon$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;-><init>(Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 53
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 199
    iput-byte v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->memoizedIsInitialized:B

    .line 237
    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->memoizedSerializedSize:I

    .line 53
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->imageHeightPx_:I

    return p1
.end method

.method static synthetic access$1102(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->imageUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->boxWidthPx_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->boxHeightPx_:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->exactWidth_:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->exactHeight_:Z

    return p1
.end method

.method static synthetic access$802(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->recenterVertically_:Z

    return p1
.end method

.method static synthetic access$902(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->uncroppedImageUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->defaultInstance:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    return-object v0
.end method

.method private getImageUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 86
    iget-object v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->imageUrl_:Ljava/lang/Object;

    .line 87
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 88
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 90
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->imageUrl_:Ljava/lang/Object;

    .line 93
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private getUncroppedImageUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 168
    iget-object v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->uncroppedImageUrl_:Ljava/lang/Object;

    .line 169
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 170
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 172
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->uncroppedImageUrl_:Ljava/lang/Object;

    .line 175
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->imageUrl_:Ljava/lang/Object;

    .line 191
    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->boxWidthPx_:I

    .line 192
    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->boxHeightPx_:I

    .line 193
    iput-boolean v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->exactWidth_:Z

    .line 194
    iput-boolean v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->exactHeight_:Z

    .line 195
    iput-boolean v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->recenterVertically_:Z

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->uncroppedImageUrl_:Ljava/lang/Object;

    .line 197
    iput v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->imageHeightPx_:I

    .line 198
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 1

    .prologue
    .line 353
    #calls: Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->create()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->access$100()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 356
    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->newBuilder()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;->mergeFrom(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBoxHeightPx()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->boxHeightPx_:I

    return v0
.end method

.method public getBoxWidthPx()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->boxWidthPx_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getDefaultInstanceForType()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/EmbedCommon$Thumbnail;
    .registers 2

    .prologue
    .line 61
    sget-object v0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->defaultInstance:Lcom/google/protos/embeds/EmbedCommon$Thumbnail;

    return-object v0
.end method

.method public getExactHeight()Z
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->exactHeight_:Z

    return v0
.end method

.method public getExactWidth()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->exactWidth_:Z

    return v0
.end method

.method public getImageHeightPx()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->imageHeightPx_:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 72
    iget-object v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->imageUrl_:Ljava/lang/Object;

    .line 73
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 74
    check-cast v1, Ljava/lang/String;

    .line 82
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 76
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 78
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 80
    iput-object v2, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->imageUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 82
    goto :goto_8
.end method

.method public getRecenterVertically()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->recenterVertically_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 239
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->memoizedSerializedSize:I

    .line 240
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 276
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 242
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 243
    iget v2, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 244
    invoke-direct {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 247
    :cond_1c
    iget v2, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 248
    iget v2, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->boxWidthPx_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 251
    :cond_29
    iget v2, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 252
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->boxHeightPx_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 255
    :cond_37
    iget v2, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_44

    .line 256
    iget-boolean v2, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->exactWidth_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 259
    :cond_44
    iget v2, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_54

    .line 260
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->exactHeight_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 263
    :cond_54
    iget v2, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_64

    .line 264
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->recenterVertically_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 267
    :cond_64
    iget v2, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_76

    .line 268
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getUncroppedImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 271
    :cond_76
    iget v2, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_85

    .line 272
    iget v2, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->imageHeightPx_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 275
    :cond_85
    iput v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->memoizedSerializedSize:I

    move v1, v0

    .line 276
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_b
.end method

.method public getUncroppedImageUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 154
    iget-object v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->uncroppedImageUrl_:Ljava/lang/Object;

    .line 155
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 156
    check-cast v1, Ljava/lang/String;

    .line 164
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 158
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 160
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 162
    iput-object v2, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->uncroppedImageUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 164
    goto :goto_8
.end method

.method public hasBoxHeightPx()Z
    .registers 3

    .prologue
    .line 111
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasBoxWidthPx()Z
    .registers 3

    .prologue
    .line 101
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasExactHeight()Z
    .registers 3

    .prologue
    .line 131
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasExactWidth()Z
    .registers 3

    .prologue
    .line 121
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasImageHeightPx()Z
    .registers 3

    .prologue
    .line 183
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasImageUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 69
    iget v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasRecenterVertically()Z
    .registers 3

    .prologue
    .line 141
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasUncroppedImageUrl()Z
    .registers 3

    .prologue
    .line 151
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 201
    iget-byte v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->memoizedIsInitialized:B

    .line 202
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 205
    :goto_8
    return v1

    .line 202
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 204
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->newBuilderForType()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 2

    .prologue
    .line 354
    invoke-static {}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->newBuilder()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->toBuilder()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;
    .registers 2

    .prologue
    .line 358
    invoke-static {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->newBuilder(Lcom/google/protos/embeds/EmbedCommon$Thumbnail;)Lcom/google/protos/embeds/EmbedCommon$Thumbnail$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 210
    invoke-virtual {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getSerializedSize()I

    .line 211
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 212
    invoke-direct {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 214
    :cond_15
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 215
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->boxWidthPx_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 217
    :cond_20
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 218
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->boxHeightPx_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 220
    :cond_2c
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_37

    .line 221
    iget-boolean v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->exactWidth_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 223
    :cond_37
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_45

    .line 224
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->exactHeight_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 226
    :cond_45
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_53

    .line 227
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->recenterVertically_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 229
    :cond_53
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_63

    .line 230
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->getUncroppedImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 232
    :cond_63
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_70

    .line 233
    iget v0, p0, Lcom/google/protos/embeds/EmbedCommon$Thumbnail;->imageHeightPx_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 235
    :cond_70
    return-void
.end method
