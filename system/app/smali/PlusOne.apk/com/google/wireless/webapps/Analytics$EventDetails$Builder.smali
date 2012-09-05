.class public final Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Analytics.java"

# interfaces
.implements Lcom/google/wireless/webapps/Analytics$EventDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics$EventDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/webapps/Analytics$EventDetails;",
        "Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;",
        ">;",
        "Lcom/google/wireless/webapps/Analytics$EventDetailsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private count_:I

.field private endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

.field private errorCode_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$UniqueId;",
            ">;"
        }
    .end annotation
.end field

.field private favaRequestId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

.field private target_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$UniqueId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2859
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3068
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 3111
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 3154
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    .line 3264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    .line 3353
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    .line 2860
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->maybeForceBuilderInitialization()V

    .line 2861
    return-void
.end method

.method static synthetic access$3400()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 1

    .prologue
    .line 2854
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->create()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 1

    .prologue
    .line 2866
    new-instance v0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;-><init>()V

    return-object v0
.end method

.method private ensureErrorCodeIsMutable()V
    .registers 3

    .prologue
    .line 3267
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 3268
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    .line 3269
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3271
    :cond_17
    return-void
.end method

.method private ensureFavaRequestIdIsMutable()V
    .registers 3

    .prologue
    .line 3355
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 3356
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    .line 3357
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3359
    :cond_17
    return-void
.end method

.method private ensureTargetIsMutable()V
    .registers 3

    .prologue
    .line 3157
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 3158
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    .line 3159
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3161
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2864
    return-void
.end method


# virtual methods
.method public addAllErrorCode(Ljava/lang/Iterable;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/webapps/Analytics$UniqueId;",
            ">;)",
            "Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;"
        }
    .end annotation

    .prologue
    .line 3334
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/webapps/Analytics$UniqueId;>;"
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureErrorCodeIsMutable()V

    .line 3335
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3337
    return-object p0
.end method

.method public addAllFavaRequestId(Ljava/lang/Iterable;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;"
        }
    .end annotation

    .prologue
    .line 3385
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureFavaRequestIdIsMutable()V

    .line 3386
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3388
    return-object p0
.end method

.method public addAllTarget(Ljava/lang/Iterable;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/webapps/Analytics$UniqueId;",
            ">;)",
            "Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;"
        }
    .end annotation

    .prologue
    .line 3224
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/webapps/Analytics$UniqueId;>;"
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureTargetIsMutable()V

    .line 3225
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3227
    return-object p0
.end method

