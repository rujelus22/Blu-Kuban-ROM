.class public final Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiPrepareAccountForProvisioningResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;,
        Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Result;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private result_:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26696
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 27061
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    .line 27062
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->initFields()V

    .line 27063
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 26649
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 26783
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->memoizedIsInitialized:B

    .line 26811
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->memoizedSerializedSize:I

    .line 26650
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->initFields()V

    .line 26651
    const/4 v2, 0x0

    .line 26653
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 26654
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_73

    .line 26655
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 26656
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_78

    .line 26661
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 26663
    const/4 v0, 0x1

    goto :goto_d

    .line 26658
    :sswitch_1e
    const/4 v0, 0x1

    .line 26659
    goto :goto_d

    .line 26668
    :sswitch_20
    const/4 v3, 0x0

    .line 26669
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 26670
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 26672
    :cond_2e
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 26673
    if-eqz v3, :cond_45

    .line 26674
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 26675
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 26677
    :cond_45
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->bitField0_:I
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_64

    goto :goto_d

    .line 26687
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4c
    move-exception v1

    .line 26688
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4d
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 26693
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_52
    move-exception v5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->makeExtensionsImmutable()V

    throw v5

    .line 26681
    .restart local v4       #tag:I
    :sswitch_57
    :try_start_57
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->bitField0_:I

    .line 26682
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->result_:I
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_57 .. :try_end_63} :catch_4c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_64

    goto :goto_d

    .line 26689
    .end local v4           #tag:I
    :catch_64
    move-exception v1

    .line 26690
    .local v1, e:Ljava/io/IOException;
    :try_start_65
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_73
    .catchall {:try_start_65 .. :try_end_73} :catchall_52

    .line 26693
    .end local v1           #e:Ljava/io/IOException;
    :cond_73
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->makeExtensionsImmutable()V

    .line 26695
    return-void

    .line 26656
    nop

    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x10 -> :sswitch_57
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
    .line 26627
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 26632
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 26783
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->memoizedIsInitialized:B

    .line 26811
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->memoizedSerializedSize:I

    .line 26634
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26627
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 26635
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 26783
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->memoizedIsInitialized:B

    .line 26811
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->memoizedSerializedSize:I

    .line 26635
    return-void
.end method

.method static synthetic access$32302(Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26627
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$32402(Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26627
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->result_:I

    return p1
.end method

.method static synthetic access$32502(Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26627
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    .registers 1

    .prologue
    .line 26639
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 26780
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 26781
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->result_:I

    .line 26782
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    .registers 1

    .prologue
    .line 26888
    #calls: Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->access$32100()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 26891
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26868
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26874
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26838
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26844
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26879
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26885
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26858
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26864
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26848
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26854
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;
    .registers 2

    .prologue
    .line 26643
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26627
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26708
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getResult()I
    .registers 2

    .prologue
    .line 26776
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->result_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 26813
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->memoizedSerializedSize:I

    .line 26814
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 26826
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 26816
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 26817
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 26818
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26821
    :cond_17
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 26822
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->result_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 26825
    :cond_24
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 26826
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 26766
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasResult()Z
    .registers 3

    .prologue
    .line 26773
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 26763
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->bitField0_:I

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26785
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->memoizedIsInitialized:B

    .line 26786
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 26797
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 26786
    goto :goto_9

    .line 26788
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_16

    .line 26789
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 26790
    goto :goto_9

    .line 26792
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_24

    .line 26793
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 26794
    goto :goto_9

    .line 26796
    :cond_24
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    .registers 2

    .prologue
    .line 26889
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26627
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;
    .registers 2

    .prologue
    .line 26893
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;)Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26627
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse$Builder;

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
    .line 26832
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

    .line 26802
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->getSerializedSize()I

    .line 26803
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 26804
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 26806
    :cond_10
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 26807
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPrepareAccountForProvisioningResponse;->result_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 26809
    :cond_1b
    return-void
.end method
