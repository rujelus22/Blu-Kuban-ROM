.class public final Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiCarrierProvisionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final CLIENT_PHONE_NUMBER_FIELD_NUMBER:I = 0x2

.field public static final INTEGRATED_PRIMARY_DID_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private clientPhoneNumber_:Ljava/lang/Object;

.field private integratedPrimaryDid_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41670
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 42177
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    .line 42178
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->initFields()V

    .line 42179
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

    .line 41626
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 41790
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->memoizedIsInitialized:B

    .line 41817
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->memoizedSerializedSize:I

    .line 41627
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->initFields()V

    .line 41628
    const/4 v2, 0x0

    .line 41630
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 41631
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_61

    .line 41632
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 41633
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_66

    .line 41638
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 41640
    const/4 v0, 0x1

    goto :goto_d

    .line 41635
    :sswitch_1e
    const/4 v0, 0x1

    .line 41636
    goto :goto_d

    .line 41645
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I

    .line 41646
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 41661
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 41662
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 41667
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->makeExtensionsImmutable()V

    throw v4

    .line 41650
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I

    .line 41651
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientPhoneNumber_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 41663
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 41664
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

    .line 41655
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I

    .line 41656
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->integratedPrimaryDid_:Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_60} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_60} :catch_45

    goto :goto_d

    .line 41667
    .end local v3           #tag:I
    :cond_61
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->makeExtensionsImmutable()V

    .line 41669
    return-void

    .line 41633
    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x1a -> :sswitch_54
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
    .line 41604
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 41609
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 41790
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->memoizedIsInitialized:B

    .line 41817
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->memoizedSerializedSize:I

    .line 41611
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41604
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 41612
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 41790
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->memoizedIsInitialized:B

    .line 41817
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->memoizedSerializedSize:I

    .line 41612
    return-void
.end method

.method static synthetic access$50900(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41604
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$50902(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41604
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$51000(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41604
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientPhoneNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$51002(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41604
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientPhoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$51100(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41604
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->integratedPrimaryDid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$51102(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41604
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->integratedPrimaryDid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$51202(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41604
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    .registers 1

    .prologue
    .line 41616
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 41786
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 41787
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientPhoneNumber_:Ljava/lang/Object;

    .line 41788
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->integratedPrimaryDid_:Ljava/lang/Object;

    .line 41789
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 1

    .prologue
    .line 41898
    #calls: Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->access$50700()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 41901
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41878
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41884
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 41848
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 41854
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41889
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41895
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41868
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41874
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 41858
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 41864
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 41693
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 41694
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 41695
    check-cast v1, Ljava/lang/String;

    .line 41703
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 41697
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 41699
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 41700
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 41701
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 41703
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 41708
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 41709
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 41710
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 41712
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 41715
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

.method public getClientPhoneNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 41726
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientPhoneNumber_:Ljava/lang/Object;

    .line 41727
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 41728
    check-cast v1, Ljava/lang/String;

    .line 41736
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 41730
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 41732
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 41733
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 41734
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientPhoneNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 41736
    goto :goto_8
.end method

.method public getClientPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 41741
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientPhoneNumber_:Ljava/lang/Object;

    .line 41742
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 41743
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 41745
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->clientPhoneNumber_:Ljava/lang/Object;

    .line 41748
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;
    .registers 2

    .prologue
    .line 41620
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41604
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getIntegratedPrimaryDid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 41759
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->integratedPrimaryDid_:Ljava/lang/Object;

    .line 41760
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 41761
    check-cast v1, Ljava/lang/String;

    .line 41769
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 41763
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 41765
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 41766
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 41767
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->integratedPrimaryDid_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 41769
    goto :goto_8
.end method

.method public getIntegratedPrimaryDidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 41774
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->integratedPrimaryDid_:Ljava/lang/Object;

    .line 41775
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 41776
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 41778
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->integratedPrimaryDid_:Ljava/lang/Object;

    .line 41781
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
            "Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41682
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 41819
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->memoizedSerializedSize:I

    .line 41820
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 41836
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 41822
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 41823
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 41824
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 41827
    :cond_19
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 41828
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->getClientPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 41831
    :cond_28
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 41832
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->getIntegratedPrimaryDidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 41835
    :cond_39
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 41836
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 41690
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasClientPhoneNumber()Z
    .registers 3

    .prologue
    .line 41723
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I

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

.method public hasIntegratedPrimaryDid()Z
    .registers 3

    .prologue
    .line 41756
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 41792
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->memoizedIsInitialized:B

    .line 41793
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 41800
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 41793
    goto :goto_9

    .line 41795
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 41796
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 41797
    goto :goto_9

    .line 41799
    :cond_16
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 2

    .prologue
    .line 41899
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41604
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;
    .registers 2

    .prologue
    .line 41903
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41604
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest$Builder;

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
    .line 41842
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

    .line 41805
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->getSerializedSize()I

    .line 41806
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 41807
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 41809
    :cond_12
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 41810
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->getClientPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 41812
    :cond_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 41813
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionRequest;->getIntegratedPrimaryDidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 41815
    :cond_2e
    return-void
.end method
