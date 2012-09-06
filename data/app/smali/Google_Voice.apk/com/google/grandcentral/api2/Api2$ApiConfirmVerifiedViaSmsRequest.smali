.class public final Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiConfirmVerifiedViaSmsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final CREATE_NEW_ACCOUNT_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIN_FIELD_NUMBER:I = 0x4

.field public static final TIMEZONE_FIELD_NUMBER:I = 0x5

.field public static final VERIFICATION_TOKEN_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private createNewAccount_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pin_:Ljava/lang/Object;

.field private timezone_:Ljava/lang/Object;

.field private verificationToken_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28372
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 29040
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    .line 29041
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->initFields()V

    .line 29042
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

    .line 28318
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 28537
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->memoizedIsInitialized:B

    .line 28574
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->memoizedSerializedSize:I

    .line 28319
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->initFields()V

    .line 28320
    const/4 v2, 0x0

    .line 28322
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 28323
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_7b

    .line 28324
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 28325
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_80

    .line 28330
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 28332
    const/4 v0, 0x1

    goto :goto_d

    .line 28327
    :sswitch_1e
    const/4 v0, 0x1

    .line 28328
    goto :goto_d

    .line 28337
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    .line 28338
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 28363
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 28364
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 28369
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->makeExtensionsImmutable()V

    throw v4

    .line 28342
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    .line 28343
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->verificationToken_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 28365
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 28366
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

    .line 28347
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    .line 28348
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->createNewAccount_:Z

    goto :goto_d

    .line 28352
    :sswitch_61
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    .line 28353
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->pin_:Ljava/lang/Object;

    goto :goto_d

    .line 28357
    :sswitch_6e
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    .line 28358
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->timezone_:Ljava/lang/Object;
    :try_end_7a
    .catchall {:try_start_54 .. :try_end_7a} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_7a} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_7a} :catch_45

    goto :goto_d

    .line 28369
    .end local v3           #tag:I
    :cond_7b
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->makeExtensionsImmutable()V

    .line 28371
    return-void

    .line 28325
    nop

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x18 -> :sswitch_54
        0x22 -> :sswitch_61
        0x2a -> :sswitch_6e
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
    .line 28296
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 28301
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 28537
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->memoizedIsInitialized:B

    .line 28574
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->memoizedSerializedSize:I

    .line 28303
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28296
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 28304
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 28537
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->memoizedIsInitialized:B

    .line 28574
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->memoizedSerializedSize:I

    .line 28304
    return-void
.end method

.method static synthetic access$34300(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28296
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$34302(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28296
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34400(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28296
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->verificationToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$34402(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28296
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->verificationToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34502(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28296
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->createNewAccount_:Z

    return p1
.end method

.method static synthetic access$34600(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28296
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->pin_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$34602(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28296
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->pin_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34700(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28296
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->timezone_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$34702(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28296
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->timezone_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$34802(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28296
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    .registers 1

    .prologue
    .line 28308
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 28531
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 28532
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->verificationToken_:Ljava/lang/Object;

    .line 28533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->createNewAccount_:Z

    .line 28534
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->pin_:Ljava/lang/Object;

    .line 28535
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->timezone_:Ljava/lang/Object;

    .line 28536
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 1

    .prologue
    .line 28663
    #calls: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->access$34100()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 28666
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28643
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28649
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28613
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28619
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28654
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28660
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28633
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28639
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28623
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28629
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 28395
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 28396
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 28397
    check-cast v1, Ljava/lang/String;

    .line 28405
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 28399
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 28401
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 28402
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 28403
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 28405
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28410
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 28411
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 28412
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28414
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 28417
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

.method public getCreateNewAccount()Z
    .registers 2

    .prologue
    .line 28461
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->createNewAccount_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    .registers 2

    .prologue
    .line 28312
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28296
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

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
            "Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28384
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .registers 5

    .prologue
    .line 28471
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->pin_:Ljava/lang/Object;

    .line 28472
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 28473
    check-cast v1, Ljava/lang/String;

    .line 28481
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 28475
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 28477
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 28478
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 28479
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->pin_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 28481
    goto :goto_8
.end method

.method public getPinBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28486
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->pin_:Ljava/lang/Object;

    .line 28487
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 28488
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28490
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->pin_:Ljava/lang/Object;

    .line 28493
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

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 28576
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->memoizedSerializedSize:I

    .line 28577
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 28601
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 28579
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 28580
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 28581
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28584
    :cond_1a
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 28585
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getVerificationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28588
    :cond_29
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 28589
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->createNewAccount_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 28592
    :cond_37
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 28593
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getPinBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28596
    :cond_48
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 28597
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getTimezoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28600
    :cond_5a
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 28601
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getTimezone()Ljava/lang/String;
    .registers 5

    .prologue
    .line 28504
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->timezone_:Ljava/lang/Object;

    .line 28505
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 28506
    check-cast v1, Ljava/lang/String;

    .line 28514
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 28508
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 28510
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 28511
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 28512
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->timezone_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 28514
    goto :goto_8
.end method

.method public getTimezoneBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28519
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->timezone_:Ljava/lang/Object;

    .line 28520
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 28521
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28523
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->timezone_:Ljava/lang/Object;

    .line 28526
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

.method public getVerificationToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 28428
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->verificationToken_:Ljava/lang/Object;

    .line 28429
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 28430
    check-cast v1, Ljava/lang/String;

    .line 28438
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 28432
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 28434
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 28435
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 28436
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->verificationToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 28438
    goto :goto_8
.end method

.method public getVerificationTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28443
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->verificationToken_:Ljava/lang/Object;

    .line 28444
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 28445
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28447
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->verificationToken_:Ljava/lang/Object;

    .line 28450
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

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28392
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCreateNewAccount()Z
    .registers 3

    .prologue
    .line 28458
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

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

.method public hasPin()Z
    .registers 3

    .prologue
    .line 28468
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

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

.method public hasTimezone()Z
    .registers 3

    .prologue
    .line 28501
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

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

.method public hasVerificationToken()Z
    .registers 3

    .prologue
    .line 28425
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

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

    .line 28539
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->memoizedIsInitialized:B

    .line 28540
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 28551
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 28540
    goto :goto_9

    .line 28542
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 28543
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 28544
    goto :goto_9

    .line 28546
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->hasVerificationToken()Z

    move-result v3

    if-nez v3, :cond_20

    .line 28547
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 28548
    goto :goto_9

    .line 28550
    :cond_20
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 2

    .prologue
    .line 28664
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28296
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 2

    .prologue
    .line 28668
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28296
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

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
    .line 28607
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 28556
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getSerializedSize()I

    .line 28557
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 28558
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 28560
    :cond_13
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 28561
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getVerificationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 28563
    :cond_20
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 28564
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->createNewAccount_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 28566
    :cond_2c
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 28567
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getPinBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 28569
    :cond_3b
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 28570
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getTimezoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 28572
    :cond_4b
    return-void
.end method
