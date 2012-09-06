.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$SectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$SectionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cover_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end field

.field private notificationCount_:I

.field private timestampMsec_:J

.field private totalCount_:I

.field private type_:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40142
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 40313
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->FROM_MY_CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    .line 40358
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    .line 40143
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->maybeForceBuilderInitialization()V

    .line 40144
    return-void
.end method

.method static synthetic access$55400()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 1

    .prologue
    .line 40137
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 1

    .prologue
    .line 40149
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCoverIsMutable()V
    .registers 3

    .prologue
    .line 40361
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 40362
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    .line 40363
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40365
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 40147
    return-void
.end method


# virtual methods
.method public addAllCover(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;"
        }
    .end annotation

    .prologue
    .line 40428
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->ensureCoverIsMutable()V

    .line 40429
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 40431
    return-object p0
.end method

.method public addCover(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 40421
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->ensureCoverIsMutable()V

    .line 40422
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40424
    return-object p0
.end method

.method public addCover(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 40404
    if-nez p2, :cond_8

    .line 40405
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40407
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->ensureCoverIsMutable()V

    .line 40408
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40410
    return-object p0
.end method

.method public addCover(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 40414
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->ensureCoverIsMutable()V

    .line 40415
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40417
    return-object p0
.end method

.method public addCover(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40394
    if-nez p1, :cond_8

    .line 40395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40397
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->ensureCoverIsMutable()V

    .line 40398
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40400
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    .registers 3

    .prologue
    .line 40176
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v0

    .line 40177
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 40178
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 40180
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    .registers 6

    .prologue
    .line 40194
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 40195
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40196
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 40197
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 40198
    or-int/lit8 v2, v2, 0x1

    .line 40200
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->access$55602(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    .line 40201
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 40202
    or-int/lit8 v2, v2, 0x2

    .line 40204
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->totalCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->totalCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->access$55702(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;I)I

    .line 40205
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 40206
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    .line 40207
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40209
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->cover_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->access$55802(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;Ljava/util/List;)Ljava/util/List;

    .line 40210
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 40211
    or-int/lit8 v2, v2, 0x4

    .line 40213
    :cond_43
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->timestampMsec_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->timestampMsec_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->access$55902(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;J)J

    .line 40214
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 40215
    or-int/lit8 v2, v2, 0x8

    .line 40217
    :cond_50
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->notificationCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->notificationCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->access$56002(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;I)I

    .line 40218
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->access$56102(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;I)I

    .line 40219
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 40153
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 40154
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->FROM_MY_CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    .line 40155
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40156
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->totalCount_:I

    .line 40157
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    .line 40159
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->timestampMsec_:J

    .line 40161
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40162
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->notificationCount_:I

    .line 40163
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40164
    return-object p0
.end method

.method public clearCover()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 2

    .prologue
    .line 40434
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    .line 40435
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40437
    return-object p0
.end method

.method public clearNotificationCount()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 2

    .prologue
    .line 40482
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40483
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->notificationCount_:I

    .line 40485
    return-object p0
.end method

.method public clearTimestampMsec()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 3

    .prologue
    .line 40461
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40462
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->timestampMsec_:J

    .line 40464
    return-object p0
.end method

.method public clearTotalCount()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 2

    .prologue
    .line 40351
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40352
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->totalCount_:I

    .line 40354
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 2

    .prologue
    .line 40330
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40331
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->FROM_MY_CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    .line 40333
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 40137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 3

    .prologue
    .line 40168
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

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
    .line 40137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCover(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 40374
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getCoverCount()I
    .registers 2

    .prologue
    .line 40371
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCoverList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40368
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 40137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    .registers 2

    .prologue
    .line 40172
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationCount()I
    .registers 2

    .prologue
    .line 40473
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->notificationCount_:I

    return v0
.end method

.method public getTimestampMsec()J
    .registers 3

    .prologue
    .line 40452
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->timestampMsec_:J

    return-wide v0
.end method

.method public getTotalCount()I
    .registers 2

    .prologue
    .line 40342
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->totalCount_:I

    return v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;
    .registers 2

    .prologue
    .line 40318
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    return-object v0
.end method

.method public hasNotificationCount()Z
    .registers 3

    .prologue
    .line 40470
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

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

.method public hasTimestampMsec()Z
    .registers 3

    .prologue
    .line 40449
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

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

.method public hasTotalCount()Z
    .registers 3

    .prologue
    .line 40339
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 40315
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

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
    .line 40250
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->getCoverCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 40251
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->getCover(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 40253
    const/4 v1, 0x0

    .line 40256
    :goto_12
    return v1

    .line 40250
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40256
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
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
    .line 40137
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 40137
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

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
    .line 40137
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40264
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 40265
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_58

    .line 40270
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 40272
    :sswitch_d
    return-object p0

    .line 40277
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 40278
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    move-result-object v3

    .line 40279
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;
    if-eqz v3, :cond_0

    .line 40280
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40281
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    goto :goto_0

    .line 40286
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;
    :sswitch_21
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40287
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->totalCount_:I

    goto :goto_0

    .line 40291
    :sswitch_2e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;

    move-result-object v1

    .line 40292
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 40293
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->addCover(Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    goto :goto_0

    .line 40297
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;
    :sswitch_3d
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40298
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->timestampMsec_:J

    goto :goto_0

    .line 40302
    :sswitch_4a
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40303
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->notificationCount_:I

    goto :goto_0

    .line 40265
    nop

    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x1a -> :sswitch_2e
        0x20 -> :sswitch_3d
        0x28 -> :sswitch_4a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 40223
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 40246
    :cond_6
    :goto_6
    return-object p0

    .line 40224
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 40225
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    .line 40227
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->hasTotalCount()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 40228
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getTotalCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->setTotalCount(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    .line 40230
    :cond_21
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->cover_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->access$55800(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 40231
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 40232
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->cover_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->access$55800(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    .line 40233
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40240
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->hasTimestampMsec()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 40241
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getTimestampMsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->setTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    .line 40243
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->hasNotificationCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40244
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->getNotificationCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->setNotificationCount(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    goto :goto_6

    .line 40235
    :cond_5a
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->ensureCoverIsMutable()V

    .line 40236
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->cover_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->access$55800(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f
.end method

.method public setCover(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 40388
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->ensureCoverIsMutable()V

    .line 40389
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40391
    return-object p0
.end method

.method public setCover(ILcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 40378
    if-nez p2, :cond_8

    .line 40379
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40381
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->ensureCoverIsMutable()V

    .line 40382
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->cover_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40384
    return-object p0
.end method

.method public setNotificationCount(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40476
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40477
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->notificationCount_:I

    .line 40479
    return-object p0
.end method

.method public setTimestampMsec(J)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 40455
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40456
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->timestampMsec_:J

    .line 40458
    return-object p0
.end method

.method public setTotalCount(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40345
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40346
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->totalCount_:I

    .line 40348
    return-object p0
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40321
    if-nez p1, :cond_8

    .line 40322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40324
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->bitField0_:I

    .line 40325
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    .line 40327
    return-object p0
.end method
