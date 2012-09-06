.class public final Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "CanonicalImageProtos.java"

# interfaces
.implements Lcom/google/goggles/CanonicalImageProtos$CanonicalImageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/CanonicalImageProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CanonicalImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;",
        ">;",
        "Lcom/google/goggles/CanonicalImageProtos$CanonicalImageOrBuilder;"
    }
.end annotation


# static fields
.field public static final IMAGE_URL_FIELD_NUMBER:I = 0x1

.field public static final PREVIEW_URL_FIELD_NUMBER:I = 0x4

.field public static final REFERRER_URL_FIELD_NUMBER:I = 0x3

.field public static final THUMBNAIL_URL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private imageUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private previewUrl_:Ljava/lang/Object;

.field private referrerUrl_:Ljava/lang/Object;

.field private thumbnailUrl_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 620
    new-instance v0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->defaultInstance:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    .line 621
    sget-object v0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->defaultInstance:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    invoke-direct {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->initFields()V

    .line 622
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 184
    iput-byte v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->memoizedIsInitialized:B

    .line 218
    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->memoizedSerializedSize:I

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;Lcom/google/goggles/CanonicalImageProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;-><init>(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 184
    iput-byte v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->memoizedIsInitialized:B

    .line 218
    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->memoizedSerializedSize:I

    .line 38
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->imageUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->thumbnailUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->previewUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->referrerUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->defaultInstance:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    return-object v0
.end method

.method private getImageUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->imageUrl_:Ljava/lang/Object;

    .line 72
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 73
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->imageUrl_:Ljava/lang/Object;

    .line 78
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getPreviewUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->previewUrl_:Ljava/lang/Object;

    .line 136
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 137
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->previewUrl_:Ljava/lang/Object;

    .line 142
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getReferrerUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->referrerUrl_:Ljava/lang/Object;

    .line 168
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 169
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 171
    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->referrerUrl_:Ljava/lang/Object;

    .line 174
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getThumbnailUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->thumbnailUrl_:Ljava/lang/Object;

    .line 104
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 105
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->thumbnailUrl_:Ljava/lang/Object;

    .line 110
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->imageUrl_:Ljava/lang/Object;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->thumbnailUrl_:Ljava/lang/Object;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->previewUrl_:Ljava/lang/Object;

    .line 182
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->referrerUrl_:Ljava/lang/Object;

    .line 183
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 1

    .prologue
    .line 319
    #calls: Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->create()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->access$100()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 2
    .parameter

    .prologue
    .line 322
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newBuilder()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeFrom(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newBuilder()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0, p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 290
    #calls: Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildParsed()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    invoke-static {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->access$000(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    .line 292
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newBuilder()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    .line 300
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 301
    #calls: Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildParsed()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    invoke-static {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->access$000(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    .line 303
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newBuilder()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    #calls: Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildParsed()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    invoke-static {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->access$000(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newBuilder()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    #calls: Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildParsed()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    invoke-static {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->access$000(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newBuilder()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    #calls: Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildParsed()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    invoke-static {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->access$000(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newBuilder()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildParsed()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    invoke-static {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->access$000(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newBuilder()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    #calls: Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildParsed()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    invoke-static {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->access$000(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newBuilder()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    #calls: Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildParsed()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    invoke-static {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->access$000(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newBuilder()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    #calls: Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildParsed()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    invoke-static {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->access$000(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newBuilder()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    #calls: Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->buildParsed()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    invoke-static {v0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;->access$000(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;
    .registers 2

    .prologue
    .line 46
    sget-object v0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->defaultInstance:Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getDefaultInstanceForType()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->imageUrl_:Ljava/lang/Object;

    .line 58
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 59
    check-cast v0, Ljava/lang/String;

    .line 67
    :goto_8
    return-object v0

    .line 61
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 63
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 65
    iput-object v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->imageUrl_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 67
    goto :goto_8
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->previewUrl_:Ljava/lang/Object;

    .line 122
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 123
    check-cast v0, Ljava/lang/String;

    .line 131
    :goto_8
    return-object v0

    .line 125
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 127
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 129
    iput-object v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->previewUrl_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 131
    goto :goto_8
.end method

.method public getReferrerUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->referrerUrl_:Ljava/lang/Object;

    .line 154
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 155
    check-cast v0, Ljava/lang/String;

    .line 163
    :goto_8
    return-object v0

    .line 157
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 159
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 161
    iput-object v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->referrerUrl_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 163
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 220
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->memoizedSerializedSize:I

    .line 221
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 242
    :goto_8
    return v0

    .line 223
    :cond_9
    const/4 v0, 0x0

    .line 224
    iget v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_19

    .line 225
    invoke-direct {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 228
    :cond_19
    iget v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_28

    .line 229
    invoke-direct {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getThumbnailUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    :cond_28
    iget v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3a

    .line 233
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getReferrerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_3a
    iget v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_49

    .line 237
    invoke-direct {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getPreviewUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_49
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    iput v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->thumbnailUrl_:Ljava/lang/Object;

    .line 90
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 91
    check-cast v0, Ljava/lang/String;

    .line 99
    :goto_8
    return-object v0

    .line 93
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 95
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 97
    iput-object v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->thumbnailUrl_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 99
    goto :goto_8
.end method

.method public hasImageUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 54
    iget v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPreviewUrl()Z
    .registers 3

    .prologue
    .line 118
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->bitField0_:I

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

.method public hasReferrerUrl()Z
    .registers 3

    .prologue
    .line 150
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->bitField0_:I

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

.method public hasThumbnailUrl()Z
    .registers 3

    .prologue
    .line 86
    iget v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 186
    iget-byte v2, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->memoizedIsInitialized:B

    .line 187
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 194
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 187
    goto :goto_9

    .line 189
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->extensionsAreInitialized()Z

    move-result v2

    if-nez v2, :cond_16

    .line 190
    iput-byte v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->memoizedIsInitialized:B

    move v0, v1

    .line 191
    goto :goto_9

    .line 193
    :cond_16
    iput-byte v0, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 2

    .prologue
    .line 320
    invoke-static {}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newBuilder()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newBuilderForType()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;
    .registers 2

    .prologue
    .line 324
    invoke-static {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newBuilder(Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;)Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->toBuilder()Lcom/google/goggles/CanonicalImageProtos$CanonicalImage$Builder;

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
    .line 249
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 199
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getSerializedSize()I

    .line 201
    invoke-virtual {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 203
    iget v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 204
    invoke-direct {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 206
    :cond_17
    iget v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_24

    .line 207
    invoke-direct {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getThumbnailUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 209
    :cond_24
    iget v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_34

    .line 210
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getReferrerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 212
    :cond_34
    iget v1, p0, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_41

    .line 213
    invoke-direct {p0}, Lcom/google/goggles/CanonicalImageProtos$CanonicalImage;->getPreviewUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 215
    :cond_41
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 216
    return-void
.end method
