.class public final Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$Item$MediaContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    }
.end annotation


# static fields
.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x2

.field public static final URL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5198
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    .line 5199
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->initFields()V

    .line 5200
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4799
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4881
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->memoizedIsInitialized:B

    .line 4905
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->memoizedSerializedSize:I

    .line 4800
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4794
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;-><init>(Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4801
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4881
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->memoizedIsInitialized:B

    .line 4905
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->memoizedSerializedSize:I

    .line 4801
    return-void
.end method

.method static synthetic access$6302(Lcom/google/feedreader/extrpc/Client$Item$MediaContent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4794
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/google/feedreader/extrpc/Client$Item$MediaContent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4794
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->description_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/google/feedreader/extrpc/Client$Item$MediaContent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4794
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 1

    .prologue
    .line 4805
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    return-object v0
.end method

.method private getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4866
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->description_:Ljava/lang/Object;

    .line 4867
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 4868
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4870
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->description_:Ljava/lang/Object;

    move-object v2, v0

    .line 4873
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

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4834
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->url_:Ljava/lang/Object;

    .line 4835
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 4836
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4838
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->url_:Ljava/lang/Object;

    move-object v2, v0

    .line 4841
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
    .line 4878
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->url_:Ljava/lang/Object;

    .line 4879
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->description_:Ljava/lang/Object;

    .line 4880
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    .registers 1

    .prologue
    .line 4997
    #calls: Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->access$6100()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$Item$MediaContent;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 5000
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$MediaContent;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4966
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    .line 4967
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4968
    #calls: Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->access$6000(Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v1

    .line 4970
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4977
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    .line 4978
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4979
    #calls: Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->access$6000(Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v1

    .line 4981
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4933
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->access$6000(Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4939
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->access$6000(Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4987
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->access$6000(Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4993
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->access$6000(Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4955
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->access$6000(Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4961
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->access$6000(Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4944
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->access$6000(Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4950
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;->access$6000(Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;
    .registers 2

    .prologue
    .line 4809
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4794
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$MediaContent;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 6

    .prologue
    .line 4852
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->description_:Ljava/lang/Object;

    .line 4853
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 4854
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 4862
    :goto_9
    return-object v4

    .line 4856
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 4858
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 4859
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 4860
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->description_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 4862
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4907
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->memoizedSerializedSize:I

    .line 4908
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 4920
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 4910
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 4911
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 4912
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4915
    :cond_19
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 4916
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4919
    :cond_28
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->memoizedSerializedSize:I

    move v1, v0

    .line 4920
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getUrl()Ljava/lang/String;
    .registers 6

    .prologue
    .line 4820
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->url_:Ljava/lang/Object;

    .line 4821
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 4822
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 4830
    :goto_9
    return-object v4

    .line 4824
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 4826
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 4827
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 4828
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->url_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 4830
    goto :goto_9
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 4849
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->bitField0_:I

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
    const/4 v1, 0x1

    .line 4817
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->bitField0_:I

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

    .line 4883
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->memoizedIsInitialized:B

    .line 4884
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v2, :cond_b

    move v1, v2

    .line 4891
    :goto_a
    return v1

    :cond_b
    move v1, v3

    .line 4884
    goto :goto_a

    .line 4886
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->hasUrl()Z

    move-result v1

    if-nez v1, :cond_17

    .line 4887
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->memoizedIsInitialized:B

    move v1, v3

    .line 4888
    goto :goto_a

    .line 4890
    :cond_17
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->memoizedIsInitialized:B

    move v1, v2

    .line 4891
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    .registers 2

    .prologue
    .line 4998
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4794
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;
    .registers 2

    .prologue
    .line 5002
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->newBuilder(Lcom/google/feedreader/extrpc/Client$Item$MediaContent;)Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4794
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->toBuilder()Lcom/google/feedreader/extrpc/Client$Item$MediaContent$Builder;

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
    .line 4927
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4896
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->getSerializedSize()I

    .line 4897
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 4898
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4900
    :cond_12
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 4901
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$MediaContent;->getDescriptionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4903
    :cond_1f
    return-void
.end method
