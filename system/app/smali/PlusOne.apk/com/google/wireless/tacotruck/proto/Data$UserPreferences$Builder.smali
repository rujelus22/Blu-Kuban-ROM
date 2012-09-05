.class public final Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$UserPreferencesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;",
        "Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$UserPreferencesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cityLevelLocation_:Z

.field private defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private hideLocation_:Z

.field private locationSpeedbumpAcceptedDate_:J

.field private promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

.field private streamViewType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 26164
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 26410
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 26453
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    .line 26542
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 26165
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->maybeForceBuilderInitialization()V

    .line 26166
    return-void
.end method

.method static synthetic access$35200()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 1

    .prologue
    .line 26159
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 1

    .prologue
    .line 26171
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;-><init>()V

    return-object v0
.end method

.method private ensureStreamViewTypeIsMutable()V
    .registers 3

    .prologue
    .line 26456
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 26457
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    .line 26458
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26460
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 26169
    return-void
.end method


# virtual methods
.method public addAllStreamViewType(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;"
        }
    .end annotation

    .prologue
    .line 26523
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->ensureStreamViewTypeIsMutable()V

    .line 26524
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 26526
    return-object p0
.end method

.method public addStreamViewType(ILcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 26516
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->ensureStreamViewTypeIsMutable()V

    .line 26517
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 26519
    return-object p0
.end method

.method public addStreamViewType(ILcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 26499
    if-nez p2, :cond_8

    .line 26500
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26502
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->ensureStreamViewTypeIsMutable()V

    .line 26503
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 26505
    return-object p0
.end method

.method public addStreamViewType(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 26509
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->ensureStreamViewTypeIsMutable()V

    .line 26510
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26512
    return-object p0
.end method

.method public addStreamViewType(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26489
    if-nez p1, :cond_8

    .line 26490
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26492
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->ensureStreamViewTypeIsMutable()V

    .line 26493
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26495
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    .registers 3

    .prologue
    .line 26200
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    .line 26201
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 26202
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 26204
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26159
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    .registers 6

    .prologue
    .line 26218
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;-><init>(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 26219
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26220
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 26221
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 26222
    or-int/lit8 v2, v2, 0x1

    .line 26224
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->hideLocation_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hideLocation_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$35402(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;Z)Z

    .line 26225
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 26226
    or-int/lit8 v2, v2, 0x2

    .line 26228
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->cityLevelLocation_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->cityLevelLocation_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$35502(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;Z)Z

    .line 26229
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 26230
    or-int/lit8 v2, v2, 0x4

    .line 26232
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->locationSpeedbumpAcceptedDate_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->locationSpeedbumpAcceptedDate_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$35602(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;J)J

    .line 26233
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 26234
    or-int/lit8 v2, v2, 0x8

    .line 26236
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$35702(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 26237
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 26238
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    .line 26239
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26241
    :cond_50
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$35802(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;Ljava/util/List;)Ljava/util/List;

    .line 26242
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 26243
    or-int/lit8 v2, v2, 0x10

    .line 26245
    :cond_5d
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$35902(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 26246
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$36002(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;I)I

    .line 26247
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26159
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26159
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 26175
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26176
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->hideLocation_:Z

    .line 26177
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26178
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->cityLevelLocation_:Z

    .line 26179
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->locationSpeedbumpAcceptedDate_:J

    .line 26181
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26182
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 26183
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    .line 26185
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26186
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 26187
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26188
    return-object p0
.end method

.method public clearCityLevelLocation()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 2

    .prologue
    .line 26382
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->cityLevelLocation_:Z

    .line 26385
    return-object p0
.end method

.method public clearDefaultPostAudience()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 2

    .prologue
    .line 26446
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 26448
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26449
    return-object p0
.end method

.method public clearHideLocation()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 2

    .prologue
    .line 26361
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->hideLocation_:Z

    .line 26364
    return-object p0
.end method

.method public clearLocationSpeedbumpAcceptedDate()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3

    .prologue
    .line 26403
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26404
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->locationSpeedbumpAcceptedDate_:J

    .line 26406
    return-object p0
.end method

.method public clearPromoData()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 2

    .prologue
    .line 26578
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 26580
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26581
    return-object p0
.end method

.method public clearStreamViewType()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 2

    .prologue
    .line 26529
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    .line 26530
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26532
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 26159
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26159
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3

    .prologue
    .line 26192
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

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
    .line 26159
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCityLevelLocation()Z
    .registers 2

    .prologue
    .line 26373
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->cityLevelLocation_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 26159
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26159
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    .registers 2

    .prologue
    .line 26196
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPostAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 26415
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getHideLocation()Z
    .registers 2

    .prologue
    .line 26352
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->hideLocation_:Z

    return v0
.end method

.method public getLocationSpeedbumpAcceptedDate()J
    .registers 3

    .prologue
    .line 26394
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->locationSpeedbumpAcceptedDate_:J

    return-wide v0
.end method

.method public getPromoData()Lcom/google/wireless/tacotruck/proto/Data$Promo;
    .registers 2

    .prologue
    .line 26547
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    return-object v0
.end method

.method public getStreamViewType(I)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    .registers 3
    .parameter "index"

    .prologue
    .line 26469
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    return-object v0
.end method

.method public getStreamViewTypeCount()I
    .registers 2

    .prologue
    .line 26466
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStreamViewTypeList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26463
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCityLevelLocation()Z
    .registers 3

    .prologue
    .line 26370
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

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

.method public hasDefaultPostAudience()Z
    .registers 3

    .prologue
    .line 26412
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

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

.method public hasHideLocation()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 26349
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLocationSpeedbumpAcceptedDate()Z
    .registers 3

    .prologue
    .line 26391
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

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

.method public hasPromoData()Z
    .registers 3

    .prologue
    .line 26544
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

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

.method public mergeDefaultPostAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26434
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 26436
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 26442
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26443
    return-object p0

    .line 26439
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

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
    .line 26159
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

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
    .line 26159
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26289
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 26290
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_7c

    .line 26295
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26297
    :sswitch_d
    return-object p0

    .line 26302
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26303
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->hideLocation_:Z

    goto :goto_0

    .line 26307
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26308
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->cityLevelLocation_:Z

    goto :goto_0

    .line 26312
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26313
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->locationSpeedbumpAcceptedDate_:J

    goto :goto_0

    .line 26317
    :sswitch_35
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 26318
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->hasDefaultPostAudience()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 26319
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->getDefaultPostAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 26321
    :cond_46
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26322
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->setDefaultPostAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    goto :goto_0

    .line 26326
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    :sswitch_51
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    .line 26327
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26328
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->addStreamViewType(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    goto :goto_0

    .line 26332
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    :sswitch_60
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    .line 26333
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->hasPromoData()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 26334
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->getPromoData()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    .line 26336
    :cond_71
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26337
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->setPromoData(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    goto :goto_0

    .line 26290
    :sswitch_data_7c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x22 -> :sswitch_35
        0x2a -> :sswitch_51
        0x32 -> :sswitch_60
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 26251
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 26277
    :cond_6
    :goto_6
    return-object p0

    .line 26252
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hasHideLocation()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 26253
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getHideLocation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->setHideLocation(Z)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    .line 26255
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hasCityLevelLocation()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 26256
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getCityLevelLocation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->setCityLevelLocation(Z)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    .line 26258
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hasLocationSpeedbumpAcceptedDate()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 26259
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getLocationSpeedbumpAcceptedDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->setLocationSpeedbumpAcceptedDate(J)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    .line 26261
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hasDefaultPostAudience()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 26262
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultPostAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->mergeDefaultPostAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    .line 26264
    :cond_3b
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$35800(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    .line 26265
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 26266
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$35800(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    .line 26267
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26274
    :cond_59
    :goto_59
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hasPromoData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26275
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getPromoData()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->mergePromoData(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    goto :goto_6

    .line 26269
    :cond_67
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->ensureStreamViewTypeIsMutable()V

    .line 26270
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$35800(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_59
.end method

.method public mergePromoData(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26566
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 26568
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 26574
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26575
    return-object p0

    .line 26571
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    goto :goto_20
.end method

.method public setCityLevelLocation(Z)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26376
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26377
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->cityLevelLocation_:Z

    .line 26379
    return-object p0
.end method

.method public setDefaultPostAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26428
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 26430
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26431
    return-object p0
.end method

.method public setDefaultPostAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26418
    if-nez p1, :cond_8

    .line 26419
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26421
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 26423
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26424
    return-object p0
.end method

.method public setHideLocation(Z)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26355
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26356
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->hideLocation_:Z

    .line 26358
    return-object p0
.end method

.method public setLocationSpeedbumpAcceptedDate(J)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 26397
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26398
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->locationSpeedbumpAcceptedDate_:J

    .line 26400
    return-object p0
.end method

.method public setPromoData(Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 26560
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 26562
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26563
    return-object p0
.end method

.method public setPromoData(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26550
    if-nez p1, :cond_8

    .line 26551
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26553
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 26555
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 26556
    return-object p0
.end method

.method public setStreamViewType(ILcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 26483
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->ensureStreamViewTypeIsMutable()V

    .line 26484
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26486
    return-object p0
.end method

.method public setStreamViewType(ILcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 26473
    if-nez p2, :cond_8

    .line 26474
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26476
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->ensureStreamViewTypeIsMutable()V

    .line 26477
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26479
    return-object p0
.end method
