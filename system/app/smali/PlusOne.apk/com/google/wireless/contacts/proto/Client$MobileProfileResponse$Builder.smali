.class public final Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileProfileResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;",
        "Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$MobileProfileResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

.field private bitField0_:I

.field private contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

.field private key_:Ljava/lang/Object;

.field private ownerGaiaId_:Ljava/lang/Object;

.field private profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

.field private serverTime_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 6539
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6723
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 6780
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->key_:Ljava/lang/Object;

    .line 6816
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    .line 6859
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    .line 6902
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 6540
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->maybeForceBuilderInitialization()V

    .line 6541
    return-void
.end method

.method static synthetic access$8100(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6534
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8200()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 1

    .prologue
    .line 6534
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6584
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    .line 6585
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 6586
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 6589
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 1

    .prologue
    .line 6546
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 6544
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    .registers 3

    .prologue
    .line 6575
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    .line 6576
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 6577
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6579
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6534
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    .registers 6

    .prologue
    .line 6593
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 6594
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6595
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6596
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 6597
    or-int/lit8 v2, v2, 0x1

    .line 6599
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->ownerGaiaId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->access$8402(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6600
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 6601
    or-int/lit8 v2, v2, 0x2

    .line 6603
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->serverTime_:J

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->serverTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->access$8502(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;J)J

    .line 6604
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 6605
    or-int/lit8 v2, v2, 0x4

    .line 6607
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->key_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->key_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->access$8602(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6608
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 6609
    or-int/lit8 v2, v2, 0x8

    .line 6611
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->access$8702(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    .line 6612
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 6613
    or-int/lit8 v2, v2, 0x10

    .line 6615
    :cond_42
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->access$8802(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;Lcom/google/wireless/contacts/proto/Client$MobileAlbums;)Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    .line 6616
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 6617
    or-int/lit8 v2, v2, 0x20

    .line 6619
    :cond_4f
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->access$8902(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 6620
    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->access$9002(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;I)I

    .line 6621
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6534
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6534
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 3

    .prologue
    .line 6550
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6551
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 6552
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6553
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->serverTime_:J

    .line 6554
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6555
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->key_:Ljava/lang/Object;

    .line 6556
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6557
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    .line 6558
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6559
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    .line 6560
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6561
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 6562
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6563
    return-object p0
.end method

.method public clearAlbums()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6895
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    .line 6897
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6898
    return-object p0
.end method

.method public clearContact()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 2

    .prologue
    .line 6938
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 6940
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6941
    return-object p0
.end method

.method public clearKey()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 2

    .prologue
    .line 6804
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6805
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->key_:Ljava/lang/Object;

    .line 6807
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 2

    .prologue
    .line 6747
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6748
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getOwnerGaiaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 6750
    return-object p0
.end method

.method public clearProfile()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 2

    .prologue
    .line 6852
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    .line 6854
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6855
    return-object p0
.end method

.method public clearServerTime()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 3

    .prologue
    .line 6773
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6774
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->serverTime_:J

    .line 6776
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 6534
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6534
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 3

    .prologue
    .line 6567
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

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
    .line 6534
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlbums()Lcom/google/wireless/contacts/proto/Client$MobileAlbums;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6864
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    return-object v0
.end method

.method public getContact()Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 2

    .prologue
    .line 6907
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 6534
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6534
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    .registers 2

    .prologue
    .line 6571
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6785
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->key_:Ljava/lang/Object;

    .line 6786
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 6787
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6788
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->key_:Ljava/lang/Object;

    .line 6791
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

.method public getOwnerGaiaId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 6728
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 6729
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 6730
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 6731
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 6734
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

.method public getProfile()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 2

    .prologue
    .line 6821
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    return-object v0
.end method

.method public getServerTime()J
    .registers 3

    .prologue
    .line 6764
    iget-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->serverTime_:J

    return-wide v0
.end method

.method public hasAlbums()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6861
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

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

.method public hasContact()Z
    .registers 3

    .prologue
    .line 6904
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

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

.method public hasKey()Z
    .registers 3

    .prologue
    .line 6782
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6725
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasProfile()Z
    .registers 3

    .prologue
    .line 6818
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

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

.method public hasServerTime()Z
    .registers 3

    .prologue
    .line 6761
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

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

.method public mergeAlbums(Lcom/google/wireless/contacts/proto/Client$MobileAlbums;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 4
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6883
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 6885
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileAlbums;)Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileAlbums;)Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    .line 6891
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6892
    return-object p0

    .line 6888
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    goto :goto_20
.end method

.method public mergeContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6926
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 6928
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->newBuilder(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 6934
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6935
    return-object p0

    .line 6931
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    goto :goto_20
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
    .line 6534
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

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
    .line 6534
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6662
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 6663
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_8a

    .line 6668
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6670
    :sswitch_d
    return-object p0

    .line 6675
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6676
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    goto :goto_0

    .line 6680
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6681
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->serverTime_:J

    goto :goto_0

    .line 6685
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6686
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->key_:Ljava/lang/Object;

    goto :goto_0

    .line 6690
    :sswitch_35
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    .line 6691
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->hasProfile()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 6692
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->getProfile()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    .line 6694
    :cond_46
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6695
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->setProfile(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    goto :goto_0

    .line 6699
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;
    :sswitch_51
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;

    move-result-object v0

    .line 6700
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->hasAlbums()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 6701
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->getAlbums()Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileAlbums;)Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;

    .line 6703
    :cond_62
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6704
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->setAlbums(Lcom/google/wireless/contacts/proto/Client$MobileAlbums;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    goto :goto_0

    .line 6708
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;
    :sswitch_6d
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    .line 6709
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->hasContact()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 6710
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->getContact()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 6712
    :cond_7e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6713
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->setContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    goto/16 :goto_0

    .line 6663
    :sswitch_data_8a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_51
        0x32 -> :sswitch_6d
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 6625
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 6644
    :cond_6
    :goto_6
    return-object p0

    .line 6626
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6627
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getOwnerGaiaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->setOwnerGaiaId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    .line 6629
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->hasServerTime()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 6630
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getServerTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->setServerTime(J)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    .line 6632
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 6633
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->setKey(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    .line 6635
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->hasProfile()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 6636
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getProfile()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->mergeProfile(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    .line 6638
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->hasAlbums()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 6639
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getAlbums()Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->mergeAlbums(Lcom/google/wireless/contacts/proto/Client$MobileAlbums;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    .line 6641
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->hasContact()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6642
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getContact()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->mergeContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;

    goto :goto_6
.end method

.method public mergeProfile(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6840
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 6842
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile;->newBuilder(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    .line 6848
    :goto_20
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6849
    return-object p0

    .line 6845
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    goto :goto_20
.end method

.method public setAlbums(Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 3
    .parameter "builderForValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6877
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAlbums$Builder;->build()Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    .line 6879
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6880
    return-object p0
.end method

.method public setAlbums(Lcom/google/wireless/contacts/proto/Client$MobileAlbums;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 6867
    if-nez p1, :cond_8

    .line 6868
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6870
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->albums_:Lcom/google/wireless/contacts/proto/Client$MobileAlbums;

    .line 6872
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6873
    return-object p0
.end method

.method public setContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 6920
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 6922
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6923
    return-object p0
.end method

.method public setContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6910
    if-nez p1, :cond_8

    .line 6911
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6913
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 6915
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6916
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6795
    if-nez p1, :cond_8

    .line 6796
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6798
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6799
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->key_:Ljava/lang/Object;

    .line 6801
    return-object p0
.end method

.method public setOwnerGaiaId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6738
    if-nez p1, :cond_8

    .line 6739
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6741
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6742
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 6744
    return-object p0
.end method

.method public setProfile(Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 6834
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$MobileProfile$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    .line 6836
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6837
    return-object p0
.end method

.method public setProfile(Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 6824
    if-nez p1, :cond_8

    .line 6825
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6827
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->profile_:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    .line 6829
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6830
    return-object p0
.end method

.method public setServerTime(J)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 6767
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->bitField0_:I

    .line 6768
    iput-wide p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse$Builder;->serverTime_:J

    .line 6770
    return-object p0
.end method
