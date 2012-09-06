.class public final Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private createNewAccount_:Z

.field private pin_:Ljava/lang/Object;

.field private timezone_:Ljava/lang/Object;

.field private verificationToken_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 28675
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 28804
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 28857
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28931
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->pin_:Ljava/lang/Object;

    .line 28984
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 28676
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->maybeForceBuilderInitialization()V

    .line 28677
    return-void
.end method

.method static synthetic access$34100()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 1

    .prologue
    .line 28670
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 1

    .prologue
    .line 28682
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 28680
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    .registers 3

    .prologue
    .line 28709
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    move-result-object v0

    .line 28710
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 28711
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 28713
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28670
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    .registers 6

    .prologue
    .line 28717
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 28718
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28719
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 28720
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 28721
    or-int/lit8 v2, v2, 0x1

    .line 28723
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->access$34302(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28724
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 28725
    or-int/lit8 v2, v2, 0x2

    .line 28727
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->verificationToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->verificationToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->access$34402(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28728
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 28729
    or-int/lit8 v2, v2, 0x4

    .line 28731
    :cond_28
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->createNewAccount_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->createNewAccount_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->access$34502(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;Z)Z

    .line 28732
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 28733
    or-int/lit8 v2, v2, 0x8

    .line 28735
    :cond_35
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->pin_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->pin_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->access$34602(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28736
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 28737
    or-int/lit8 v2, v2, 0x10

    .line 28739
    :cond_42
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->timezone_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->timezone_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->access$34702(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28740
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->access$34802(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;I)I

    .line 28741
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28670
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 2

    .prologue
    .line 28686
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 28687
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 28688
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28689
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28690
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->createNewAccount_:Z

    .line 28692
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28693
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->pin_:Ljava/lang/Object;

    .line 28694
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28695
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 28696
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28697
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28670
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28670
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 2

    .prologue
    .line 28840
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28841
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 28843
    return-object p0
.end method

.method public clearCreateNewAccount()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 2

    .prologue
    .line 28924
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28925
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->createNewAccount_:Z

    .line 28927
    return-object p0
.end method

.method public clearPin()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 2

    .prologue
    .line 28967
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28968
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getPin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->pin_:Ljava/lang/Object;

    .line 28970
    return-object p0
.end method

.method public clearTimezone()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 2

    .prologue
    .line 29020
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 29021
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getTimezone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 29023
    return-object p0
.end method

.method public clearVerificationToken()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 2

    .prologue
    .line 28893
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28894
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getVerificationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28896
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 3

    .prologue
    .line 28701
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 28670
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28670
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28670
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

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
    .line 28670
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28809
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 28810
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28811
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28812
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 28815
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

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28820
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 28821
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 28822
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28824
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 28827
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
    .line 28915
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->createNewAccount_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    .registers 2

    .prologue
    .line 28705
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 28670
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28670
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28936
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->pin_:Ljava/lang/Object;

    .line 28937
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28938
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28939
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->pin_:Ljava/lang/Object;

    .line 28942
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

.method public getPinBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28947
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->pin_:Ljava/lang/Object;

    .line 28948
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 28949
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28951
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->pin_:Ljava/lang/Object;

    .line 28954
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

.method public getTimezone()Ljava/lang/String;
    .registers 4

    .prologue
    .line 28989
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 28990
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28991
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28992
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 28995
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

.method public getTimezoneBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 29000
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 29001
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 29002
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 29004
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 29007
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
    .registers 4

    .prologue
    .line 28862
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28863
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 28864
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 28865
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28868
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

.method public getVerificationTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 28873
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28874
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 28875
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 28877
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28880
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

    .line 28806
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

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
    .line 28912
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

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
    .line 28933
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

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
    .line 28986
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

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
    .line 28859
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 28773
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->hasClientLoginToken()Z

    move-result v1

    if-nez v1, :cond_8

    .line 28781
    :cond_7
    :goto_7
    return v0

    .line 28777
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->hasVerificationToken()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 28781
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 28745
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 28769
    :cond_6
    :goto_6
    return-object p0

    .line 28746
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 28747
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28748
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->access$34300(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 28751
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->hasVerificationToken()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 28752
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28753
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->verificationToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->access$34400(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28756
    :cond_2b
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->hasCreateNewAccount()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 28757
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->getCreateNewAccount()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->setCreateNewAccount(Z)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    .line 28759
    :cond_38
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->hasPin()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 28760
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28761
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->pin_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->access$34600(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->pin_:Ljava/lang/Object;

    .line 28764
    :cond_4a
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28765
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28766
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->timezone_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->access$34700(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->timezone_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28788
    const/4 v2, 0x0

    .line 28790
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 28795
    if-eqz v2, :cond_10

    .line 28796
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    .line 28799
    :cond_10
    return-object p0

    .line 28791
    :catch_11
    move-exception v1

    .line 28792
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    move-object v2, v0

    .line 28793
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 28795
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 28796
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    :cond_21
    throw v3
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
    .line 28670
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 28670
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

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
    .line 28670
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28831
    if-nez p1, :cond_8

    .line 28832
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28834
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28835
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 28837
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28847
    if-nez p1, :cond_8

    .line 28848
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28850
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28851
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 28853
    return-object p0
.end method

.method public setCreateNewAccount(Z)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28918
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28919
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->createNewAccount_:Z

    .line 28921
    return-object p0
.end method

.method public setPin(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28958
    if-nez p1, :cond_8

    .line 28959
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28961
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28962
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->pin_:Ljava/lang/Object;

    .line 28964
    return-object p0
.end method

.method public setPinBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28974
    if-nez p1, :cond_8

    .line 28975
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28977
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28978
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->pin_:Ljava/lang/Object;

    .line 28980
    return-object p0
.end method

.method public setTimezone(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29011
    if-nez p1, :cond_8

    .line 29012
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29014
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 29015
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 29017
    return-object p0
.end method

.method public setTimezoneBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29027
    if-nez p1, :cond_8

    .line 29028
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29030
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 29031
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->timezone_:Ljava/lang/Object;

    .line 29033
    return-object p0
.end method

.method public setVerificationToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28884
    if-nez p1, :cond_8

    .line 28885
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28887
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28888
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28890
    return-object p0
.end method

.method public setVerificationTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28900
    if-nez p1, :cond_8

    .line 28901
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28903
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->bitField0_:I

    .line 28904
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConfirmVerifiedViaSmsRequest$Builder;->verificationToken_:Ljava/lang/Object;

    .line 28906
    return-object p0
.end method
