.class public final Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private accessNumberIsShadowNumber_:Z

.field private accessNumber_:Ljava/lang/Object;

.field private bitField0_:I

.field private callCost_:I

.field private normalizedOutgoingNumber_:Ljava/lang/Object;

.field private outgoingNumberWasGv_:Z

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25887
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 26025
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 26068
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->accessNumber_:Ljava/lang/Object;

    .line 26184
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->normalizedOutgoingNumber_:Ljava/lang/Object;

    .line 25888
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->maybeForceBuilderInitialization()V

    .line 25889
    return-void
.end method

.method static synthetic access$30600()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 1

    .prologue
    .line 25882
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 1

    .prologue
    .line 25894
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 25892
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    .registers 3

    .prologue
    .line 25923
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    move-result-object v0

    .line 25924
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 25925
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 25927
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25882
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    .registers 6

    .prologue
    .line 25931
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 25932
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 25933
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 25934
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 25935
    or-int/lit8 v2, v2, 0x1

    .line 25937
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->access$30802(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 25938
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 25939
    or-int/lit8 v2, v2, 0x2

    .line 25941
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->accessNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->access$30902(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25942
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 25943
    or-int/lit8 v2, v2, 0x4

    .line 25945
    :cond_28
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->callCost_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->callCost_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->access$31002(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;I)I

    .line 25946
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 25947
    or-int/lit8 v2, v2, 0x8

    .line 25949
    :cond_35
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->outgoingNumberWasGv_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->outgoingNumberWasGv_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->access$31102(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;Z)Z

    .line 25950
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 25951
    or-int/lit8 v2, v2, 0x10

    .line 25953
    :cond_42
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->accessNumberIsShadowNumber_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumberIsShadowNumber_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->access$31202(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;Z)Z

    .line 25954
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 25955
    or-int/lit8 v2, v2, 0x20

    .line 25957
    :cond_4f
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->normalizedOutgoingNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->normalizedOutgoingNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->access$31302(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25958
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->access$31402(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;I)I

    .line 25959
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25882
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 25898
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 25899
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 25900
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 25901
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->accessNumber_:Ljava/lang/Object;

    .line 25902
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 25903
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->callCost_:I

    .line 25904
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 25905
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->outgoingNumberWasGv_:Z

    .line 25906
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 25907
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->accessNumberIsShadowNumber_:Z

    .line 25908
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 25909
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->normalizedOutgoingNumber_:Ljava/lang/Object;

    .line 25910
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 25911
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25882
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25882
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccessNumber()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 2

    .prologue
    .line 26104
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 26105
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getAccessNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->accessNumber_:Ljava/lang/Object;

    .line 26107
    return-object p0
.end method

.method public clearAccessNumberIsShadowNumber()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 2

    .prologue
    .line 26177
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 26178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->accessNumberIsShadowNumber_:Z

    .line 26180
    return-object p0
.end method

.method public clearCallCost()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 2

    .prologue
    .line 26135
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 26136
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->callCost_:I

    .line 26138
    return-object p0
.end method

.method public clearNormalizedOutgoingNumber()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 2

    .prologue
    .line 26220
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 26221
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getNormalizedOutgoingNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->normalizedOutgoingNumber_:Ljava/lang/Object;

    .line 26223
    return-object p0
.end method

.method public clearOutgoingNumberWasGv()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 2

    .prologue
    .line 26156
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 26157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->outgoingNumberWasGv_:Z

    .line 26159
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 2

    .prologue
    .line 26061
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 26063
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 26064
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 3

    .prologue
    .line 25915
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 25882
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25882
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25882
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

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
    .line 25882
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccessNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 26073
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->accessNumber_:Ljava/lang/Object;

    .line 26074
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 26075
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 26076
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->accessNumber_:Ljava/lang/Object;

    .line 26079
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

.method public getAccessNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 26084
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->accessNumber_:Ljava/lang/Object;

    .line 26085
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 26086
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26088
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->accessNumber_:Ljava/lang/Object;

    .line 26091
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

.method public getAccessNumberIsShadowNumber()Z
    .registers 2

    .prologue
    .line 26168
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->accessNumberIsShadowNumber_:Z

    return v0
.end method

.method public getCallCost()I
    .registers 2

    .prologue
    .line 26126
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->callCost_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    .registers 2

    .prologue
    .line 25919
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 25882
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25882
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    move-result-object v0

    return-object v0
.end method

.method public getNormalizedOutgoingNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 26189
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->normalizedOutgoingNumber_:Ljava/lang/Object;

    .line 26190
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 26191
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 26192
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->normalizedOutgoingNumber_:Ljava/lang/Object;

    .line 26195
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

.method public getNormalizedOutgoingNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 26200
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->normalizedOutgoingNumber_:Ljava/lang/Object;

    .line 26201
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 26202
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 26204
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->normalizedOutgoingNumber_:Ljava/lang/Object;

    .line 26207
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

.method public getOutgoingNumberWasGv()Z
    .registers 2

    .prologue
    .line 26147
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->outgoingNumberWasGv_:Z

    return v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 26030
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasAccessNumber()Z
    .registers 3

    .prologue
    .line 26070
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

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

.method public hasAccessNumberIsShadowNumber()Z
    .registers 3

    .prologue
    .line 26165
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

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

.method public hasCallCost()Z
    .registers 3

    .prologue
    .line 26123
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

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

.method public hasNormalizedOutgoingNumber()Z
    .registers 3

    .prologue
    .line 26186
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

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

.method public hasOutgoingNumberWasGv()Z
    .registers 3

    .prologue
    .line 26144
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 26027
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

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

    .line 25990
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->hasStatus()Z

    move-result v1

    if-nez v1, :cond_8

    .line 26002
    :cond_7
    :goto_7
    return v0

    .line 25994
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->hasAccessNumber()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25998
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 26002
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 25963
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 25986
    :cond_6
    :goto_6
    return-object p0

    .line 25964
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 25965
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    .line 25967
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->hasAccessNumber()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 25968
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 25969
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->access$30900(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->accessNumber_:Ljava/lang/Object;

    .line 25972
    :cond_26
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->hasCallCost()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 25973
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getCallCost()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->setCallCost(I)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    .line 25975
    :cond_33
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->hasOutgoingNumberWasGv()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 25976
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getOutgoingNumberWasGv()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->setOutgoingNumberWasGv(Z)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    .line 25978
    :cond_40
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->hasAccessNumberIsShadowNumber()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 25979
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getAccessNumberIsShadowNumber()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->setAccessNumberIsShadowNumber(Z)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    .line 25981
    :cond_4d
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->hasNormalizedOutgoingNumber()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25982
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 25983
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->normalizedOutgoingNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->access$31300(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->normalizedOutgoingNumber_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26009
    const/4 v2, 0x0

    .line 26011
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 26016
    if-eqz v2, :cond_10

    .line 26017
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    .line 26020
    :cond_10
    return-object p0

    .line 26012
    :catch_11
    move-exception v1

    .line 26013
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    move-object v2, v0

    .line 26014
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 26016
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 26017
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

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
    .line 25882
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 25882
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

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
    .line 25882
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26049
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 26051
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 26057
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 26058
    return-object p0

    .line 26054
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public setAccessNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26095
    if-nez p1, :cond_8

    .line 26096
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26098
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 26099
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->accessNumber_:Ljava/lang/Object;

    .line 26101
    return-object p0
.end method

.method public setAccessNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26111
    if-nez p1, :cond_8

    .line 26112
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26114
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 26115
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->accessNumber_:Ljava/lang/Object;

    .line 26117
    return-object p0
.end method

.method public setAccessNumberIsShadowNumber(Z)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26171
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 26172
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->accessNumberIsShadowNumber_:Z

    .line 26174
    return-object p0
.end method

.method public setCallCost(I)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26129
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 26130
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->callCost_:I

    .line 26132
    return-object p0
.end method

.method public setNormalizedOutgoingNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26211
    if-nez p1, :cond_8

    .line 26212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26214
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 26215
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->normalizedOutgoingNumber_:Ljava/lang/Object;

    .line 26217
    return-object p0
.end method

.method public setNormalizedOutgoingNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26227
    if-nez p1, :cond_8

    .line 26228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26230
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 26231
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->normalizedOutgoingNumber_:Ljava/lang/Object;

    .line 26233
    return-object p0
.end method

.method public setOutgoingNumberWasGv(Z)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26150
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 26151
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->outgoingNumberWasGv_:Z

    .line 26153
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26043
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 26045
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 26046
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26033
    if-nez p1, :cond_8

    .line 26034
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26036
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 26038
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->bitField0_:I

    .line 26039
    return-object p0
.end method
