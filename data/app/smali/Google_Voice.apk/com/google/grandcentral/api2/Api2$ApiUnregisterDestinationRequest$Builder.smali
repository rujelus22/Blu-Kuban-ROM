.class public final Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 38693
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 38793
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 38846
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 38694
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 38695
    return-void
.end method

.method static synthetic access$46500()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 1

    .prologue
    .line 38688
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 1

    .prologue
    .line 38700
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 38698
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    .registers 3

    .prologue
    .line 38721
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    move-result-object v0

    .line 38722
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 38723
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 38725
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38688
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    .registers 6

    .prologue
    .line 38729
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 38730
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    .line 38731
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 38732
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 38733
    or-int/lit8 v2, v2, 0x1

    .line 38735
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->access$46702(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38736
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 38737
    or-int/lit8 v2, v2, 0x2

    .line 38739
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->access$46802(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 38740
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->access$46902(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;I)I

    .line 38741
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38688
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 2

    .prologue
    .line 38704
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 38705
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 38706
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    .line 38707
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 38708
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    .line 38709
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 38688
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38688
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 2

    .prologue
    .line 38829
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    .line 38830
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 38832
    return-object p0
.end method

.method public clearDestination()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 2

    .prologue
    .line 38882
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 38884
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    .line 38885
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 3

    .prologue
    .line 38713
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 38688
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 38688
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38688
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

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
    .line 38688
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 38798
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 38799
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 38800
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 38801
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 38804
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
    .line 38809
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 38810
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 38811
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 38813
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 38816
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    .registers 2

    .prologue
    .line 38717
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 38688
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38688
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDestination()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 2

    .prologue
    .line 38851
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 38795
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

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
    .line 38848
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

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

    .line 38758
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->hasClientLoginToken()Z

    move-result v1

    if-nez v1, :cond_8

    .line 38770
    :cond_7
    :goto_7
    return v0

    .line 38762
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->hasDestination()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 38766
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->getDestination()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 38770
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeDestination(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 38870
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 38872
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 38878
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    .line 38879
    return-object p0

    .line 38875
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    goto :goto_1f
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 38745
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 38754
    :cond_6
    :goto_6
    return-object p0

    .line 38746
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 38747
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    .line 38748
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->access$46700(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 38751
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->hasDestination()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38752
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->getDestination()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->mergeDestination(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38777
    const/4 v2, 0x0

    .line 38779
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 38784
    if-eqz v2, :cond_10

    .line 38785
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    .line 38788
    :cond_10
    return-object p0

    .line 38780
    :catch_11
    move-exception v1

    .line 38781
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    move-object v2, v0

    .line 38782
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 38784
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 38785
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

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
    .line 38688
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 38688
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

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
    .line 38688
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38820
    if-nez p1, :cond_8

    .line 38821
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38823
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    .line 38824
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 38826
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38836
    if-nez p1, :cond_8

    .line 38837
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38839
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    .line 38840
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 38842
    return-object p0
.end method

.method public setDestination(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 38864
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 38866
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    .line 38867
    return-object p0
.end method

.method public setDestination(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38854
    if-nez p1, :cond_8

    .line 38855
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38857
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 38859
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->bitField0_:I

    .line 38860
    return-object p0
.end method
