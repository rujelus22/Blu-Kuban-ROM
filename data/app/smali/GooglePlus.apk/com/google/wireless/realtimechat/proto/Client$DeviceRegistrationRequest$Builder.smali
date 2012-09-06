.class public final Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;",
        "Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private androidId_:J

.field private androidRegistrationId_:Ljava/lang/Object;

.field private appId_:Ljava/lang/Object;

.field private bitField0_:I

.field private deviceType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

.field private locale_:Ljava/lang/Object;

.field private oldToken_:Lcom/google/protobuf/ByteString;

.field private ownerId_:Ljava/lang/Object;

.field private phoneNumber_:Ljava/lang/Object;

.field private registrationType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

.field private token_:Lcom/google/protobuf/ByteString;

.field private verification_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28021
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 28265
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->deviceType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    .line 28289
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->REGISTER:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->registrationType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    .line 28313
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->ownerId_:Ljava/lang/Object;

    .line 28349
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->verification_:Ljava/lang/Object;

    .line 28385
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 28421
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 28457
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->appId_:Ljava/lang/Object;

    .line 28493
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->token_:Lcom/google/protobuf/ByteString;

    .line 28538
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->androidRegistrationId_:Ljava/lang/Object;

    .line 28574
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->oldToken_:Lcom/google/protobuf/ByteString;

    .line 28022
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 28023
    return-void
.end method

