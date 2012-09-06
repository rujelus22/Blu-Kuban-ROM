.class public final Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChartOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$StreamDetailsContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrendsChart"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    }
.end annotation


# static fields
.field public static final KEY_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private value_:Lcom/google/feedreader/extrpc/Client$TrendsData;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26457
    new-instance v0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    .line 26458
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->initFields()V

    .line 26459
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 26053
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 26113
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->memoizedIsInitialized:B

    .line 26145
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->memoizedSerializedSize:I

    .line 26054
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26048
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;-><init>(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 26055
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 26113
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->memoizedIsInitialized:B

    .line 26145
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->memoizedSerializedSize:I

    .line 26055
    return-void
.end method

.method static synthetic access$32702(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26048
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->key_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$32802(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;Lcom/google/feedreader/extrpc/Client$TrendsData;)Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26048
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;

    return-object p1
.end method

.method static synthetic access$32902(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26048
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 1

    .prologue
    .line 26059
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    return-object v0
.end method

.method private getKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 26088
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->key_:Ljava/lang/Object;

    .line 26089
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 26090
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26092
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->key_:Ljava/lang/Object;

    move-object v2, v0

    .line 26095
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
    .line 26110
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->key_:Ljava/lang/Object;

    .line 26111
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;

    .line 26112
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    .registers 1

    .prologue
    .line 26237
    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->create()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->access$32500()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 26240
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26206
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    .line 26207
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 26208
    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->access$32400(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v1

    .line 26210
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26217
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    .line 26218
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 26219
    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->access$32400(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v1

    .line 26221
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26173
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->access$32400(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26179
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->access$32400(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26227
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->access$32400(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26233
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->access$32400(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26195
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->access$32400(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26201
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->access$32400(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26184
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->access$32400(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26190
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;->access$32400(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
    .registers 2

    .prologue
    .line 26063
    sget-object v0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->defaultInstance:Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26048
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 6

    .prologue
    .line 26074
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->key_:Ljava/lang/Object;

    .line 26075
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 26076
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 26084
    :goto_9
    return-object v4

    .line 26078
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 26080
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 26081
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 26082
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->key_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 26084
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 26147
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->memoizedSerializedSize:I

    .line 26148
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 26160
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 26150
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 26151
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 26152
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26155
    :cond_19
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 26156
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26159
    :cond_26
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->memoizedSerializedSize:I

    move v1, v0

    .line 26160
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getValue()Lcom/google/feedreader/extrpc/Client$TrendsData;
    .registers 2

    .prologue
    .line 26106
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;

    return-object v0
.end method

.method public hasKey()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 26071
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasValue()Z
    .registers 3

    .prologue
    .line 26103
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->bitField0_:I

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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26115
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->memoizedIsInitialized:B

    .line 26116
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 26131
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 26116
    goto :goto_a

    .line 26118
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->hasKey()Z

    move-result v1

    if-nez v1, :cond_17

    .line 26119
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->memoizedIsInitialized:B

    move v1, v2

    .line 26120
    goto :goto_a

    .line 26122
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->hasValue()Z

    move-result v1

    if-nez v1, :cond_21

    .line 26123
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->memoizedIsInitialized:B

    move v1, v2

    .line 26124
    goto :goto_a

    .line 26126
    :cond_21
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->getValue()Lcom/google/feedreader/extrpc/Client$TrendsData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/extrpc/Client$TrendsData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 26127
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->memoizedIsInitialized:B

    move v1, v2

    .line 26128
    goto :goto_a

    .line 26130
    :cond_2f
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->memoizedIsInitialized:B

    move v1, v3

    .line 26131
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    .registers 2

    .prologue
    .line 26238
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->newBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26048
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;
    .registers 2

    .prologue
    .line 26242
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->newBuilder(Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26048
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->toBuilder()Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart$Builder;

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
    .line 26167
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

    .line 26136
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->getSerializedSize()I

    .line 26137
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 26138
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 26140
    :cond_12
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 26141
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;->value_:Lcom/google/feedreader/extrpc/Client$TrendsData;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 26143
    :cond_1d
    return-void
.end method
