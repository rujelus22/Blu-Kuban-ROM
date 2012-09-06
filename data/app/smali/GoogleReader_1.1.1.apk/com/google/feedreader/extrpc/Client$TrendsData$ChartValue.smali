.class public final Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$TrendsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChartValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    }
.end annotation


# static fields
.field public static final KEY_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25299
    new-instance v0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->defaultInstance:Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    .line 25300
    sget-object v0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->defaultInstance:Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->initFields()V

    .line 25301
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 24892
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 24974
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->memoizedIsInitialized:B

    .line 25002
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->memoizedSerializedSize:I

    .line 24893
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24887
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;-><init>(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 24894
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24974
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->memoizedIsInitialized:B

    .line 25002
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->memoizedSerializedSize:I

    .line 24894
    return-void
.end method

.method static synthetic access$31202(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24887
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->key_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$31302(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24887
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$31402(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24887
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 1

    .prologue
    .line 24898
    sget-object v0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->defaultInstance:Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    return-object v0
.end method

.method private getKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 24927
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->key_:Ljava/lang/Object;

    .line 24928
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 24929
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24931
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->key_:Ljava/lang/Object;

    move-object v2, v0

    .line 24934
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

.method private getValueBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 24959
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->value_:Ljava/lang/Object;

    .line 24960
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 24961
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24963
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->value_:Ljava/lang/Object;

    move-object v2, v0

    .line 24966
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
    .line 24971
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->key_:Ljava/lang/Object;

    .line 24972
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->value_:Ljava/lang/Object;

    .line 24973
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    .registers 1

    .prologue
    .line 25094
    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->create()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->access$31000()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 25097
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25063
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    .line 25064
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 25065
    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->access$30900(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v1

    .line 25067
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25074
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    .line 25075
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 25076
    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->access$30900(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v1

    .line 25078
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25030
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->access$30900(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25036
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->access$30900(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25084
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->access$30900(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25090
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->access$30900(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25052
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->access$30900(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25058
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->access$30900(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25041
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->access$30900(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25047
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;->access$30900(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;
    .registers 2

    .prologue
    .line 24902
    sget-object v0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->defaultInstance:Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24887
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 6

    .prologue
    .line 24913
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->key_:Ljava/lang/Object;

    .line 24914
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 24915
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 24923
    :goto_9
    return-object v4

    .line 24917
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 24919
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 24920
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 24921
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->key_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 24923
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 25004
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->memoizedSerializedSize:I

    .line 25005
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 25017
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 25007
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 25008
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 25009
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25012
    :cond_19
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 25013
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25016
    :cond_28
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->memoizedSerializedSize:I

    move v1, v0

    .line 25017
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getValue()Ljava/lang/String;
    .registers 6

    .prologue
    .line 24945
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->value_:Ljava/lang/Object;

    .line 24946
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 24947
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 24955
    :goto_9
    return-object v4

    .line 24949
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 24951
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 24952
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 24953
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->value_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 24955
    goto :goto_9
.end method

.method public hasKey()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 24910
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->bitField0_:I

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
    .line 24942
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->bitField0_:I

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

    .line 24976
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->memoizedIsInitialized:B

    .line 24977
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 24988
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 24977
    goto :goto_a

    .line 24979
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->hasKey()Z

    move-result v1

    if-nez v1, :cond_17

    .line 24980
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->memoizedIsInitialized:B

    move v1, v2

    .line 24981
    goto :goto_a

    .line 24983
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->hasValue()Z

    move-result v1

    if-nez v1, :cond_21

    .line 24984
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->memoizedIsInitialized:B

    move v1, v2

    .line 24985
    goto :goto_a

    .line 24987
    :cond_21
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->memoizedIsInitialized:B

    move v1, v3

    .line 24988
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    .registers 2

    .prologue
    .line 25095
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->newBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24887
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;
    .registers 2

    .prologue
    .line 25099
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->newBuilder(Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;)Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24887
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->toBuilder()Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue$Builder;

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
    .line 25024
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

    .line 24993
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->getSerializedSize()I

    .line 24994
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 24995
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24997
    :cond_12
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 24998
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$TrendsData$ChartValue;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 25000
    :cond_1f
    return-void
.end method