.method static synthetic access$37500()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 1

    .prologue
    .line 28016
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 1

    .prologue
    .line 28028
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 28026
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28016
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 3

    .prologue
    .line 28067
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    .line 28068
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 28069
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 28071
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28016
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 6

    .prologue
    .line 28085
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 28086
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28087
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 28088
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 28089
    or-int/lit8 v2, v2, 0x1

    .line 28091
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->deviceType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->deviceType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->access$37702(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    .line 28092
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 28093
    or-int/lit8 v2, v2, 0x2

    .line 28095
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->registrationType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->registrationType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->access$37802(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    .line 28096
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 28097
    or-int/lit8 v2, v2, 0x4

    .line 28099
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->ownerId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->ownerId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->access$37902(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28100
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 28101
    or-int/lit8 v2, v2, 0x8

    .line 28103
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->verification_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->verification_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->access$38002(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28104
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 28105
    or-int/lit8 v2, v2, 0x10

    .line 28107
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->locale_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->access$38102(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28108
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 28109
    or-int/lit8 v2, v2, 0x20

    .line 28111
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->access$38202(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28112
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 28113
    or-int/lit8 v2, v2, 0x40

    .line 28115
    :cond_5c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->appId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->appId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->access$38302(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28116
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 28117
    or-int/lit16 v2, v2, 0x80

    .line 28119
    :cond_69
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->token_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->token_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->access$38402(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 28120
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_76

    .line 28121
    or-int/lit16 v2, v2, 0x100

    .line 28123
    :cond_76
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->androidId_:J

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->androidId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->access$38502(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;J)J

    .line 28124
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_83

    .line 28125
    or-int/lit16 v2, v2, 0x200

    .line 28127
    :cond_83
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->androidRegistrationId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->androidRegistrationId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->access$38602(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28128
    and-int/lit16 v3, v0, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_90

    .line 28129
    or-int/lit16 v2, v2, 0x400

    .line 28131
    :cond_90
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->oldToken_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->oldToken_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->access$38702(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 28132
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->access$38802(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;I)I

    .line 28133
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28016
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28016
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 3

    .prologue
    .line 28032
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 28033
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->deviceType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    .line 28034
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28035
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->REGISTER:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->registrationType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    .line 28036
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28037
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->ownerId_:Ljava/lang/Object;

    .line 28038
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28039
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->verification_:Ljava/lang/Object;

    .line 28040
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28041
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 28042
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28043
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 28044
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28045
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->appId_:Ljava/lang/Object;

    .line 28046
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28047
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->token_:Lcom/google/protobuf/ByteString;

    .line 28048
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28049
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->androidId_:J

    .line 28050
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28051
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->androidRegistrationId_:Ljava/lang/Object;

    .line 28052
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28053
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->oldToken_:Lcom/google/protobuf/ByteString;

    .line 28054
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28055
    return-object p0
.end method

.method public clearAndroidId()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 3

    .prologue
    .line 28531
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28532
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->androidId_:J

    .line 28534
    return-object p0
.end method

.method public clearAndroidRegistrationId()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 2

    .prologue
    .line 28562
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28563
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getAndroidRegistrationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->androidRegistrationId_:Ljava/lang/Object;

    .line 28565
    return-object p0
.end method

.method public clearAppId()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 2

    .prologue
    .line 28481
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28482
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->appId_:Ljava/lang/Object;

    .line 28484
    return-object p0
.end method

.method public clearDeviceType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 2

    .prologue
    .line 28282
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28283
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->deviceType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    .line 28285
    return-object p0
.end method

.method public clearLocale()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 2

    .prologue
    .line 28409
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28410
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getLocale()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 28412
    return-object p0
.end method

.method public clearOldToken()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 2

    .prologue
    .line 28591
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28592
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getOldToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->oldToken_:Lcom/google/protobuf/ByteString;

    .line 28594
    return-object p0
.end method

.method public clearOwnerId()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 2

    .prologue
    .line 28337
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28338
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->ownerId_:Ljava/lang/Object;

    .line 28340
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 2

    .prologue
    .line 28445
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28446
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 28448
    return-object p0
.end method

.method public clearRegistrationType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 2

    .prologue
    .line 28306
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28307
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->REGISTER:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->registrationType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    .line 28309
    return-object p0
.end method

.method public clearToken()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 2

    .prologue
    .line 28510
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28511
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->token_:Lcom/google/protobuf/ByteString;

    .line 28513
    return-object p0
.end method

.method public clearVerification()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 2

    .prologue
    .line 28373
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28374
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getVerification()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->verification_:Ljava/lang/Object;

    .line 28376
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 28016
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28016
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 3

    .prologue
    .line 28059
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28016
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidId()J
    .registers 3

    .prologue
    .line 28522
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->androidId_:J

    return-wide v0
.end method

.method public getAndroidRegistrationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28543
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->androidRegistrationId_:Ljava/lang/Object;

    .line 28544
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28545
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28546
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->androidRegistrationId_:Ljava/lang/Object;

    .line 28549
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getAppId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28462
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->appId_:Ljava/lang/Object;

    .line 28463
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28464
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28465
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->appId_:Ljava/lang/Object;

    .line 28468
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 28016
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28016
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 2

    .prologue
    .line 28063
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;
    .registers 2

    .prologue
    .line 28270
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->deviceType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28390
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 28391
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28392
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28393
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 28396
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getOldToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 28579
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->oldToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28318
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->ownerId_:Ljava/lang/Object;

    .line 28319
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28320
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28321
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->ownerId_:Ljava/lang/Object;

    .line 28324
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28426
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 28427
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28428
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28429
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 28432
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getRegistrationType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;
    .registers 2

    .prologue
    .line 28294
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->registrationType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    return-object v0
.end method

.method public getToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 28498
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->token_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVerification()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28354
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->verification_:Ljava/lang/Object;

    .line 28355
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28356
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28357
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->verification_:Ljava/lang/Object;

    .line 28360
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public hasAndroidId()Z
    .registers 3

    .prologue
    .line 28519
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

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

.method public hasAndroidRegistrationId()Z
    .registers 3

    .prologue
    .line 28540
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

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

.method public hasAppId()Z
    .registers 3

    .prologue
    .line 28459
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

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

.method public hasDeviceType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28267
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLocale()Z
    .registers 3

    .prologue
    .line 28387
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

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

.method public hasOldToken()Z
    .registers 3

    .prologue
    .line 28576
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

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

.method public hasOwnerId()Z
    .registers 3

    .prologue
    .line 28315
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

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

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 28423
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

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

.method public hasRegistrationType()Z
    .registers 3

    .prologue
    .line 28291
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

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

.method public hasToken()Z
    .registers 3

    .prologue
    .line 28495
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

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

.method public hasVerification()Z
    .registers 3

    .prologue
    .line 28351
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 28175
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28016
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 28016
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28016
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28183
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 28184
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_ac

    .line 28189
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 28191
    :sswitch_d
    return-object p0

    .line 28196
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 28197
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    move-result-object v2

    .line 28198
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;
    if-eqz v2, :cond_0

    .line 28199
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28200
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->deviceType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    goto :goto_0

    .line 28205
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28206
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->token_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 28210
    :sswitch_2e
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28211
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->ownerId_:Ljava/lang/Object;

    goto :goto_0

    .line 28215
    :sswitch_3b
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28216
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->verification_:Ljava/lang/Object;

    goto :goto_0

    .line 28220
    :sswitch_48
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28221
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    goto :goto_0

    .line 28225
    :sswitch_55
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28226
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    goto :goto_0

    .line 28230
    :sswitch_62
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28231
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->appId_:Ljava/lang/Object;

    goto :goto_0

    .line 28235
    :sswitch_6f
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28236
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->oldToken_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 28240
    :sswitch_7c
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28241
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->androidRegistrationId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 28245
    :sswitch_8a
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28246
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->androidId_:J

    goto/16 :goto_0

    .line 28250
    :sswitch_98
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 28251
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    move-result-object v2

    .line 28252
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;
    if-eqz v2, :cond_0

    .line 28253
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28254
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->registrationType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    goto/16 :goto_0

    .line 28184
    :sswitch_data_ac
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x22 -> :sswitch_3b
        0x2a -> :sswitch_48
        0x32 -> :sswitch_55
        0x3a -> :sswitch_62
        0x42 -> :sswitch_6f
        0x4a -> :sswitch_7c
        0x50 -> :sswitch_8a
        0x58 -> :sswitch_98
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 28137
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 28171
    :cond_6
    :goto_6
    return-object p0

    .line 28138
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->hasDeviceType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 28139
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDeviceType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setDeviceType(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    .line 28141
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->hasRegistrationType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 28142
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getRegistrationType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setRegistrationType(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    .line 28144
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->hasOwnerId()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 28145
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setOwnerId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    .line 28147
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->hasVerification()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 28148
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getVerification()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setVerification(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    .line 28150
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->hasLocale()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 28151
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setLocale(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    .line 28153
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 28154
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    .line 28156
    :cond_55
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 28157
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setAppId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    .line 28159
    :cond_62
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 28160
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setToken(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    .line 28162
    :cond_6f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->hasAndroidId()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 28163
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getAndroidId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setAndroidId(J)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    .line 28165
    :cond_7c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->hasAndroidRegistrationId()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 28166
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getAndroidRegistrationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setAndroidRegistrationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    .line 28168
    :cond_89
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->hasOldToken()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28169
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getOldToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->setOldToken(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    goto/16 :goto_6
.end method

.method public setAndroidId(J)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 28525
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28526
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->androidId_:J

    .line 28528
    return-object p0
.end method

.method public setAndroidRegistrationId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28553
    if-nez p1, :cond_8

    .line 28554
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28556
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28557
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->androidRegistrationId_:Ljava/lang/Object;

    .line 28559
    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28472
    if-nez p1, :cond_8

    .line 28473
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28475
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28476
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->appId_:Ljava/lang/Object;

    .line 28478
    return-object p0
.end method

.method public setDeviceType(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28273
    if-nez p1, :cond_8

    .line 28274
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28276
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28277
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->deviceType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    .line 28279
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28400
    if-nez p1, :cond_8

    .line 28401
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28403
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28404
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->locale_:Ljava/lang/Object;

    .line 28406
    return-object p0
.end method

.method public setOldToken(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28582
    if-nez p1, :cond_8

    .line 28583
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28585
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28586
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->oldToken_:Lcom/google/protobuf/ByteString;

    .line 28588
    return-object p0
.end method

.method public setOwnerId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28328
    if-nez p1, :cond_8

    .line 28329
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28331
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28332
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->ownerId_:Ljava/lang/Object;

    .line 28334
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28436
    if-nez p1, :cond_8

    .line 28437
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28439
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28440
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 28442
    return-object p0
.end method

.method public setRegistrationType(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28297
    if-nez p1, :cond_8

    .line 28298
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28300
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28301
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->registrationType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    .line 28303
    return-object p0
.end method

.method public setToken(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28501
    if-nez p1, :cond_8

    .line 28502
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28504
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28505
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->token_:Lcom/google/protobuf/ByteString;

    .line 28507
    return-object p0
.end method

.method public setVerification(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28364
    if-nez p1, :cond_8

    .line 28365
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28367
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->bitField0_:I

    .line 28368
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->verification_:Ljava/lang/Object;

    .line 28370
    return-object p0
.end method
