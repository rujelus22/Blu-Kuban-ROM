.class public final Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceRegistrationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;,
        Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

.field private static final serialVersionUID:J


# instance fields
.field private androidId_:J

.field private androidRegistrationId_:Ljava/lang/Object;

.field private appId_:Ljava/lang/Object;

.field private bitField0_:I

.field private deviceType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

.field private locale_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private oldToken_:Lcom/google/protobuf/ByteString;

.field private ownerId_:Ljava/lang/Object;

.field private phoneNumber_:Ljava/lang/Object;

.field private registrationType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

.field private token_:Lcom/google/protobuf/ByteString;

.field private verification_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28601
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    .line 28602
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->initFields()V

    .line 28603
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 27480
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 27834
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->memoizedIsInitialized:B

    .line 27881
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->memoizedSerializedSize:I

    .line 27481
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27475
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 27482
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 27834
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->memoizedIsInitialized:B

    .line 27881
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->memoizedSerializedSize:I

    .line 27482
    return-void
.end method

.method static synthetic access$37702(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27475
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->deviceType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    return-object p1
.end method

.method static synthetic access$37802(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27475
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->registrationType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    return-object p1
.end method

.method static synthetic access$37902(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27475
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->ownerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$38002(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27475
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->verification_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$38102(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27475
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->locale_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$38202(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27475
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->phoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$38302(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27475
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->appId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$38402(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27475
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->token_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$38502(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27475
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->androidId_:J

    return-wide p1
.end method

.method static synthetic access$38602(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27475
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->androidRegistrationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$38702(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27475
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->oldToken_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$38802(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27475
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    return p1
.end method

.method private getAndroidRegistrationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27800
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->androidRegistrationId_:Ljava/lang/Object;

    .line 27801
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27802
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27804
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->androidRegistrationId_:Ljava/lang/Object;

    .line 27807
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

.method private getAppIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27748
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->appId_:Ljava/lang/Object;

    .line 27749
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27750
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27752
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->appId_:Ljava/lang/Object;

    .line 27755
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

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 1

    .prologue
    .line 27486
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    return-object v0
.end method

.method private getLocaleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27684
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->locale_:Ljava/lang/Object;

    .line 27685
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27686
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27688
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->locale_:Ljava/lang/Object;

    .line 27691
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

.method private getOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27620
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->ownerId_:Ljava/lang/Object;

    .line 27621
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27622
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27624
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->ownerId_:Ljava/lang/Object;

    .line 27627
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

.method private getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27716
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->phoneNumber_:Ljava/lang/Object;

    .line 27717
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27718
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27720
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->phoneNumber_:Ljava/lang/Object;

    .line 27723
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

.method private getVerificationBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27652
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->verification_:Ljava/lang/Object;

    .line 27653
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27654
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27656
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->verification_:Ljava/lang/Object;

    .line 27659
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

.method private initFields()V
    .registers 3

    .prologue
    .line 27822
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->ANDROID:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->deviceType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    .line 27823
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->REGISTER:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->registrationType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    .line 27824
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->ownerId_:Ljava/lang/Object;

    .line 27825
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->verification_:Ljava/lang/Object;

    .line 27826
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->locale_:Ljava/lang/Object;

    .line 27827
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->phoneNumber_:Ljava/lang/Object;

    .line 27828
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->appId_:Ljava/lang/Object;

    .line 27829
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->token_:Lcom/google/protobuf/ByteString;

    .line 27830
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->androidId_:J

    .line 27831
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->androidRegistrationId_:Ljava/lang/Object;

    .line 27832
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->oldToken_:Lcom/google/protobuf/ByteString;

    .line 27833
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 1

    .prologue
    .line 28009
    #calls: Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->access$37500()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 28012
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAndroidId()J
    .registers 3

    .prologue
    .line 27776
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->androidId_:J

    return-wide v0
.end method

.method public getAndroidRegistrationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 27786
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->androidRegistrationId_:Ljava/lang/Object;

    .line 27787
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 27788
    check-cast v1, Ljava/lang/String;

    .line 27796
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 27790
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27792
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27793
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 27794
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->androidRegistrationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 27796
    goto :goto_8
.end method

.method public getAppId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 27734
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->appId_:Ljava/lang/Object;

    .line 27735
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 27736
    check-cast v1, Ljava/lang/String;

    .line 27744
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 27738
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27740
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27741
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 27742
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->appId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 27744
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27475
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;
    .registers 2

    .prologue
    .line 27490
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;

    return-object v0
.end method

.method public getDeviceType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;
    .registers 2

    .prologue
    .line 27586
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->deviceType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 5

    .prologue
    .line 27670
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->locale_:Ljava/lang/Object;

    .line 27671
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 27672
    check-cast v1, Ljava/lang/String;

    .line 27680
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 27674
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27676
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27677
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 27678
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->locale_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 27680
    goto :goto_8
.end method

.method public getOldToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 27818
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->oldToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 27606
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->ownerId_:Ljava/lang/Object;

    .line 27607
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 27608
    check-cast v1, Ljava/lang/String;

    .line 27616
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 27610
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27612
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27613
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 27614
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->ownerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 27616
    goto :goto_8
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 27702
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->phoneNumber_:Ljava/lang/Object;

    .line 27703
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 27704
    check-cast v1, Ljava/lang/String;

    .line 27712
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 27706
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27708
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27709
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 27710
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->phoneNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 27712
    goto :goto_8
.end method

.method public getRegistrationType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;
    .registers 2

    .prologue
    .line 27596
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->registrationType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 27883
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->memoizedSerializedSize:I

    .line 27884
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 27932
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 27886
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 27887
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1e

    .line 27888
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->deviceType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 27891
    :cond_1e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_2d

    .line 27892
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->token_:Lcom/google/protobuf/ByteString;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27895
    :cond_2d
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v4, :cond_3d

    .line 27896
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27899
    :cond_3d
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4c

    .line 27900
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getVerificationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27903
    :cond_4c
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5e

    .line 27904
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27907
    :cond_5e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_70

    .line 27908
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27911
    :cond_70
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_82

    .line 27912
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27915
    :cond_82
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_91

    .line 27916
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->oldToken_:Lcom/google/protobuf/ByteString;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27919
    :cond_91
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a4

    .line 27920
    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getAndroidRegistrationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27923
    :cond_a4
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_b5

    .line 27924
    const/16 v2, 0xa

    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->androidId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 27927
    :cond_b5
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_c8

    .line 27928
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->registrationType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 27931
    :cond_c8
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 27932
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 27766
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->token_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVerification()Ljava/lang/String;
    .registers 5

    .prologue
    .line 27638
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->verification_:Ljava/lang/Object;

    .line 27639
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 27640
    check-cast v1, Ljava/lang/String;

    .line 27648
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 27642
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27644
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27645
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 27646
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->verification_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 27648
    goto :goto_8
.end method

.method public hasAndroidId()Z
    .registers 3

    .prologue
    .line 27773
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

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
    .line 27783
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

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
    .line 27731
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

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

    .line 27583
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

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
    .line 27667
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

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
    .line 27815
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

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
    .line 27603
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

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
    .line 27699
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

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
    .line 27593
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

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
    .line 27763
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

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
    .line 27635
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 27836
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->memoizedIsInitialized:B

    .line 27837
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 27840
    :goto_8
    return v1

    .line 27837
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 27839
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27475
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 2

    .prologue
    .line 28010
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27475
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;
    .registers 2

    .prologue
    .line 28014
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;)Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$Builder;

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
    .line 27939
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

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 27845
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getSerializedSize()I

    .line 27846
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_17

    .line 27847
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->deviceType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$DeviceType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 27849
    :cond_17
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_24

    .line 27850
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->token_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27852
    :cond_24
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v2, :cond_32

    .line 27853
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27855
    :cond_32
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3f

    .line 27856
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getVerificationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27858
    :cond_3f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4f

    .line 27859
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27861
    :cond_4f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5f

    .line 27862
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27864
    :cond_5f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6f

    .line 27865
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27867
    :cond_6f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_7c

    .line 27868
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->oldToken_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27870
    :cond_7c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_8d

    .line 27871
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->getAndroidRegistrationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27873
    :cond_8d
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_9c

    .line 27874
    const/16 v0, 0xa

    iget-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->androidId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 27876
    :cond_9c
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_ad

    .line 27877
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest;->registrationType_:Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceRegistrationRequest$RegistrationType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 27879
    :cond_ad
    return-void
.end method
