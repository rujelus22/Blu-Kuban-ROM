.class public final Lcom/google/feedreader/extrpc/Client$PrefPair;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$PrefPairOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrefPair"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$PrefPair;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17107
    new-instance v0, Lcom/google/feedreader/extrpc/Client$PrefPair;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$PrefPair;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$PrefPair;->defaultInstance:Lcom/google/feedreader/extrpc/Client$PrefPair;

    .line 17108
    sget-object v0, Lcom/google/feedreader/extrpc/Client$PrefPair;->defaultInstance:Lcom/google/feedreader/extrpc/Client$PrefPair;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->initFields()V

    .line 17109
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 16700
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 16782
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->memoizedIsInitialized:B

    .line 16810
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->memoizedSerializedSize:I

    .line 16701
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16695
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$PrefPair;-><init>(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 16702
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16782
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->memoizedIsInitialized:B

    .line 16810
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->memoizedSerializedSize:I

    .line 16702
    return-void
.end method

.method static synthetic access$21002(Lcom/google/feedreader/extrpc/Client$PrefPair;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16695
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21102(Lcom/google/feedreader/extrpc/Client$PrefPair;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16695
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21202(Lcom/google/feedreader/extrpc/Client$PrefPair;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16695
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 1

    .prologue
    .line 16706
    sget-object v0, Lcom/google/feedreader/extrpc/Client$PrefPair;->defaultInstance:Lcom/google/feedreader/extrpc/Client$PrefPair;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 16735
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->id_:Ljava/lang/Object;

    .line 16736
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 16737
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16739
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->id_:Ljava/lang/Object;

    move-object v2, v0

    .line 16742
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
    .line 16767
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->value_:Ljava/lang/Object;

    .line 16768
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 16769
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16771
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->value_:Ljava/lang/Object;

    move-object v2, v0

    .line 16774
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
    .line 16779
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->id_:Ljava/lang/Object;

    .line 16780
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->value_:Ljava/lang/Object;

    .line 16781
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    .registers 1

    .prologue
    .line 16902
    #calls: Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->create()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->access$20800()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$PrefPair;)Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 16905
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$PrefPair;)Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16871
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    .line 16872
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 16873
    #calls: Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefPair;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->access$20700(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v1

    .line 16875
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16882
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    .line 16883
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 16884
    #calls: Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefPair;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->access$20700(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v1

    .line 16886
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16838
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefPair;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->access$20700(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16844
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefPair;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->access$20700(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16892
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefPair;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->access$20700(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16898
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefPair;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->access$20700(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16860
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefPair;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->access$20700(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16866
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefPair;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->access$20700(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16849
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefPair;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->access$20700(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16855
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$PrefPair;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;->access$20700(Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;)Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$PrefPair;
    .registers 2

    .prologue
    .line 16710
    sget-object v0, Lcom/google/feedreader/extrpc/Client$PrefPair;->defaultInstance:Lcom/google/feedreader/extrpc/Client$PrefPair;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16695
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$PrefPair;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 16721
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->id_:Ljava/lang/Object;

    .line 16722
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 16723
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 16731
    :goto_9
    return-object v4

    .line 16725
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 16727
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 16728
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 16729
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->id_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 16731
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 16812
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->memoizedSerializedSize:I

    .line 16813
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 16825
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 16815
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 16816
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 16817
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 16820
    :cond_19
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 16821
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 16824
    :cond_28
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->memoizedSerializedSize:I

    move v1, v0

    .line 16825
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getValue()Ljava/lang/String;
    .registers 6

    .prologue
    .line 16753
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->value_:Ljava/lang/Object;

    .line 16754
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 16755
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 16763
    :goto_9
    return-object v4

    .line 16757
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 16759
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 16760
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 16761
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->value_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 16763
    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 16718
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->bitField0_:I

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
    .line 16750
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->bitField0_:I

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

    .line 16784
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->memoizedIsInitialized:B

    .line 16785
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 16796
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 16785
    goto :goto_a

    .line 16787
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->hasId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 16788
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->memoizedIsInitialized:B

    move v1, v2

    .line 16789
    goto :goto_a

    .line 16791
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->hasValue()Z

    move-result v1

    if-nez v1, :cond_21

    .line 16792
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->memoizedIsInitialized:B

    move v1, v2

    .line 16793
    goto :goto_a

    .line 16795
    :cond_21
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->memoizedIsInitialized:B

    move v1, v3

    .line 16796
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    .registers 2

    .prologue
    .line 16903
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$PrefPair;->newBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16695
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;
    .registers 2

    .prologue
    .line 16907
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->newBuilder(Lcom/google/feedreader/extrpc/Client$PrefPair;)Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16695
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->toBuilder()Lcom/google/feedreader/extrpc/Client$PrefPair$Builder;

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
    .line 16832
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

    .line 16801
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getSerializedSize()I

    .line 16802
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 16803
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16805
    :cond_12
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$PrefPair;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 16806
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$PrefPair;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16808
    :cond_1f
    return-void
.end method
