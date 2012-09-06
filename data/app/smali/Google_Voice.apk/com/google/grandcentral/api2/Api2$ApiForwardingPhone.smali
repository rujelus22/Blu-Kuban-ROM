.class public final Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiForwardingPhoneOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiForwardingPhone"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    }
.end annotation


# static fields
.field public static final DOMESTIC_CALLS_INTERCEPTION_ENABLED_FIELD_NUMBER:I = 0xc

.field public static final ENABLED_BY_DEFAULT_FIELD_NUMBER:I = 0xa

.field public static final ID_FIELD_NUMBER:I = 0x6

.field public static final INTERNATIONAL_CALLS_INTERCEPTION_ENABLED_FIELD_NUMBER:I = 0xd

.field public static final IS_VERIFIED_FIELD_NUMBER:I = 0x8

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x2

.field public static final NUMBER_FORMATTED_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLICY_FIELD_NUMBER:I = 0x9

.field public static final SMS_ENABLED_FIELD_NUMBER:I = 0x7

.field public static final TYPE_FIELD_NUMBER:I = 0x4

.field public static final VOICEMAIL_DIVERSION_SETUP_ENABLED_FIELD_NUMBER:I = 0xb

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;


# instance fields
.field private bitField0_:I

.field private domesticCallsInterceptionEnabled_:Z

.field private enabledByDefault_:Z

.field private id_:I

.field private internationalCallsInterceptionEnabled_:Z

.field private isVerified_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private numberFormatted_:Ljava/lang/Object;

.field private number_:Ljava/lang/Object;

.field private policy_:I

.field private smsEnabled_:Z

.field private type_:I

.field private voicemailDiversionSetupEnabled_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9023
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->PARSER:Lcom/google/protobuf/Parser;

    .line 9978
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    .line 9979
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->initFields()V

    .line 9980
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

    .line 8934
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9242
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->memoizedIsInitialized:B

    .line 9304
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->memoizedSerializedSize:I

    .line 8935
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->initFields()V

    .line 8936
    const/4 v2, 0x0

    .line 8938
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 8939
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_dc

    .line 8940
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 8941
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_e0

    .line 8946
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 8948
    const/4 v0, 0x1

    goto :goto_d

    .line 8943
    :sswitch_1e
    const/4 v0, 0x1

    .line 8944
    goto :goto_d

    .line 8953
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    .line 8954
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->name_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 9014
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 9015
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 9020
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->makeExtensionsImmutable()V

    throw v4

    .line 8958
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    .line 8959
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->number_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 9016
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 9017
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

    .line 8963
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    .line 8964
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->type_:I

    goto :goto_d

    .line 8968
    :sswitch_61
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    .line 8969
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->numberFormatted_:Ljava/lang/Object;

    goto :goto_d

    .line 8973
    :sswitch_6e
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    .line 8974
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->id_:I

    goto :goto_d

    .line 8978
    :sswitch_7b
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    .line 8979
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->smsEnabled_:Z

    goto :goto_d

    .line 8983
    :sswitch_88
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    .line 8984
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->isVerified_:Z

    goto/16 :goto_d

    .line 8988
    :sswitch_96
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    .line 8989
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->policy_:I

    goto/16 :goto_d

    .line 8993
    :sswitch_a4
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    .line 8994
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->enabledByDefault_:Z

    goto/16 :goto_d

    .line 8998
    :sswitch_b2
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    .line 8999
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->voicemailDiversionSetupEnabled_:Z

    goto/16 :goto_d

    .line 9003
    :sswitch_c0
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    .line 9004
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->domesticCallsInterceptionEnabled_:Z

    goto/16 :goto_d

    .line 9008
    :sswitch_ce
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    .line 9009
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->internationalCallsInterceptionEnabled_:Z
    :try_end_da
    .catchall {:try_start_54 .. :try_end_da} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_da} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_da} :catch_45

    goto/16 :goto_d

    .line 9020
    .end local v3           #tag:I
    :cond_dc
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->makeExtensionsImmutable()V

    .line 9022
    return-void

    .line 8941
    :sswitch_data_e0
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x20 -> :sswitch_54
        0x2a -> :sswitch_61
        0x30 -> :sswitch_6e
        0x38 -> :sswitch_7b
        0x40 -> :sswitch_88
        0x48 -> :sswitch_96
        0x50 -> :sswitch_a4
        0x58 -> :sswitch_b2
        0x60 -> :sswitch_c0
        0x68 -> :sswitch_ce
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
    .line 8912
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8917
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9242
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->memoizedIsInitialized:B

    .line 9304
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->memoizedSerializedSize:I

    .line 8919
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8912
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8920
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9242
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->memoizedIsInitialized:B

    .line 9304
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->memoizedSerializedSize:I

    .line 8920
    return-void
