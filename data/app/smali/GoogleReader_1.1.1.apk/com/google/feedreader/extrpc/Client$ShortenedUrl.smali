.class public final Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$ShortenedUrlOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShortenedUrl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
    }
.end annotation


# static fields
.field public static final URL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27625
    new-instance v0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->defaultInstance:Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    .line 27626
    sget-object v0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->defaultInstance:Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->initFields()V

    .line 27627
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 27316
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 27365
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->memoizedIsInitialized:B

    .line 27386
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->memoizedSerializedSize:I

    .line 27317
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27311
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;-><init>(Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 27318
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 27365
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->memoizedIsInitialized:B

    .line 27386
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->memoizedSerializedSize:I

    .line 27318
    return-void
.end method

.method static synthetic access$34502(Lcom/google/feedreader/extrpc/Client$ShortenedUrl;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27311
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34602(Lcom/google/feedreader/extrpc/Client$ShortenedUrl;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27311
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 1

    .prologue
    .line 27322
    sget-object v0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->defaultInstance:Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    return-object v0
.end method

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27351
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->url_:Ljava/lang/Object;

    .line 27352
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 27353
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27355
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->url_:Ljava/lang/Object;

    move-object v2, v0

    .line 27358
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 27363
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->url_:Ljava/lang/Object;

    .line 27364
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
    .registers 1

    .prologue
    .line 27474
    #calls: Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->create()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->access$34300()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$ShortenedUrl;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 27477
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->newBuilder()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$ShortenedUrl;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27443
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->newBuilder()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    .line 27444
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 27445
    #calls: Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->access$34200(Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v1

    .line 27447
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27454
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->newBuilder()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    .line 27455
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 27456
    #calls: Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->access$34200(Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v1

    .line 27458
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27410
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->newBuilder()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->access$34200(Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27416
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->newBuilder()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->access$34200(Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27464
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->newBuilder()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->access$34200(Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27470
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->newBuilder()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->access$34200(Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27432
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->newBuilder()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->access$34200(Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27438
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->newBuilder()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->access$34200(Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27421
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->newBuilder()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->access$34200(Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27427
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->newBuilder()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;->access$34200(Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;
    .registers 2

    .prologue
    .line 27326
    sget-object v0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->defaultInstance:Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27311
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$ShortenedUrl;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 27388
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->memoizedSerializedSize:I

    .line 27389
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 27397
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 27391
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 27392
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 27393
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27396
    :cond_18
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->memoizedSerializedSize:I

    move v1, v0

    .line 27397
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getUrl()Ljava/lang/String;
    .registers 6

    .prologue
    .line 27337
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->url_:Ljava/lang/Object;

    .line 27338
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 27339
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 27347
    :goto_9
    return-object v4

    .line 27341
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 27343
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 27344
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 27345
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->url_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 27347
    goto :goto_9
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 27334
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 27367
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->memoizedIsInitialized:B

    .line 27368
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v2, :cond_b

    move v1, v2

    .line 27375
    :goto_a
    return v1

    :cond_b
    move v1, v3

    .line 27368
    goto :goto_a

    .line 27370
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->hasUrl()Z

    move-result v1

    if-nez v1, :cond_17

    .line 27371
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->memoizedIsInitialized:B

    move v1, v3

    .line 27372
    goto :goto_a

    .line 27374
    :cond_17
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->memoizedIsInitialized:B

    move v1, v2

    .line 27375
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
    .registers 2

    .prologue
    .line 27475
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->newBuilder()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27311
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;
    .registers 2

    .prologue
    .line 27479
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->newBuilder(Lcom/google/feedreader/extrpc/Client$ShortenedUrl;)Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27311
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->toBuilder()Lcom/google/feedreader/extrpc/Client$ShortenedUrl$Builder;

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
    .line 27404
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 27380
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->getSerializedSize()I

    .line 27381
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 27382
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$ShortenedUrl;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27384
    :cond_11
    return-void
.end method
