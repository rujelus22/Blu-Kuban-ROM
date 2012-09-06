.class public final Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

.field private bitField0_:I

.field private device_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private userExists_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 39416
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 39589
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 39613
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 39656
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->EVERYONE:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 39701
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    .line 39417
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->maybeForceBuilderInitialization()V

    .line 39418
    return-void
.end method

.method static synthetic access$54400()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 1

    .prologue
    .line 39411
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 1

    .prologue
    .line 39423
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDeviceIsMutable()V
    .registers 3

    .prologue
    .line 39704
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 39705
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    .line 39706
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39708
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 39421
    return-void
.end method


# virtual methods
.method public addAllDevice(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 39771
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->ensureDeviceIsMutable()V

    .line 39772
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 39774
    return-object p0
.end method

.method public addDevice(ILcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 39764
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->ensureDeviceIsMutable()V

    .line 39765
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 39767
    return-object p0
.end method

.method public addDevice(ILcom/google/wireless/realtimechat/proto/Client$DeviceInfo;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 39747
    if-nez p2, :cond_8

    .line 39748
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39750
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->ensureDeviceIsMutable()V

    .line 39751
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 39753
    return-object p0
.end method

.method public addDevice(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 39757
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->ensureDeviceIsMutable()V

    .line 39758
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39760
    return-object p0
.end method

.method public addDevice(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39737
    if-nez p1, :cond_8

    .line 39738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39740
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->ensureDeviceIsMutable()V

    .line 39741
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39743
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    .registers 3

    .prologue
    .line 39450
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    .line 39451
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 39452
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 39454
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    .registers 6

    .prologue
    .line 39468
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 39469
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39470
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 39471
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 39472
    or-int/lit8 v2, v2, 0x1

    .line 39474
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->access$54602(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 39475
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 39476
    or-int/lit8 v2, v2, 0x2

    .line 39478
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->access$54702(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 39479
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 39480
    or-int/lit8 v2, v2, 0x4

    .line 39482
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->access$54802(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 39483
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 39484
    or-int/lit8 v2, v2, 0x8

    .line 39486
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->userExists_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->userExists_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->access$54902(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;Z)Z

    .line 39487
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 39488
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    .line 39489
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39491
    :cond_50
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->device_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->access$55002(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;Ljava/util/List;)Ljava/util/List;

    .line 39492
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->access$55102(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;I)I

    .line 39493
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 39411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 2

    .prologue
    .line 39427
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 39428
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 39429
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39430
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 39431
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39432
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->EVERYONE:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 39433
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->userExists_:Z

    .line 39435
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39436
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    .line 39437
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39438
    return-object p0
.end method

.method public clearAcl()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 2

    .prologue
    .line 39673
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39674
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->EVERYONE:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 39676
    return-object p0
.end method

.method public clearDevice()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 2

    .prologue
    .line 39777
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    .line 39778
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39780
    return-object p0
.end method

.method public clearParticipant()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 2

    .prologue
    .line 39649
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 39651
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39652
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 2

    .prologue
    .line 39606
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39607
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 39609
    return-object p0
.end method

.method public clearUserExists()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 2

    .prologue
    .line 39694
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->userExists_:Z

    .line 39697
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 39411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 39411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 3

    .prologue
    .line 39442
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

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
    .line 39411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAcl()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
    .registers 2

    .prologue
    .line 39661
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 39411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39411
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    .registers 2

    .prologue
    .line 39446
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDevice(I)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;
    .registers 3
    .parameter "index"

    .prologue
    .line 39717
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    return-object v0
.end method

.method public getDeviceCount()I
    .registers 2

    .prologue
    .line 39714
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDeviceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39711
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParticipant()Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 2

    .prologue
    .line 39618
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 39594
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getUserExists()Z
    .registers 2

    .prologue
    .line 39685
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->userExists_:Z

    return v0
.end method

.method public hasAcl()Z
    .registers 3

    .prologue
    .line 39658
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

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

.method public hasParticipant()Z
    .registers 3

    .prologue
    .line 39615
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

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

    .line 39591
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUserExists()Z
    .registers 3

    .prologue
    .line 39682
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

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
    .line 39524
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
    .line 39411
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 39411
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

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
    .line 39411
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39532
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 39533
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_6c

    .line 39538
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 39540
    :sswitch_d
    return-object p0

    .line 39545
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v1

    .line 39546
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->hasParticipant()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 39547
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->getParticipant()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 39549
    :cond_1f
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 39550
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->setParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    goto :goto_0

    .line 39554
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 39555
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    move-result-object v3

    .line 39556
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
    if-eqz v3, :cond_0

    .line 39557
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39558
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    goto :goto_0

    .line 39563
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
    :sswitch_3d
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39564
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->userExists_:Z

    goto :goto_0

    .line 39568
    :sswitch_4a
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;

    move-result-object v1

    .line 39569
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 39570
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->addDevice(Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    goto :goto_0

    .line 39574
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;
    :sswitch_59
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 39575
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v3

    .line 39576
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v3, :cond_0

    .line 39577
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39578
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 39533
    :sswitch_data_6c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_2a
        0x18 -> :sswitch_3d
        0x22 -> :sswitch_4a
        0x28 -> :sswitch_59
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 39497
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 39520
    :cond_6
    :goto_6
    return-object p0

    .line 39498
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 39499
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    .line 39501
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->hasParticipant()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 39502
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getParticipant()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->mergeParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    .line 39504
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->hasAcl()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 39505
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getAcl()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->setAcl(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    .line 39507
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->hasUserExists()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 39508
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getUserExists()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->setUserExists(Z)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    .line 39510
    :cond_3b
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->device_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->access$55000(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 39511
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 39512
    #getter for: Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->device_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->access$55000(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    .line 39513
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 39515
    :cond_5a
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->ensureDeviceIsMutable()V

    .line 39516
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->device_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->access$55000(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 39637
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 39639
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 39645
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39646
    return-object p0

    .line 39642
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    goto :goto_1f
.end method

.method public setAcl(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39664
    if-nez p1, :cond_8

    .line 39665
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39667
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39668
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 39670
    return-object p0
.end method

.method public setDevice(ILcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 39731
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->ensureDeviceIsMutable()V

    .line 39732
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39734
    return-object p0
.end method

.method public setDevice(ILcom/google/wireless/realtimechat/proto/Client$DeviceInfo;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 39721
    if-nez p2, :cond_8

    .line 39722
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39724
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->ensureDeviceIsMutable()V

    .line 39725
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->device_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39727
    return-object p0
.end method

.method public setParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 39631
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 39633
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39634
    return-object p0
.end method

.method public setParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39621
    if-nez p1, :cond_8

    .line 39622
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39624
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 39626
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39627
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39597
    if-nez p1, :cond_8

    .line 39598
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39600
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39601
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 39603
    return-object p0
.end method

.method public setUserExists(Z)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39688
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->bitField0_:I

    .line 39689
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->userExists_:Z

    .line 39691
    return-object p0
.end method