.end method

.method static synthetic access$10500(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8912
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10502(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8912
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10600(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8912
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->number_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10602(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8912
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->number_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10702(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8912
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->type_:I

    return p1
.end method

.method static synthetic access$10800(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8912
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->numberFormatted_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10802(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8912
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->numberFormatted_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10902(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8912
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->id_:I

    return p1
.end method

.method static synthetic access$11002(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8912
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->smsEnabled_:Z

    return p1
.end method

.method static synthetic access$11102(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8912
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->isVerified_:Z

    return p1
.end method

.method static synthetic access$11202(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8912
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->policy_:I

    return p1
.end method

.method static synthetic access$11302(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8912
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->enabledByDefault_:Z

    return p1
.end method

.method static synthetic access$11402(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8912
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->voicemailDiversionSetupEnabled_:Z

    return p1
.end method

.method static synthetic access$11502(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8912
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->domesticCallsInterceptionEnabled_:Z

    return p1
.end method

.method static synthetic access$11602(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8912
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->internationalCallsInterceptionEnabled_:Z

    return p1
.end method

.method static synthetic access$11702(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8912
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 1

    .prologue
    .line 8924
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    return-object v0
.end method

.method private initFields()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9229
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->name_:Ljava/lang/Object;

    .line 9230
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->number_:Ljava/lang/Object;

    .line 9231
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->type_:I

    .line 9232
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->numberFormatted_:Ljava/lang/Object;

    .line 9233
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->id_:I

    .line 9234
    iput-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->smsEnabled_:Z

    .line 9235
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->isVerified_:Z

    .line 9236
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->policy_:I

    .line 9237
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->enabledByDefault_:Z

    .line 9238
    iput-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->voicemailDiversionSetupEnabled_:Z

    .line 9239
    iput-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->domesticCallsInterceptionEnabled_:Z

    .line 9240
    iput-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->internationalCallsInterceptionEnabled_:Z

    .line 9241
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 1

    .prologue
    .line 9421
    #calls: Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->access$10300()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 9424
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9401
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9407
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9371
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9377
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9412
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9418
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9391
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9397
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9381
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9387
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 2

    .prologue
    .line 8928
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8912
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v0

    return-object v0
.end method

.method public getDomesticCallsInterceptionEnabled()Z
    .registers 2

    .prologue
    .line 9215
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->domesticCallsInterceptionEnabled_:Z

    return v0
.end method

.method public getEnabledByDefault()Z
    .registers 2

    .prologue
    .line 9195
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->enabledByDefault_:Z

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 9155
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->id_:I

    return v0
.end method

.method public getInternationalCallsInterceptionEnabled()Z
    .registers 2

    .prologue
    .line 9225
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->internationalCallsInterceptionEnabled_:Z

    return v0
.end method

.method public getIsVerified()Z
    .registers 2

    .prologue
    .line 9175
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->isVerified_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 9046
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->name_:Ljava/lang/Object;

    .line 9047
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 9048
    check-cast v1, Ljava/lang/String;

    .line 9056
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 9050
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9052
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9053
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 9054
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 9056
    goto :goto_8
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 9061
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->name_:Ljava/lang/Object;

    .line 9062
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 9063
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9065
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->name_:Ljava/lang/Object;

    .line 9068
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

.method public getNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 9079
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->number_:Ljava/lang/Object;

    .line 9080
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 9081
    check-cast v1, Ljava/lang/String;

    .line 9089
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 9083
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9085
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9086
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 9087
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->number_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 9089
    goto :goto_8
.end method

.method public getNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 9094
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->number_:Ljava/lang/Object;

    .line 9095
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 9096
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9098
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->number_:Ljava/lang/Object;

    .line 9101
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

.method public getNumberFormatted()Ljava/lang/String;
    .registers 5

    .prologue
    .line 9122
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->numberFormatted_:Ljava/lang/Object;

    .line 9123
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 9124
    check-cast v1, Ljava/lang/String;

    .line 9132
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 9126
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9128
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9129
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 9130
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->numberFormatted_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 9132
    goto :goto_8
.end method

.method public getNumberFormattedBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 9137
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->numberFormatted_:Ljava/lang/Object;

    .line 9138
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 9139
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9141
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->numberFormatted_:Ljava/lang/Object;

    .line 9144
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
            "Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9035
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPolicy()I
    .registers 2

    .prologue
    .line 9185
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->policy_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 9306
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->memoizedSerializedSize:I

    .line 9307
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 9359
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 9309
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 9310
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 9311
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9314
    :cond_1c
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 9315
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9318
    :cond_2b
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_38

    .line 9319
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->type_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9322
    :cond_38
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_48

    .line 9323
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getNumberFormattedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9326
    :cond_48
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_58

    .line 9327
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->id_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9330
    :cond_58
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_68

    .line 9331
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->smsEnabled_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 9334
    :cond_68
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_77

    .line 9335
    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->isVerified_:Z

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 9338
    :cond_77
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_88

    .line 9339
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->policy_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9342
    :cond_88
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_99

    .line 9343
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->enabledByDefault_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 9346
    :cond_99
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_aa

    .line 9347
    const/16 v2, 0xb

    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->voicemailDiversionSetupEnabled_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 9350
    :cond_aa
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_bb

    .line 9351
    const/16 v2, 0xc

    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->domesticCallsInterceptionEnabled_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 9354
    :cond_bb
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_cc

    .line 9355
    const/16 v2, 0xd

    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->internationalCallsInterceptionEnabled_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 9358
    :cond_cc
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->memoizedSerializedSize:I

    move v1, v0

    .line 9359
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getSmsEnabled()Z
    .registers 2

    .prologue
    .line 9165
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->smsEnabled_:Z

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 9112
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->type_:I

    return v0
.end method

.method public getVoicemailDiversionSetupEnabled()Z
    .registers 2

    .prologue
    .line 9205
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->voicemailDiversionSetupEnabled_:Z

    return v0
.end method

.method public hasDomesticCallsInterceptionEnabled()Z
    .registers 3

    .prologue
    .line 9212
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasEnabledByDefault()Z
    .registers 3

    .prologue
    .line 9192
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 9152
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

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

.method public hasInternationalCallsInterceptionEnabled()Z
    .registers 3

    .prologue
    .line 9222
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasIsVerified()Z
    .registers 3

    .prologue
    .line 9172
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9043
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasNumber()Z
    .registers 3

    .prologue
    .line 9076
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

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

.method public hasNumberFormatted()Z
    .registers 3

    .prologue
    .line 9119
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

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

.method public hasPolicy()Z
    .registers 3

    .prologue
    .line 9182
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

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

.method public hasSmsEnabled()Z
    .registers 3

    .prologue
    .line 9162
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    .line 9109
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

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

.method public hasVoicemailDiversionSetupEnabled()Z
    .registers 3

    .prologue
    .line 9202
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

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

    .line 9244
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->memoizedIsInitialized:B

    .line 9245
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 9260
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 9245
    goto :goto_9

    .line 9247
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->hasName()Z

    move-result v3

    if-nez v3, :cond_16

    .line 9248
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->memoizedIsInitialized:B

    goto :goto_a

    .line 9251
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->hasNumber()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 9252
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->memoizedIsInitialized:B

    goto :goto_a

    .line 9255
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->hasType()Z

    move-result v3

    if-nez v3, :cond_28

    .line 9256
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->memoizedIsInitialized:B

    goto :goto_a

    .line 9259
    :cond_28
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->memoizedIsInitialized:B

    move v2, v1

    .line 9260
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 2

    .prologue
    .line 9422
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8912
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;
    .registers 2

    .prologue
    .line 9426
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8912
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

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
    .line 9365
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

    .line 9265
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getSerializedSize()I

    .line 9266
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 9267
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9269
    :cond_15
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 9270
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9272
    :cond_22
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2d

    .line 9273
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->type_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 9275
    :cond_2d
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3b

    .line 9276
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getNumberFormattedBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9278
    :cond_3b
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 9279
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->id_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9281
    :cond_49
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_57

    .line 9282
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->smsEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9284
    :cond_57
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_64

    .line 9285
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->isVerified_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9287
    :cond_64
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_73

    .line 9288
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->policy_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9290
    :cond_73
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_82

    .line 9291
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->enabledByDefault_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9293
    :cond_82
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_91

    .line 9294
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->voicemailDiversionSetupEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9296
    :cond_91
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a0

    .line 9297
    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->domesticCallsInterceptionEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9299
    :cond_a0
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_af

    .line 9300
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->internationalCallsInterceptionEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9302
    :cond_af
    return-void
.end method
