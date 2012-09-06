.class public final Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiCheckCarrierProvisioningResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ALREADY_PROVISIONED_FIELD_NUMBER:I = 0x8

.field public static final ALREADY_PROVISIONED_FIELD_NUMBER:I = 0x5

.field public static final DATA_DELETED_WHEN_PROVISIONED_FIELD_NUMBER:I = 0x7

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONE_NUMBER_FIELD_NUMBER:I = 0x2

.field public static final PROVISIONABLE_FIELD_NUMBER:I = 0x4

.field public static final PROVISION_ERROR_FIELD_NUMBER:I = 0x3

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field public static final VERIFY_NEEDED_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;


# instance fields
.field private accountAlreadyProvisioned_:Z

.field private alreadyProvisioned_:Z

.field private bitField0_:I

.field private dataDeletedWhenProvisioned_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phoneNumber_:Ljava/lang/Object;

.field private provisionError_:I

.field private provisionable_:Z

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

.field private verifyNeeded_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40913
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 41576
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    .line 41577
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->initFields()V

    .line 41578
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

    .line 40836
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 41042
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->memoizedIsInitialized:B

    .line 41088
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->memoizedSerializedSize:I

    .line 40837
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->initFields()V

    .line 40838
    const/4 v2, 0x0

    .line 40840
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 40841
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_c5

    .line 40842
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 40843
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_ca

    .line 40848
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 40850
    const/4 v0, 0x1

    goto :goto_d

    .line 40845
    :sswitch_1e
    const/4 v0, 0x1

    .line 40846
    goto :goto_d

    .line 40855
    :sswitch_20
    const/4 v3, 0x0

    .line 40856
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 40857
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 40859
    :cond_2e
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 40860
    if-eqz v3, :cond_45

    .line 40861
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 40862
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 40864
    :cond_45
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_64

    goto :goto_d

    .line 40904
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4c
    move-exception v1

    .line 40905
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4d
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 40910
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_52
    move-exception v5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->makeExtensionsImmutable()V

    throw v5

    .line 40868
    .restart local v4       #tag:I
    :sswitch_57
    :try_start_57
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    .line 40869
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->phoneNumber_:Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_57 .. :try_end_63} :catch_4c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_64

    goto :goto_d

    .line 40906
    .end local v4           #tag:I
    :catch_64
    move-exception v1

    .line 40907
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

    .line 40873
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_73
    :try_start_73
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    .line 40874
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->provisionError_:I

    goto :goto_d

    .line 40878
    :sswitch_80
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    .line 40879
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->provisionable_:Z

    goto :goto_d

    .line 40883
    :sswitch_8d
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    .line 40884
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->alreadyProvisioned_:Z

    goto/16 :goto_d

    .line 40888
    :sswitch_9b
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    .line 40889
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->verifyNeeded_:Z

    goto/16 :goto_d

    .line 40893
    :sswitch_a9
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    .line 40894
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->dataDeletedWhenProvisioned_:Z

    goto/16 :goto_d

    .line 40898
    :sswitch_b7
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    .line 40899
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->accountAlreadyProvisioned_:Z
    :try_end_c3
    .catchall {:try_start_73 .. :try_end_c3} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_73 .. :try_end_c3} :catch_4c
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_c3} :catch_64

    goto/16 :goto_d

    .line 40910
    .end local v4           #tag:I
    :cond_c5
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->makeExtensionsImmutable()V

    .line 40912
    return-void

    .line 40843
    nop

    :sswitch_data_ca
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_57
        0x18 -> :sswitch_73
        0x20 -> :sswitch_80
        0x28 -> :sswitch_8d
        0x30 -> :sswitch_9b
        0x38 -> :sswitch_a9
        0x40 -> :sswitch_b7
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
    .line 40814
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 40819
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 41042
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->memoizedIsInitialized:B

    .line 41088
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->memoizedSerializedSize:I

    .line 40821
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40814
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 40822
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 41042
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->memoizedIsInitialized:B

    .line 41088
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->memoizedSerializedSize:I

    .line 40822
    return-void
.end method

