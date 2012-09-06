.class public final Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiCheckinRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiCheckinRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

.field private reason_:I

.field private token_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 39640
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 39764
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 39817
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 39881
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->token_:Ljava/lang/Object;

    .line 39641
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->maybeForceBuilderInitialization()V

    .line 39642
    return-void
.end method

.method static synthetic access$47600()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 1

    .prologue
    .line 39635
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 1

    .prologue
    .line 39647
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 39645
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    .registers 3

    .prologue
    .line 39672
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    move-result-object v0

    .line 39673
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 39674
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 39676
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39635
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    .registers 6

    .prologue
    .line 39680
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 39681
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39682
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 39683
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 39684
    or-int/lit8 v2, v2, 0x1

    .line 39686
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->access$47802(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39687
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 39688
    or-int/lit8 v2, v2, 0x2

    .line 39690
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->access$47902(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 39691
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 39692
    or-int/lit8 v2, v2, 0x4

    .line 39694
    :cond_28
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->reason_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->reason_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->access$48002(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;I)I

    .line 39695
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 39696
    or-int/lit8 v2, v2, 0x8

    .line 39698
    :cond_35
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->token_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->token_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->access$48102(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39699
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->access$48202(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;I)I

    .line 39700
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39635
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 2

    .prologue
    .line 39651
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 39652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 39653
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39654
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 39655
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39656
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->reason_:I

    .line 39657
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39658
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->token_:Ljava/lang/Object;

    .line 39659
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39660
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 39635
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39635
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 2

    .prologue
    .line 39800
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39801
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 39803
    return-object p0
.end method

.method public clearDestination()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 2

    .prologue
    .line 39853
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 39855
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39856
    return-object p0
.end method

.method public clearReason()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 2

    .prologue
    .line 39874
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39875
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->reason_:I

    .line 39877
    return-object p0
.end method

.method public clearToken()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 2

    .prologue
    .line 39917
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39918
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->token_:Ljava/lang/Object;

    .line 39920
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 3

    .prologue
    .line 39664
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 39635
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 39635
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39635
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

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
    .line 39635
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 39769
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 39770
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 39771
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 39772
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 39775
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
    .line 39780
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 39781
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 39782
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 39784
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 39787
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    .registers 2

    .prologue
    .line 39668
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 39635
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39635
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDestination()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 2

    .prologue
    .line 39822
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method

.method public getReason()I
    .registers 2

    .prologue
    .line 39865
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->reason_:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 39886
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->token_:Ljava/lang/Object;

    .line 39887
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 39888
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 39889
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->token_:Ljava/lang/Object;

    .line 39892
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

.method public getTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 39897
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->token_:Ljava/lang/Object;

    .line 39898
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 39899
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 39901
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->token_:Ljava/lang/Object;

    .line 39904
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

    .line 39766
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasDestination()Z
    .registers 3

    .prologue
    .line 39819
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

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

.method public hasReason()Z
    .registers 3

    .prologue
    .line 39862
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

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

.method public hasToken()Z
    .registers 3

    .prologue
    .line 39883
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 39725
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->hasClientLoginToken()Z

    move-result v1

    if-nez v1, :cond_8

    .line 39741
    :cond_7
    :goto_7
    return v0

    .line 39729
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->hasDestination()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 39733
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 39737
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->getDestination()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 39741
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeDestination(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 39841
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 39843
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 39849
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39850
    return-object p0

    .line 39846
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    goto :goto_1f
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 39704
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 39721
    :cond_6
    :goto_6
    return-object p0

    .line 39705
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 39706
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39707
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->access$47800(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 39710
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->hasDestination()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 39711
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->getDestination()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->mergeDestination(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    .line 39713
    :cond_26
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 39714
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->setReason(I)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    .line 39716
    :cond_33
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39717
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39718
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->token_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->access$48100(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->token_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39748
    const/4 v2, 0x0

    .line 39750
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 39755
    if-eqz v2, :cond_10

    .line 39756
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    .line 39759
    :cond_10
    return-object p0

    .line 39751
    :catch_11
    move-exception v1

    .line 39752
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    move-object v2, v0

    .line 39753
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 39755
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 39756
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

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
    .line 39635
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 39635
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

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
    .line 39635
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39791
    if-nez p1, :cond_8

    .line 39792
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39794
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39795
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 39797
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39807
    if-nez p1, :cond_8

    .line 39808
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39810
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39811
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 39813
    return-object p0
.end method

.method public setDestination(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 39835
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 39837
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39838
    return-object p0
.end method

.method public setDestination(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39825
    if-nez p1, :cond_8

    .line 39826
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39828
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 39830
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39831
    return-object p0
.end method

.method public setReason(I)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39868
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39869
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->reason_:I

    .line 39871
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39908
    if-nez p1, :cond_8

    .line 39909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39911
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39912
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->token_:Ljava/lang/Object;

    .line 39914
    return-object p0
.end method

.method public setTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39924
    if-nez p1, :cond_8

    .line 39925
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39927
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->bitField0_:I

    .line 39928
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->token_:Ljava/lang/Object;

    .line 39930
    return-object p0
.end method
