.class public final Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;",
        "Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private circle_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Circles$MobileCircle;",
            ">;"
        }
    .end annotation
.end field

.field private key_:Ljava/lang/Object;

.field private memberId_:Ljava/lang/Object;

.field private ownerGaiaId_:Ljava/lang/Object;

.field private serverTime_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3862
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4023
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 4080
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->key_:Ljava/lang/Object;

    .line 4116
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    .line 4205
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->memberId_:Ljava/lang/Object;

    .line 3863
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->maybeForceBuilderInitialization()V

    .line 3864
    return-void
.end method

.method static synthetic access$4400(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3857
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 1

    .prologue
    .line 3857
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3905
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    .line 3906
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3907
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3910
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 1

    .prologue
    .line 3869
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCircleIsMutable()V
    .registers 3

    .prologue
    .line 4119
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 4120
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    .line 4121
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 4123
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3867
    return-void
.end method


# virtual methods
.method public addAllCircle(Ljava/lang/Iterable;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/contacts/proto/Circles$MobileCircle;",
            ">;)",
            "Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 4186
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/contacts/proto/Circles$MobileCircle;>;"
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->ensureCircleIsMutable()V

    .line 4187
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4189
    return-object p0
.end method

.method public addCircle(ILcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4179
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->ensureCircleIsMutable()V

    .line 4180
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->build()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4182
    return-object p0
.end method

.method public addCircle(ILcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4162
    if-nez p2, :cond_8

    .line 4163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4165
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->ensureCircleIsMutable()V

    .line 4166
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4168
    return-object p0
.end method

.method public addCircle(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4172
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->ensureCircleIsMutable()V

    .line 4173
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->build()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4175
    return-object p0
.end method

.method public addCircle(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4152
    if-nez p1, :cond_8

    .line 4153
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4155
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->ensureCircleIsMutable()V

    .line 4156
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4158
    return-object p0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    .registers 3

    .prologue
    .line 3896
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    .line 3897
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3898
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3900
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3857
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    .registers 6

    .prologue
    .line 3914
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 3915
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 3916
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3917
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3918
    or-int/lit8 v2, v2, 0x1

    .line 3920
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->ownerGaiaId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->access$4702(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3921
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 3922
    or-int/lit8 v2, v2, 0x2

    .line 3924
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->serverTime_:J

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->serverTime_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->access$4802(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;J)J

    .line 3925
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 3926
    or-int/lit8 v2, v2, 0x4

    .line 3928
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->key_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->key_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->access$4902(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3929
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 3930
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    .line 3931
    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 3933
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->circle_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->access$5002(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;Ljava/util/List;)Ljava/util/List;

    .line 3934
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 3935
    or-int/lit8 v2, v2, 0x8

    .line 3937
    :cond_50
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->memberId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->memberId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->access$5102(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3938
    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->access$5202(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;I)I

    .line 3939
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3857
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3857
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 3

    .prologue
    .line 3873
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3874
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 3875
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 3876
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->serverTime_:J

    .line 3877
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 3878
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->key_:Ljava/lang/Object;

    .line 3879
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 3880
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    .line 3881
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 3882
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->memberId_:Ljava/lang/Object;

    .line 3883
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 3884
    return-object p0
.end method

.method public clearCircle()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 2

    .prologue
    .line 4192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    .line 4193
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 4195
    return-object p0
.end method

.method public clearKey()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 2

    .prologue
    .line 4104
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 4105
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->key_:Ljava/lang/Object;

    .line 4107
    return-object p0
.end method

.method public clearMemberId()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 2

    .prologue
    .line 4229
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 4230
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getMemberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->memberId_:Ljava/lang/Object;

    .line 4232
    return-object p0
.end method

.method public clearOwnerGaiaId()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 2

    .prologue
    .line 4047
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 4048
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getOwnerGaiaId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 4050
    return-object p0
.end method

.method public clearServerTime()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 3

    .prologue
    .line 4073
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 4074
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->serverTime_:J

    .line 4076
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3857
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3857
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 3

    .prologue
    .line 3888
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

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
    .line 3857
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCircle(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle;
    .registers 3
    .parameter "index"

    .prologue
    .line 4132
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    return-object v0
.end method

.method public getCircleCount()I
    .registers 2

    .prologue
    .line 4129
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCircleList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Circles$MobileCircle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4126
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3857
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3857
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    .registers 2

    .prologue
    .line 3892
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4085
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->key_:Ljava/lang/Object;

    .line 4086
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4087
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4088
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->key_:Ljava/lang/Object;

    .line 4091
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

.method public getMemberId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4210
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->memberId_:Ljava/lang/Object;

    .line 4211
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4212
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4213
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->memberId_:Ljava/lang/Object;

    .line 4216
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
    .line 4028
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 4029
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4030
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4031
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 4034
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

.method public getServerTime()J
    .registers 3

    .prologue
    .line 4064
    iget-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->serverTime_:J

    return-wide v0
.end method

.method public hasKey()Z
    .registers 3

    .prologue
    .line 4082
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

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

.method public hasMemberId()Z
    .registers 3

    .prologue
    .line 4207
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4025
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasServerTime()Z
    .registers 3

    .prologue
    .line 4061
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

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
    .line 3857
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

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
    .line 3857
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3978
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3979
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_52

    .line 3984
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3986
    :sswitch_d
    return-object p0

    .line 3991
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 3992
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    goto :goto_0

    .line 3996
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 3997
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->serverTime_:J

    goto :goto_0

    .line 4001
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 4002
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->key_:Ljava/lang/Object;

    goto :goto_0

    .line 4006
    :sswitch_35
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;->newBuilder()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;

    move-result-object v0

    .line 4007
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4008
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->addCircle(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    goto :goto_0

    .line 4012
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;
    :sswitch_44
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 4013
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->memberId_:Ljava/lang/Object;

    goto :goto_0

    .line 3979
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_44
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3943
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3966
    :cond_6
    :goto_6
    return-object p0

    .line 3944
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->hasOwnerGaiaId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3945
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getOwnerGaiaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->setOwnerGaiaId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    .line 3947
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->hasServerTime()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3948
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getServerTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->setServerTime(J)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    .line 3950
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3951
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->setKey(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    .line 3953
    :cond_2e
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->circle_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->access$5000(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 3954
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 3955
    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->circle_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->access$5000(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    .line 3956
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 3963
    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->hasMemberId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3964
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getMemberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->setMemberId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;

    goto :goto_6

    .line 3958
    :cond_5a
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->ensureCircleIsMutable()V

    .line 3959
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    #getter for: Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->circle_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->access$5000(Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4c
.end method

.method public setCircle(ILcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4146
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->ensureCircleIsMutable()V

    .line 4147
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Builder;->build()Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4149
    return-object p0
.end method

.method public setCircle(ILcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4136
    if-nez p2, :cond_8

    .line 4137
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4139
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->ensureCircleIsMutable()V

    .line 4140
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->circle_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4142
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4095
    if-nez p1, :cond_8

    .line 4096
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4098
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 4099
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->key_:Ljava/lang/Object;

    .line 4101
    return-object p0
.end method

.method public setMemberId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4220
    if-nez p1, :cond_8

    .line 4221
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4223
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 4224
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->memberId_:Ljava/lang/Object;

    .line 4226
    return-object p0
.end method

.method public setOwnerGaiaId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4038
    if-nez p1, :cond_8

    .line 4039
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4041
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 4042
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->ownerGaiaId_:Ljava/lang/Object;

    .line 4044
    return-object p0
.end method

.method public setServerTime(J)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4067
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->bitField0_:I

    .line 4068
    iput-wide p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse$Builder;->serverTime_:J

    .line 4070
    return-object p0
.end method
