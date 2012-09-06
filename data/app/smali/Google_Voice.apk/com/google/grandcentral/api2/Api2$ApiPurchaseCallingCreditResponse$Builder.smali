.class public final Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private redirectUrl_:Ljava/lang/Object;

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 31921
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 32017
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 32060
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 31922
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->maybeForceBuilderInitialization()V

    .line 31923
    return-void
.end method

.method static synthetic access$38100()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 1

    .prologue
    .line 31916
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 1

    .prologue
    .line 31928
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 31926
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    .registers 3

    .prologue
    .line 31949
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    move-result-object v0

    .line 31950
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 31951
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 31953
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31916
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    .registers 6

    .prologue
    .line 31957
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 31958
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    .line 31959
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 31960
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 31961
    or-int/lit8 v2, v2, 0x1

    .line 31963
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->access$38302(Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 31964
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 31965
    or-int/lit8 v2, v2, 0x2

    .line 31967
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->redirectUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->access$38402(Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31968
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->access$38502(Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;I)I

    .line 31969
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31916
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 2

    .prologue
    .line 31932
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 31933
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 31934
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    .line 31935
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 31936
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    .line 31937
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 31916
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31916
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearRedirectUrl()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 2

    .prologue
    .line 32096
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    .line 32097
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 32099
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 2

    .prologue
    .line 32053
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 32055
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    .line 32056
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 3

    .prologue
    .line 31941
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 31916
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 31916
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 31916
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

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
    .line 31916
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    .registers 2

    .prologue
    .line 31945
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 31916
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 31916
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 32065
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 32066
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 32067
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 32068
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 32071
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

.method public getRedirectUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 32076
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 32077
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 32078
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32080
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 32083
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

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 32022
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasRedirectUrl()Z
    .registers 3

    .prologue
    .line 32062
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

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

    .line 32019
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 31986
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 31994
    :cond_7
    :goto_7
    return v0

    .line 31990
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 31994
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 31973
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 31982
    :cond_6
    :goto_6
    return-object p0

    .line 31974
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 31975
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    .line 31977
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->hasRedirectUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31978
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    .line 31979
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->redirectUrl_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->access$38400(Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32001
    const/4 v2, 0x0

    .line 32003
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 32008
    if-eqz v2, :cond_10

    .line 32009
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    .line 32012
    :cond_10
    return-object p0

    .line 32004
    :catch_11
    move-exception v1

    .line 32005
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    move-object v2, v0

    .line 32006
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 32008
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 32009
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

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
    .line 31916
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 31916
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

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
    .line 31916
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 32041
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 32043
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 32049
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    .line 32050
    return-object p0

    .line 32046
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setRedirectUrl(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32087
    if-nez p1, :cond_8

    .line 32088
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32090
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    .line 32091
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 32093
    return-object p0
.end method

.method public setRedirectUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32103
    if-nez p1, :cond_8

    .line 32104
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32106
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    .line 32107
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->redirectUrl_:Ljava/lang/Object;

    .line 32109
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 32035
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 32037
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    .line 32038
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 32025
    if-nez p1, :cond_8

    .line 32026
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32028
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 32030
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPurchaseCallingCreditResponse$Builder;->bitField0_:I

    .line 32031
    return-object p0
.end method
