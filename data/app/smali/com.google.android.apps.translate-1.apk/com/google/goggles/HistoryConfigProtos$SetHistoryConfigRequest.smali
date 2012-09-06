.class public final Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HistoryConfigProtos.java"

# interfaces
.implements Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/HistoryConfigProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetHistoryConfigRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
    }
.end annotation


# static fields
.field public static final HISTORY_CONFIG_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1166
    new-instance v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    .line 1167
    sget-object v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    invoke-direct {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->initFields()V

    .line 1168
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 860
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 887
    iput-byte v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->memoizedIsInitialized:B

    .line 912
    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->memoizedSerializedSize:I

    .line 861
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;Lcom/google/goggles/HistoryConfigProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 855
    invoke-direct {p0, p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;-><init>(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 862
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 887
    iput-byte v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->memoizedIsInitialized:B

    .line 912
    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->memoizedSerializedSize:I

    .line 862
    return-void
.end method

.method static synthetic access$1602(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 855
    iput-object p1, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 855
    iput p1, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 1

    .prologue
    .line 866
    sget-object v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 885
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 886
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
    .registers 1

    .prologue
    .line 1000
    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->create()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->access$1400()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1003
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 969
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    .line 970
    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 971
    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->access$1300(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    .line 973
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 980
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    .line 981
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 982
    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->access$1300(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    .line 984
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 936
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->access$1300(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 942
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->access$1300(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 990
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->access$1300(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 996
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->access$1300(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 958
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->access$1300(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 964
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->access$1300(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 947
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->access$1300(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 953
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;->access$1300(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;
    .registers 2

    .prologue
    .line 870
    sget-object v0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryConfig()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 914
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->memoizedSerializedSize:I

    .line 915
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 923
    :goto_6
    return v0

    .line 917
    :cond_7
    const/4 v0, 0x0

    .line 918
    iget v1, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 919
    iget-object v1, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 922
    :cond_15
    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->memoizedSerializedSize:I

    goto :goto_6
.end method

.method public hasHistoryConfig()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 878
    iget v1, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 889
    iget-byte v2, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->memoizedIsInitialized:B

    .line 890
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 901
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 890
    goto :goto_9

    .line 892
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->hasHistoryConfig()Z

    move-result v2

    if-nez v2, :cond_16

    .line 893
    iput-byte v1, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->memoizedIsInitialized:B

    move v0, v1

    .line 894
    goto :goto_9

    .line 896
    :cond_16
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->getHistoryConfig()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_24

    .line 897
    iput-byte v1, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->memoizedIsInitialized:B

    move v0, v1

    .line 898
    goto :goto_9

    .line 900
    :cond_24
    iput-byte v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
    .registers 2

    .prologue
    .line 1001
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->newBuilderForType()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;
    .registers 2

    .prologue
    .line 1005
    invoke-static {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->newBuilder(Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->toBuilder()Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest$Builder;

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
    .line 930
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

    .line 906
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->getSerializedSize()I

    .line 907
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 908
    iget-object v0, p0, Lcom/google/goggles/HistoryConfigProtos$SetHistoryConfigRequest;->historyConfig_:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 910
    :cond_f
    return-void
.end method
