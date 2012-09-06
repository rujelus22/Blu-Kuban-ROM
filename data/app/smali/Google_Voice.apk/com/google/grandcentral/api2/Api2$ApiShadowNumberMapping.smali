.class public final Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMappingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiShadowNumberMapping"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    }
.end annotation


# static fields
.field public static final DESTINATION_NUMBER_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHADOW_NUMBER_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;


# instance fields
.field private bitField0_:I

.field private destinationNumber_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private shadowNumber_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4786
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->PARSER:Lcom/google/protobuf/Parser;

    .line 5196
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    .line 5197
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->initFields()V

    .line 5198
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 4747
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4872
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->memoizedIsInitialized:B

    .line 4900
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->memoizedSerializedSize:I

    .line 4748
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->initFields()V

    .line 4749
    const/4 v2, 0x0

    .line 4751
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 4752
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_54

    .line 4753
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 4754
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_58

    .line 4759
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 4761
    const/4 v0, 0x1

    goto :goto_d

    .line 4756
    :sswitch_1e
    const/4 v0, 0x1

    .line 4757
    goto :goto_d

    .line 4766
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->bitField0_:I

    .line 4767
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->destinationNumber_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 4777
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 4778
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 4783
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->makeExtensionsImmutable()V

    throw v4

    .line 4771
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->bitField0_:I

    .line 4772
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->shadowNumber_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 4779
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 4780
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_33

    .line 4783
    .end local v1           #e:Ljava/io/IOException;
    :cond_54
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->makeExtensionsImmutable()V

    .line 4785
    return-void

    .line 4754
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4725
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4730
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4872
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->memoizedIsInitialized:B

    .line 4900
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->memoizedSerializedSize:I

    .line 4732
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4725
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4733
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4872
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->memoizedIsInitialized:B

    .line 4900
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->memoizedSerializedSize:I

    .line 4733
    return-void
.end method

.method static synthetic access$5700(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4725
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->destinationNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5702(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4725
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->destinationNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4725
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->shadowNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4725
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->shadowNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4725
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 1

    .prologue
    .line 4737
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 4869
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->destinationNumber_:Ljava/lang/Object;

    .line 4870
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->shadowNumber_:Ljava/lang/Object;

    .line 4871
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    .registers 1

    .prologue
    .line 4977
    #calls: Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->access$5500()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4980
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4957
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4963
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4927
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4933
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4968
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4974
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4947
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4953
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4937
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4943
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 2

    .prologue
    .line 4741
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4725
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4809
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->destinationNumber_:Ljava/lang/Object;

    .line 4810
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4811
    check-cast v1, Ljava/lang/String;

    .line 4819
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4813
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4815
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4816
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4817
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->destinationNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4819
    goto :goto_8
.end method

.method public getDestinationNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4824
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->destinationNumber_:Ljava/lang/Object;

    .line 4825
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4826
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4828
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->destinationNumber_:Ljava/lang/Object;

    .line 4831
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4798
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4902
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->memoizedSerializedSize:I

    .line 4903
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 4915
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 4905
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 4906
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 4907
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->getDestinationNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4910
    :cond_19
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 4911
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->getShadowNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4914
    :cond_28
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->memoizedSerializedSize:I

    move v1, v0

    .line 4915
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getShadowNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4842
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->shadowNumber_:Ljava/lang/Object;

    .line 4843
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4844
    check-cast v1, Ljava/lang/String;

    .line 4852
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4846
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4848
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4849
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4850
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->shadowNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4852
    goto :goto_8
.end method

.method public getShadowNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4857
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->shadowNumber_:Ljava/lang/Object;

    .line 4858
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4859
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4861
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->shadowNumber_:Ljava/lang/Object;

    .line 4864
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

.method public hasDestinationNumber()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4806
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasShadowNumber()Z
    .registers 3

    .prologue
    .line 4839
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->bitField0_:I

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4874
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->memoizedIsInitialized:B

    .line 4875
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 4886
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 4875
    goto :goto_9

    .line 4877
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->hasDestinationNumber()Z

    move-result v3

    if-nez v3, :cond_16

    .line 4878
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->memoizedIsInitialized:B

    move v1, v2

    .line 4879
    goto :goto_9

    .line 4881
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->hasShadowNumber()Z

    move-result v3

    if-nez v3, :cond_20

    .line 4882
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->memoizedIsInitialized:B

    move v1, v2

    .line 4883
    goto :goto_9

    .line 4885
    :cond_20
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    .registers 2

    .prologue
    .line 4978
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4725
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    .registers 2

    .prologue
    .line 4982
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4725
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

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
    .line 4921
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4891
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->getSerializedSize()I

    .line 4892
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 4893
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->getDestinationNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4895
    :cond_12
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 4896
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->getShadowNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4898
    :cond_1f
    return-void
.end method
