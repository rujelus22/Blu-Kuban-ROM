.class public final Lcom/google/apps/tacotown/proto/data/Link;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Link.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/data/LinkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/tacotown/proto/data/Link$1;,
        Lcom/google/apps/tacotown/proto/data/Link$Builder;,
        Lcom/google/apps/tacotown/proto/data/Link$LinkType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/tacotown/proto/data/Link;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clickUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

.field private type_:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 581
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Link;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/tacotown/proto/data/Link;-><init>(Z)V

    sput-object v0, Lcom/google/apps/tacotown/proto/data/Link;->defaultInstance:Lcom/google/apps/tacotown/proto/data/Link;

    .line 582
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Link;->defaultInstance:Lcom/google/apps/tacotown/proto/data/Link;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/data/Link;->initFields()V

    .line 583
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/tacotown/proto/data/Link$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 155
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->memoizedIsInitialized:B

    .line 181
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->memoizedSerializedSize:I

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/tacotown/proto/data/Link$Builder;Lcom/google/apps/tacotown/proto/data/Link$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/google/apps/tacotown/proto/data/Link;-><init>(Lcom/google/apps/tacotown/proto/data/Link$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 155
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->memoizedIsInitialized:B

    .line 181
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->memoizedSerializedSize:I

    .line 12
    return-void
.end method

.method static synthetic access$302(Lcom/google/apps/tacotown/proto/data/Link;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Link;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/apps/tacotown/proto/data/Link;Lcom/google/apps/tacotown/proto/data/Link$LinkType;)Lcom/google/apps/tacotown/proto/data/Link$LinkType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Link;->type_:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/apps/tacotown/proto/data/Link;Lcom/google/apps/tacotown/proto/data/PicasaAlbum;)Lcom/google/apps/tacotown/proto/data/PicasaAlbum;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Link;->picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/apps/tacotown/proto/data/Link;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/data/Link;->clickUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/apps/tacotown/proto/data/Link;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput p1, p0, Lcom/google/apps/tacotown/proto/data/Link;->bitField0_:I

    return p1
.end method

.method private getClickUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 138
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/Link;->clickUrl_:Ljava/lang/Object;

    .line 139
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 140
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 142
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->clickUrl_:Ljava/lang/Object;

    .line 145
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

.method public static getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Link;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Link;->defaultInstance:Lcom/google/apps/tacotown/proto/data/Link;

    return-object v0
.end method

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 86
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/Link;->url_:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->url_:Ljava/lang/Object;

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

.method private initFields()V
    .registers 2

    .prologue
    .line 150
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->url_:Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->URL:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->type_:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    .line 152
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/PicasaAlbum;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->clickUrl_:Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/tacotown/proto/data/Link$Builder;
    .registers 1

    .prologue
    .line 281
    #calls: Lcom/google/apps/tacotown/proto/data/Link$Builder;->create()Lcom/google/apps/tacotown/proto/data/Link$Builder;
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->access$100()Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/tacotown/proto/data/Link;)Lcom/google/apps/tacotown/proto/data/Link$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 284
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Link;->newBuilder()Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/tacotown/proto/data/Link$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Link;)Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClickUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 124
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/Link;->clickUrl_:Ljava/lang/Object;

    .line 125
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 126
    check-cast v1, Ljava/lang/String;

    .line 134
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 128
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 130
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 132
    iput-object v2, p0, Lcom/google/apps/tacotown/proto/data/Link;->clickUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 134
    goto :goto_8
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Link;
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Link;->defaultInstance:Lcom/google/apps/tacotown/proto/data/Link;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getPicasaAlbum()Lcom/google/apps/tacotown/proto/data/PicasaAlbum;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 183
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->memoizedSerializedSize:I

    .line 184
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 204
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 186
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 187
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/Link;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 188
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/Link;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 191
    :cond_1a
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/Link;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 192
    iget-object v2, p0, Lcom/google/apps/tacotown/proto/data/Link;->type_:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    invoke-virtual {v2}, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 195
    :cond_2b
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/Link;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 196
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/apps/tacotown/proto/data/Link;->picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 199
    :cond_39
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/Link;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 200
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/Link;->getClickUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 203
    :cond_4a
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->memoizedSerializedSize:I

    move v1, v0

    .line 204
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getType()Lcom/google/apps/tacotown/proto/data/Link$LinkType;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->type_:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 72
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/Link;->url_:Ljava/lang/Object;

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
    iput-object v2, p0, Lcom/google/apps/tacotown/proto/data/Link;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 82
    goto :goto_8
.end method

.method public hasClickUrl()Z
    .registers 3

    .prologue
    .line 121
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->bitField0_:I

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

.method public hasPicasaAlbum()Z
    .registers 3

    .prologue
    .line 111
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    .line 101
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->bitField0_:I

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

.method public hasUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 69
    iget v1, p0, Lcom/google/apps/tacotown/proto/data/Link;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 157
    iget-byte v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->memoizedIsInitialized:B

    .line 158
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 161
    :goto_8
    return v1

    .line 158
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 160
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/tacotown/proto/data/Link;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/tacotown/proto/data/Link$Builder;
    .registers 2

    .prologue
    .line 282
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Link;->newBuilder()Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link;->newBuilderForType()Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/tacotown/proto/data/Link$Builder;
    .registers 2

    .prologue
    .line 286
    invoke-static {p0}, Lcom/google/apps/tacotown/proto/data/Link;->newBuilder(Lcom/google/apps/tacotown/proto/data/Link;)Lcom/google/apps/tacotown/proto/data/Link$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link;->toBuilder()Lcom/google/apps/tacotown/proto/data/Link$Builder;

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
    .line 211
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
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 166
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Link;->getSerializedSize()I

    .line 167
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 168
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/Link;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 170
    :cond_13
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 171
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->type_:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 173
    :cond_22
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 174
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/apps/tacotown/proto/data/Link;->picasaAlbum_:Lcom/google/apps/tacotown/proto/data/PicasaAlbum;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 176
    :cond_2e
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 177
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/data/Link;->getClickUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 179
    :cond_3d
    return-void
.end method
