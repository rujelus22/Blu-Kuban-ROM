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
    .line 28774
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 29020
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 29063
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    .line 29152
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 28775
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->maybeForceBuilderInitialization()V

    .line 28776
    return-void
.end method

.method static synthetic access$38400()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 1

    .prologue
    .line 28769
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 1

    .prologue
    .line 28781
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;-><init>()V

    return-object v0
.end method

.method private ensureStreamViewTypeIsMutable()V
    .registers 3

    .prologue
    .line 29066
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 29067
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    .line 29068
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 29070
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 28779
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
    .line 29133
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->ensureStreamViewTypeIsMutable()V

    .line 29134
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 29136
    return-object p0
.end method

.method public addStreamViewType(ILcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 29126
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->ensureStreamViewTypeIsMutable()V

    .line 29127
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29129
    return-object p0
.end method

.method public addStreamViewType(ILcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 29109
    if-nez p2, :cond_8

    .line 29110
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29112
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->ensureStreamViewTypeIsMutable()V

    .line 29113
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29115
    return-object p0
.end method

.method public addStreamViewType(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 29119
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->ensureStreamViewTypeIsMutable()V

    .line 29120
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29122
    return-object p0
.end method

.method public addStreamViewType(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29099
    if-nez p1, :cond_8

    .line 29100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29102
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->ensureStreamViewTypeIsMutable()V

    .line 29103
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29105
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    .registers 3

    .prologue
    .line 28810
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    .line 28811
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 28812
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 28814
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    .registers 6

    .prologue
    .line 28828
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;-><init>(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 28829
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 28830
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 28831
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 28832
    or-int/lit8 v2, v2, 0x1

    .line 28834
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->hideLocation_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hideLocation_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$38602(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;Z)Z

    .line 28835
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 28836
    or-int/lit8 v2, v2, 0x2

    .line 28838
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->cityLevelLocation_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->cityLevelLocation_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$38702(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;Z)Z

    .line 28839
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 28840
    or-int/lit8 v2, v2, 0x4

    .line 28842
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->locationSpeedbumpAcceptedDate_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->locationSpeedbumpAcceptedDate_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$38802(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;J)J

    .line 28843
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 28844
    or-int/lit8 v2, v2, 0x8

    .line 28846
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$38902(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 28847
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 28848
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    .line 28849
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 28851
    :cond_50
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$39002(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;Ljava/util/List;)Ljava/util/List;

    .line 28852
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5d

    .line 28853
    or-int/lit8 v2, v2, 0x10

    .line 28855
    :cond_5d
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$39102(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 28856
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$39202(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;I)I

    .line 28857
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 28769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 28785
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 28786
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->hideLocation_:Z

    .line 28787
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 28788
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->cityLevelLocation_:Z

    .line 28789
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 28790
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->locationSpeedbumpAcceptedDate_:J

    .line 28791
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 28792
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 28793
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 28794
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    .line 28795
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 28796
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 28797
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 28798
    return-object p0
.end method

.method public clearCityLevelLocation()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 2

    .prologue
    .line 28992
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 28993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->cityLevelLocation_:Z

    .line 28995
    return-object p0
.end method

.method public clearDefaultPostAudience()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 2

    .prologue
    .line 29056
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 29058
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 29059
    return-object p0
.end method

.method public clearHideLocation()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 2

    .prologue
    .line 28971
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 28972
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->hideLocation_:Z

    .line 28974
    return-object p0
.end method

.method public clearLocationSpeedbumpAcceptedDate()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3

    .prologue
    .line 29013
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 29014
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->locationSpeedbumpAcceptedDate_:J

    .line 29016
    return-object p0
.end method

.method public clearPromoData()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 2

    .prologue
    .line 29188
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 29190
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 29191
    return-object p0
.end method

.method public clearStreamViewType()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 2

    .prologue
    .line 29139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    .line 29140
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 29142
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 28769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 28769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3

    .prologue
    .line 28802
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
    .line 28769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCityLevelLocation()Z
    .registers 2

    .prologue
    .line 28983
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->cityLevelLocation_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 28769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    .registers 2

    .prologue
    .line 28806
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPostAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 29025
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public getHideLocation()Z
    .registers 2

    .prologue
    .line 28962
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->hideLocation_:Z

    return v0
.end method

.method public getLocationSpeedbumpAcceptedDate()J
    .registers 3

    .prologue
    .line 29004
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->locationSpeedbumpAcceptedDate_:J

    return-wide v0
.end method

.method public getPromoData()Lcom/google/wireless/tacotruck/proto/Data$Promo;
    .registers 2

    .prologue
    .line 29157
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    return-object v0
.end method

.method public getStreamViewType(I)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
    .registers 3
    .parameter "index"

    .prologue
    .line 29079
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    return-object v0
.end method

.method public getStreamViewTypeCount()I
    .registers 2

    .prologue
    .line 29076
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
    .line 29073
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCityLevelLocation()Z
    .registers 3

    .prologue
    .line 28980
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
    .line 29022
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

    .line 28959
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
    .line 29001
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
    .line 29154
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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 28891
    const/4 v0, 0x1

    return v0
.end method

.method public mergeDefaultPostAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29044
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 29046
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 29052
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 29053
    return-object p0

    .line 29049
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
    .line 28769
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 28769
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

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
    .line 28769
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
    .line 28899
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 28900
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_7c

    .line 28905
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28907
    :sswitch_d
    return-object p0

    .line 28912
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 28913
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->hideLocation_:Z

    goto :goto_0

    .line 28917
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 28918
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->cityLevelLocation_:Z

    goto :goto_0

    .line 28922
    :sswitch_28
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 28923
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->locationSpeedbumpAcceptedDate_:J

    goto :goto_0

    .line 28927
    :sswitch_35
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 28928
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->hasDefaultPostAudience()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 28929
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->getDefaultPostAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 28931
    :cond_46
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 28932
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->setDefaultPostAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    goto :goto_0

    .line 28936
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    :sswitch_51
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;

    move-result-object v0

    .line 28937
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 28938
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->addStreamViewType(Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    goto :goto_0

    .line 28942
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;
    :sswitch_60
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    .line 28943
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->hasPromoData()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 28944
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->getPromoData()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    .line 28946
    :cond_71
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 28947
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->setPromoData(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    goto :goto_0

    .line 28900
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
    .line 28861
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 28887
    :cond_6
    :goto_6
    return-object p0

    .line 28862
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hasHideLocation()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 28863
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getHideLocation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->setHideLocation(Z)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    .line 28865
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hasCityLevelLocation()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 28866
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getCityLevelLocation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->setCityLevelLocation(Z)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    .line 28868
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hasLocationSpeedbumpAcceptedDate()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 28869
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getLocationSpeedbumpAcceptedDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->setLocationSpeedbumpAcceptedDate(J)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    .line 28871
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hasDefaultPostAudience()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 28872
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultPostAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->mergeDefaultPostAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    .line 28874
    :cond_3b
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$39000(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    .line 28875
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 28876
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$39000(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    .line 28877
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 28884
    :cond_59
    :goto_59
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->hasPromoData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28885
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getPromoData()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->mergePromoData(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;

    goto :goto_6

    .line 28879
    :cond_67
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->ensureStreamViewTypeIsMutable()V

    .line 28880
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->streamViewType_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->access$39000(Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_59
.end method

.method public mergePromoData(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29176
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 29178
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Promo;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 29184
    :goto_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 29185
    return-object p0

    .line 29181
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    goto :goto_20
.end method

.method public setCityLevelLocation(Z)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28986
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 28987
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->cityLevelLocation_:Z

    .line 28989
    return-object p0
.end method

.method public setDefaultPostAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 29038
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 29040
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 29041
    return-object p0
.end method

.method public setDefaultPostAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29028
    if-nez p1, :cond_8

    .line 29029
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29031
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->defaultPostAudience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 29033
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 29034
    return-object p0
.end method

.method public setHideLocation(Z)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 28965
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 28966
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->hideLocation_:Z

    .line 28968
    return-object p0
.end method

.method public setLocationSpeedbumpAcceptedDate(J)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 29007
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 29008
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->locationSpeedbumpAcceptedDate_:J

    .line 29010
    return-object p0
.end method

.method public setPromoData(Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 29170
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Promo$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Promo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 29172
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 29173
    return-object p0
.end method

.method public setPromoData(Lcom/google/wireless/tacotruck/proto/Data$Promo;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 29160
    if-nez p1, :cond_8

    .line 29161
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29163
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->promoData_:Lcom/google/wireless/tacotruck/proto/Data$Promo;

    .line 29165
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->bitField0_:I

    .line 29166
    return-object p0
.end method

.method public setStreamViewType(ILcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 29093
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->ensureStreamViewTypeIsMutable()V

    .line 29094
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29096
    return-object p0
.end method

.method public setStreamViewType(ILcom/google/wireless/tacotruck/proto/Data$StreamViewType;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 29083
    if-nez p2, :cond_8

    .line 29084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 29086
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->ensureStreamViewTypeIsMutable()V

    .line 29087
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences$Builder;->streamViewType_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 29089
    return-object p0
.end method