.method static synthetic access$49702(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40814
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$49800(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40814
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->phoneNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$49802(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40814
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->phoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$49902(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40814
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->provisionError_:I

    return p1
.end method

.method static synthetic access$50002(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40814
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->provisionable_:Z

    return p1
.end method

.method static synthetic access$50102(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40814
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->alreadyProvisioned_:Z

    return p1
.end method

.method static synthetic access$50202(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40814
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->verifyNeeded_:Z

    return p1
.end method

.method static synthetic access$50302(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40814
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->dataDeletedWhenProvisioned_:Z

    return p1
.end method

.method static synthetic access$50402(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40814
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->accountAlreadyProvisioned_:Z

    return p1
.end method

.method static synthetic access$50502(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40814
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    .registers 1

    .prologue
    .line 40826
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41033
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 41034
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->phoneNumber_:Ljava/lang/Object;

    .line 41035
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->provisionError_:I

    .line 41036
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->provisionable_:Z

    .line 41037
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->alreadyProvisioned_:Z

    .line 41038
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->verifyNeeded_:Z

    .line 41039
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->dataDeletedWhenProvisioned_:Z

    .line 41040
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->accountAlreadyProvisioned_:Z

    .line 41041
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 1

    .prologue
    .line 41189
    #calls: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->access$49500()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 41192
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41169
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41175
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 41139
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 41145
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41180
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41186
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41159
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41165
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 41149
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 41155
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    return-object v0
.end method


# virtual methods
.method public getAccountAlreadyProvisioned()Z
    .registers 2

    .prologue
    .line 41029
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->accountAlreadyProvisioned_:Z

    return v0
.end method

.method public getAlreadyProvisioned()Z
    .registers 2

    .prologue
    .line 40999
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->alreadyProvisioned_:Z

    return v0
.end method

.method public getDataDeletedWhenProvisioned()Z
    .registers 2

    .prologue
    .line 41019
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->dataDeletedWhenProvisioned_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;
    .registers 2

    .prologue
    .line 40830
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40814
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;

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
            "Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40925
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 40946
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->phoneNumber_:Ljava/lang/Object;

    .line 40947
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 40948
    check-cast v1, Ljava/lang/String;

    .line 40956
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 40950
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 40952
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 40953
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 40954
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->phoneNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 40956
    goto :goto_8
.end method

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 40961
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->phoneNumber_:Ljava/lang/Object;

    .line 40962
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 40963
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40965
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->phoneNumber_:Ljava/lang/Object;

    .line 40968
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

.method public getProvisionError()I
    .registers 2

    .prologue
    .line 40979
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->provisionError_:I

    return v0
.end method

.method public getProvisionable()Z
    .registers 2

    .prologue
    .line 40989
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->provisionable_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 41090
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->memoizedSerializedSize:I

    .line 41091
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 41127
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 41093
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 41094
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 41095
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 41098
    :cond_1a
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 41099
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 41102
    :cond_29
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 41103
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->provisionError_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 41106
    :cond_37
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_44

    .line 41107
    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->provisionable_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 41110
    :cond_44
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_54

    .line 41111
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->alreadyProvisioned_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 41114
    :cond_54
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_64

    .line 41115
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->verifyNeeded_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 41118
    :cond_64
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_74

    .line 41119
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->dataDeletedWhenProvisioned_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 41122
    :cond_74
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_83

    .line 41123
    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->accountAlreadyProvisioned_:Z

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 41126
    :cond_83
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 41127
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_b
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 40936
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public getVerifyNeeded()Z
    .registers 2

    .prologue
    .line 41009
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->verifyNeeded_:Z

    return v0
.end method

.method public hasAccountAlreadyProvisioned()Z
    .registers 3

    .prologue
    .line 41026
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasAlreadyProvisioned()Z
    .registers 3

    .prologue
    .line 40996
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDataDeletedWhenProvisioned()Z
    .registers 3

    .prologue
    .line 41016
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 40943
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

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

.method public hasProvisionError()Z
    .registers 3

    .prologue
    .line 40976
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

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

.method public hasProvisionable()Z
    .registers 3

    .prologue
    .line 40986
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 40933
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasVerifyNeeded()Z
    .registers 3

    .prologue
    .line 41006
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41044
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->memoizedIsInitialized:B

    .line 41045
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 41056
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 41045
    goto :goto_9

    .line 41047
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_16

    .line 41048
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 41049
    goto :goto_9

    .line 41051
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_24

    .line 41052
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 41053
    goto :goto_9

    .line 41055
    :cond_24
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 2

    .prologue
    .line 41190
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40814
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;
    .registers 2

    .prologue
    .line 41194
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40814
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse$Builder;

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
    .line 41133
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 41061
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getSerializedSize()I

    .line 41062
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 41063
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 41065
    :cond_13
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 41066
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 41068
    :cond_20
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 41069
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->provisionError_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 41071
    :cond_2c
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_37

    .line 41072
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->provisionable_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 41074
    :cond_37
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_45

    .line 41075
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->alreadyProvisioned_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 41077
    :cond_45
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_53

    .line 41078
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->verifyNeeded_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 41080
    :cond_53
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_61

    .line 41081
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->dataDeletedWhenProvisioned_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 41083
    :cond_61
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6e

    .line 41084
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningResponse;->accountAlreadyProvisioned_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 41086
    :cond_6e
    return-void
.end method