.method public addErrorCode(ILcom/google/wireless/webapps/Analytics$UniqueId$Builder;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3327
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureErrorCodeIsMutable()V

    .line 3328
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->build()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3330
    return-object p0
.end method

.method public addErrorCode(ILcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3310
    if-nez p2, :cond_8

    .line 3311
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3313
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureErrorCodeIsMutable()V

    .line 3314
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3316
    return-object p0
.end method

.method public addErrorCode(Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3320
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureErrorCodeIsMutable()V

    .line 3321
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->build()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3323
    return-object p0
.end method

.method public addErrorCode(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3300
    if-nez p1, :cond_8

    .line 3301
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3303
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureErrorCodeIsMutable()V

    .line 3304
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3306
    return-object p0
.end method

.method public addFavaRequestId(J)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 5
    .parameter "value"

    .prologue
    .line 3378
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureFavaRequestIdIsMutable()V

    .line 3379
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3381
    return-object p0
.end method

.method public addTarget(ILcom/google/wireless/webapps/Analytics$UniqueId$Builder;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3217
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureTargetIsMutable()V

    .line 3218
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->build()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3220
    return-object p0
.end method

.method public addTarget(ILcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3200
    if-nez p2, :cond_8

    .line 3201
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3203
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureTargetIsMutable()V

    .line 3204
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3206
    return-object p0
.end method

.method public addTarget(Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3210
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureTargetIsMutable()V

    .line 3211
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->build()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3213
    return-object p0
.end method

.method public addTarget(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3190
    if-nez p1, :cond_8

    .line 3191
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3193
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureTargetIsMutable()V

    .line 3194
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3196
    return-object p0
.end method

.method public build()Lcom/google/wireless/webapps/Analytics$EventDetails;
    .registers 3

    .prologue
    .line 2895
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v0

    .line 2896
    .local v0, result:Lcom/google/wireless/webapps/Analytics$EventDetails;
    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$EventDetails;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2897
    invoke-static {v0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2899
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2854
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/webapps/Analytics$EventDetails;
    .registers 6

    .prologue
    .line 2913
    new-instance v1, Lcom/google/wireless/webapps/Analytics$EventDetails;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/webapps/Analytics$EventDetails;-><init>(Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;Lcom/google/wireless/webapps/Analytics$1;)V

    .line 2914
    .local v1, result:Lcom/google/wireless/webapps/Analytics$EventDetails;
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 2915
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2916
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 2917
    or-int/lit8 v2, v2, 0x1

    .line 2919
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    #setter for: Lcom/google/wireless/webapps/Analytics$EventDetails;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$EventDetails;->access$3602(Lcom/google/wireless/webapps/Analytics$EventDetails;Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 2920
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 2921
    or-int/lit8 v2, v2, 0x2

    .line 2923
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    #setter for: Lcom/google/wireless/webapps/Analytics$EventDetails;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$EventDetails;->access$3702(Lcom/google/wireless/webapps/Analytics$EventDetails;Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 2924
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 2925
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    .line 2926
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 2928
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    #setter for: Lcom/google/wireless/webapps/Analytics$EventDetails;->target_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$EventDetails;->access$3802(Lcom/google/wireless/webapps/Analytics$EventDetails;Ljava/util/List;)Ljava/util/List;

    .line 2929
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 2930
    or-int/lit8 v2, v2, 0x4

    .line 2932
    :cond_43
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->count_:I

    #setter for: Lcom/google/wireless/webapps/Analytics$EventDetails;->count_:I
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$EventDetails;->access$3902(Lcom/google/wireless/webapps/Analytics$EventDetails;I)I

    .line 2933
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5e

    .line 2934
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    .line 2935
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 2937
    :cond_5e
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    #setter for: Lcom/google/wireless/webapps/Analytics$EventDetails;->errorCode_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$EventDetails;->access$4002(Lcom/google/wireless/webapps/Analytics$EventDetails;Ljava/util/List;)Ljava/util/List;

    .line 2938
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_79

    .line 2939
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    .line 2940
    iget v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 2942
    :cond_79
    iget-object v3, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    #setter for: Lcom/google/wireless/webapps/Analytics$EventDetails;->favaRequestId_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/webapps/Analytics$EventDetails;->access$4102(Lcom/google/wireless/webapps/Analytics$EventDetails;Ljava/util/List;)Ljava/util/List;

    .line 2943
    #setter for: Lcom/google/wireless/webapps/Analytics$EventDetails;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/webapps/Analytics$EventDetails;->access$4202(Lcom/google/wireless/webapps/Analytics$EventDetails;I)I

    .line 2944
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2854
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->clear()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2854
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->clear()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 2

    .prologue
    .line 2870
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2871
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 2872
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 2873
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 2874
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 2875
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    .line 2876
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 2877
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->count_:I

    .line 2878
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 2879
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    .line 2880
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 2881
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    .line 2882
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 2883
    return-object p0
.end method

.method public clearCount()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 2

    .prologue
    .line 3257
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3258
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->count_:I

    .line 3260
    return-object p0
.end method

.method public clearEndView()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 2

    .prologue
    .line 3147
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 3149
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3150
    return-object p0
.end method

.method public clearErrorCode()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 2

    .prologue
    .line 3340
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    .line 3341
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3343
    return-object p0
.end method

.method public clearFavaRequestId()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 2

    .prologue
    .line 3391
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    .line 3392
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3394
    return-object p0
.end method

.method public clearStartView()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 2

    .prologue
    .line 3104
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 3106
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3107
    return-object p0
.end method

.method public clearTarget()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 2

    .prologue
    .line 3230
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    .line 3231
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3233
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2854
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->clone()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2854
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->clone()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 3

    .prologue
    .line 2887
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->create()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$EventDetails;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

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
    .line 2854
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->clone()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 3248
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2854
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2854
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/webapps/Analytics$EventDetails;
    .registers 2

    .prologue
    .line 2891
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$EventDetails;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v0

    return-object v0
.end method

.method public getEndView()Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 2

    .prologue
    .line 3116
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    return-object v0
.end method

.method public getErrorCode(I)Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 3
    .parameter "index"

    .prologue
    .line 3280
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$UniqueId;

    return-object v0
.end method

.method public getErrorCodeCount()I
    .registers 2

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getErrorCodeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$UniqueId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3274
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFavaRequestId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 3368
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFavaRequestIdCount()I
    .registers 2

    .prologue
    .line 3365
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFavaRequestIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3362
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStartView()Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 2

    .prologue
    .line 3073
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    return-object v0
.end method

.method public getTarget(I)Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 3
    .parameter "index"

    .prologue
    .line 3170
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$UniqueId;

    return-object v0
.end method

.method public getTargetCount()I
    .registers 2

    .prologue
    .line 3167
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTargetList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/webapps/Analytics$UniqueId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3164
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCount()Z
    .registers 3

    .prologue
    .line 3245
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

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

.method public hasEndView()Z
    .registers 3

    .prologue
    .line 3113
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

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

.method public hasStartView()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3070
    iget v1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public mergeEndView(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3135
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 3137
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    invoke-static {v0}, Lcom/google/wireless/webapps/Analytics$UniqueId;->newBuilder(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 3143
    :goto_1f
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3144
    return-object p0

    .line 3140
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    goto :goto_1f
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
    .line 2854
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

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
    .line 2854
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3001
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_9e

    .line 3006
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3008
    :sswitch_d
    return-object p0

    .line 3013
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->newBuilder()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v2

    .line 3014
    .local v2, subBuilder:Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->hasStartView()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 3015
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->getStartView()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    .line 3017
    :cond_1f
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3018
    invoke-virtual {v2}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->setStartView(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    goto :goto_0

    .line 3022
    .end local v2           #subBuilder:Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    :sswitch_2a
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->newBuilder()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v2

    .line 3023
    .restart local v2       #subBuilder:Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->hasEndView()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 3024
    invoke-virtual {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->getEndView()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    .line 3026
    :cond_3b
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3027
    invoke-virtual {v2}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->setEndView(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    goto :goto_0

    .line 3031
    .end local v2           #subBuilder:Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    :sswitch_46
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->newBuilder()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v2

    .line 3032
    .restart local v2       #subBuilder:Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3033
    invoke-virtual {v2}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->addTarget(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    goto :goto_0

    .line 3037
    .end local v2           #subBuilder:Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    :sswitch_55
    iget v4, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3038
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->count_:I

    goto :goto_0

    .line 3042
    :sswitch_62
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->newBuilder()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v2

    .line 3043
    .restart local v2       #subBuilder:Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3044
    invoke-virtual {v2}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->addErrorCode(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    goto :goto_0

    .line 3048
    .end local v2           #subBuilder:Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    :sswitch_71
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureFavaRequestIdIsMutable()V

    .line 3049
    iget-object v4, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3053
    :sswitch_83
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 3054
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 3055
    .local v1, limit:I
    :goto_8b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_99

    .line 3056
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->addFavaRequestId(J)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    goto :goto_8b

    .line 3058
    :cond_99
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 3001
    :sswitch_data_9e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_46
        0x20 -> :sswitch_55
        0x2a -> :sswitch_62
        0x30 -> :sswitch_71
        0x32 -> :sswitch_83
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/webapps/Analytics$EventDetails;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 2948
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$EventDetails;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$EventDetails;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2988
    :cond_6
    :goto_6
    return-object p0

    .line 2949
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$EventDetails;->hasStartView()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2950
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$EventDetails;->getStartView()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->mergeStartView(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    .line 2952
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$EventDetails;->hasEndView()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2953
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$EventDetails;->getEndView()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->mergeEndView(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    .line 2955
    :cond_21
    #getter for: Lcom/google/wireless/webapps/Analytics$EventDetails;->target_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$EventDetails;->access$3800(Lcom/google/wireless/webapps/Analytics$EventDetails;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 2956
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 2957
    #getter for: Lcom/google/wireless/webapps/Analytics$EventDetails;->target_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$EventDetails;->access$3800(Lcom/google/wireless/webapps/Analytics$EventDetails;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    .line 2958
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 2965
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$EventDetails;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2966
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$EventDetails;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->setCount(I)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    .line 2968
    :cond_4c
    #getter for: Lcom/google/wireless/webapps/Analytics$EventDetails;->errorCode_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$EventDetails;->access$4000(Lcom/google/wireless/webapps/Analytics$EventDetails;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 2969
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 2970
    #getter for: Lcom/google/wireless/webapps/Analytics$EventDetails;->errorCode_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$EventDetails;->access$4000(Lcom/google/wireless/webapps/Analytics$EventDetails;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    .line 2971
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 2978
    :cond_6a
    :goto_6a
    #getter for: Lcom/google/wireless/webapps/Analytics$EventDetails;->favaRequestId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$EventDetails;->access$4100(Lcom/google/wireless/webapps/Analytics$EventDetails;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2979
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 2980
    #getter for: Lcom/google/wireless/webapps/Analytics$EventDetails;->favaRequestId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$EventDetails;->access$4100(Lcom/google/wireless/webapps/Analytics$EventDetails;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    .line 2981
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    goto/16 :goto_6

    .line 2960
    :cond_8a
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureTargetIsMutable()V

    .line 2961
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    #getter for: Lcom/google/wireless/webapps/Analytics$EventDetails;->target_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$EventDetails;->access$3800(Lcom/google/wireless/webapps/Analytics$EventDetails;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f

    .line 2973
    :cond_97
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureErrorCodeIsMutable()V

    .line 2974
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    #getter for: Lcom/google/wireless/webapps/Analytics$EventDetails;->errorCode_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$EventDetails;->access$4000(Lcom/google/wireless/webapps/Analytics$EventDetails;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6a

    .line 2983
    :cond_a4
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureFavaRequestIdIsMutable()V

    .line 2984
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    #getter for: Lcom/google/wireless/webapps/Analytics$EventDetails;->favaRequestId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/webapps/Analytics$EventDetails;->access$4100(Lcom/google/wireless/webapps/Analytics$EventDetails;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public mergeStartView(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3092
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->getDefaultInstance()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 3094
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    invoke-static {v0}, Lcom/google/wireless/webapps/Analytics$UniqueId;->newBuilder(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->mergeFrom(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->buildPartial()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 3100
    :goto_1f
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3101
    return-object p0

    .line 3097
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    goto :goto_1f
.end method

.method public setCount(I)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3251
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3252
    iput p1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->count_:I

    .line 3254
    return-object p0
.end method

.method public setEndView(Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 3129
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->build()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 3131
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3132
    return-object p0
.end method

.method public setEndView(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3119
    if-nez p1, :cond_8

    .line 3120
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3122
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->endView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 3124
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3125
    return-object p0
.end method

.method public setErrorCode(ILcom/google/wireless/webapps/Analytics$UniqueId$Builder;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3294
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureErrorCodeIsMutable()V

    .line 3295
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->build()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3297
    return-object p0
.end method

.method public setErrorCode(ILcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3284
    if-nez p2, :cond_8

    .line 3285
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3287
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureErrorCodeIsMutable()V

    .line 3288
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->errorCode_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3290
    return-object p0
.end method

.method public setFavaRequestId(IJ)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 6
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3372
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureFavaRequestIdIsMutable()V

    .line 3373
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->favaRequestId_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3375
    return-object p0
.end method

.method public setStartView(Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 3086
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->build()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 3088
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3089
    return-object p0
.end method

.method public setStartView(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3076
    if-nez p1, :cond_8

    .line 3077
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3079
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->startView_:Lcom/google/wireless/webapps/Analytics$UniqueId;

    .line 3081
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->bitField0_:I

    .line 3082
    return-object p0
.end method

.method public setTarget(ILcom/google/wireless/webapps/Analytics$UniqueId$Builder;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3184
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureTargetIsMutable()V

    .line 3185
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->build()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3187
    return-object p0
.end method

.method public setTarget(ILcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3174
    if-nez p2, :cond_8

    .line 3175
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3177
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->ensureTargetIsMutable()V

    .line 3178
    iget-object v0, p0, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->target_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3180
    return-object p0
.end method
