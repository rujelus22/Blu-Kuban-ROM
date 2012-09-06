.class public final Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;",
        "Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequestOrBuilder;"
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
    .line 37873
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 37973
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 38026
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 37874
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 37875
    return-void
.end method

.method static synthetic access$45400()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;
    .registers 1

    .prologue
    .line 37868
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;
    .registers 1

    .prologue
    .line 37880
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 37878
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;
    .registers 3

    .prologue
    .line 37901
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;

    move-result-object v0

    .line 37902
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 37903
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 37905
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37868
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;
    .registers 6

    .prologue
    .line 37909
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 37910
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    .line 37911
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 37912
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 37913
    or-int/lit8 v2, v2, 0x1

    .line 37915
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->access$45602(Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37916
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 37917
    or-int/lit8 v2, v2, 0x2

    .line 37919
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->access$45702(Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 37920
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->access$45802(Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;I)I

    .line 37921
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37868
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;
    .registers 2

    .prologue
    .line 37884
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 37885
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 37886
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    .line 37887
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 37888
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    .line 37889
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37868
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37868
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearClientLoginToken()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;
    .registers 2

    .prologue
    .line 38009
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    .line 38010
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->getClientLoginToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 38012
    return-object p0
.end method

.method public clearDestination()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;
    .registers 2

    .prologue
    .line 38062
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 38064
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    .line 38065
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;
    .registers 3

    .prologue
    .line 37893
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 37868
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 37868
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 37868
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

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
    .line 37868
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 37978
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 37979
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 37980
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 37981
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 37984
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
    .line 37989
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 37990
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 37991
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 37993
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 37996
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;
    .registers 2

    .prologue
    .line 37897
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 37868
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 37868
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDestination()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 2

    .prologue
    .line 38031
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 37975
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

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
    .line 38028
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

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

    .line 37938
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->hasClientLoginToken()Z

    move-result v1

    if-nez v1, :cond_8

    .line 37950
    :cond_7
    :goto_7
    return v0

    .line 37942
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->hasDestination()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 37946
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->getDestination()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 37950
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeDestination(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 38050
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 38052
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 38058
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    .line 38059
    return-object p0

    .line 38055
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    goto :goto_1f
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 37925
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 37934
    :cond_6
    :goto_6
    return-object p0

    .line 37926
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->hasClientLoginToken()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 37927
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    .line 37928
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->clientLoginToken_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->access$45600(Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 37931
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->hasDestination()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37932
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->getDestination()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->mergeDestination(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37957
    const/4 v2, 0x0

    .line 37959
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 37964
    if-eqz v2, :cond_10

    .line 37965
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    .line 37968
    :cond_10
    return-object p0

    .line 37960
    :catch_11
    move-exception v1

    .line 37961
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;

    move-object v2, v0

    .line 37962
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 37964
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 37965
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

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
    .line 37868
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 37868
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

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
    .line 37868
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setClientLoginToken(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38000
    if-nez p1, :cond_8

    .line 38001
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38003
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    .line 38004
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 38006
    return-object p0
.end method

.method public setClientLoginTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38016
    if-nez p1, :cond_8

    .line 38017
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38019
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    .line 38020
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->clientLoginToken_:Ljava/lang/Object;

    .line 38022
    return-object p0
.end method

.method public setDestination(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 38044
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 38046
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    .line 38047
    return-object p0
.end method

.method public setDestination(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38034
    if-nez p1, :cond_8

    .line 38035
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38037
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 38039
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiRegisterDestinationRequest$Builder;->bitField0_:I

    .line 38040
    return-object p0
.end method
