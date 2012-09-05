.class public final Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RenderedAdToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/contentads/frontend/token/proto/RenderedAdToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VisualElement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private contentMimeType_:Ljava/lang/Object;

.field private contentUrl_:Ljava/lang/Object;

.field private height_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private thumbnailHeight_:I

.field private thumbnailUrl_:Ljava/lang/Object;

.field private thumbnailWidth_:I

.field private width_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 760
    new-instance v0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;-><init>(Z)V

    sput-object v0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->defaultInstance:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    .line 761
    sget-object v0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->defaultInstance:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    invoke-direct {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->initFields()V

    .line 762
    return-void
.end method

.method private constructor <init>(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 59
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 218
    iput-byte v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->memoizedIsInitialized:B

    .line 257
    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->memoizedSerializedSize:I

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;Lcom/google/contentads/frontend/token/proto/RenderedAdToken$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;-><init>(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 61
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 218
    iput-byte v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->memoizedIsInitialized:B

    .line 257
    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->memoizedSerializedSize:I

    .line 61
    return-void
.end method

.method static synthetic access$1002(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->contentUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->contentMimeType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->width_:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->height_:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailWidth_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailHeight_:I

    return p1
.end method

.method private getContentMimeTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 126
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->contentMimeType_:Ljava/lang/Object;

    .line 127
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 128
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 130
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->contentMimeType_:Ljava/lang/Object;

    .line 133
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

.method private getContentUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 94
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->contentUrl_:Ljava/lang/Object;

    .line 95
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 96
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 98
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->contentUrl_:Ljava/lang/Object;

    .line 101
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

.method public static getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->defaultInstance:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;

    return-object v0
.end method

.method private getThumbnailUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 178
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailUrl_:Ljava/lang/Object;

    .line 179
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 180
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 182
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailUrl_:Ljava/lang/Object;

    .line 185
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

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->contentUrl_:Ljava/lang/Object;

    .line 211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->contentMimeType_:Ljava/lang/Object;

    .line 212
    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->width_:I

    .line 213
    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->height_:I

    .line 214
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailUrl_:Ljava/lang/Object;

    .line 215
    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailWidth_:I

    .line 216
    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailHeight_:I

    .line 217
    return-void
.end method

.method public static newBuilder()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    .registers 1

    .prologue
    .line 369
    #calls: Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->create()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->access$100()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 372
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->newBuilder()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;->mergeFrom(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentMimeType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 112
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->contentMimeType_:Ljava/lang/Object;

    .line 113
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 114
    check-cast v1, Ljava/lang/String;

    .line 122
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 116
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 118
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 120
    iput-object v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->contentMimeType_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 122
    goto :goto_8
.end method

.method public getContentUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->contentUrl_:Ljava/lang/Object;

    .line 81
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 82
    check-cast v1, Ljava/lang/String;

    .line 90
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 84
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 86
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 88
    iput-object v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->contentUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 90
    goto :goto_8
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->height_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    .line 259
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->memoizedSerializedSize:I

    .line 260
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    move v1, v0

    .line 292
    .end local v0           #size:I
    .local v1, size:I
    :goto_a
    return v1

    .line 262
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_b
    const/4 v0, 0x0

    .line 263
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 264
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getContentUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 267
    :cond_1d
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2e

    .line 268
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getContentMimeTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 271
    :cond_2e
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3d

    .line 272
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->width_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 275
    :cond_3d
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v4, :cond_4a

    .line 276
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->height_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 279
    :cond_4a
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v5, :cond_5b

    .line 280
    const/16 v2, 0xf

    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getThumbnailUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 283
    :cond_5b
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6a

    .line 284
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailWidth_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 287
    :cond_6a
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7b

    .line 288
    const/16 v2, 0x11

    iget v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailHeight_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 291
    :cond_7b
    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->memoizedSerializedSize:I

    move v1, v0

    .line 292
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_a
.end method

.method public getThumbnailHeight()I
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailHeight_:I

    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 164
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailUrl_:Ljava/lang/Object;

    .line 165
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 166
    check-cast v1, Ljava/lang/String;

    .line 174
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 168
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 170
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 172
    iput-object v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 174
    goto :goto_8
.end method

.method public getThumbnailWidth()I
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailWidth_:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->width_:I

    return v0
.end method

.method public hasContentMimeType()Z
    .registers 3

    .prologue
    .line 109
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

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

.method public hasContentUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 77
    iget v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasHeight()Z
    .registers 3

    .prologue
    .line 151
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

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

.method public hasThumbnailHeight()Z
    .registers 3

    .prologue
    .line 203
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

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

.method public hasThumbnailUrl()Z
    .registers 3

    .prologue
    .line 161
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

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

.method public hasThumbnailWidth()Z
    .registers 3

    .prologue
    .line 193
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

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

.method public hasWidth()Z
    .registers 3

    .prologue
    .line 141
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

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

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0x8

    .line 233
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getSerializedSize()I

    .line 234
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 235
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getContentUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 237
    :cond_16
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 238
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getContentMimeTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 240
    :cond_25
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_32

    .line 241
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->width_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 243
    :cond_32
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v2, :cond_3d

    .line 244
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->height_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 246
    :cond_3d
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v3, :cond_4c

    .line 247
    const/16 v0, 0xf

    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->getThumbnailUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 249
    :cond_4c
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_59

    .line 250
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailWidth_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 252
    :cond_59
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_68

    .line 253
    const/16 v0, 0x11

    iget v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$VisualElement;->thumbnailHeight_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 255
    :cond_68
    return-void
.end method
