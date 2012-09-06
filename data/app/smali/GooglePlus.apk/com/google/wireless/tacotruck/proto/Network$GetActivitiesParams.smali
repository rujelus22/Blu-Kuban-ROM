.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetActivitiesParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;,
        Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private collapsedDataOnly_:Z

.field private continuationToken_:Ljava/lang/Object;

.field private fetchPopularPost_:Z

.field private focusGroupId_:Ljava/lang/Object;

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private gaiaGroupId_:Ljava/lang/Object;

.field private location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

.field private maxCount_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private searchQuery_:Ljava/lang/Object;

.field private sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

.field private userGaiaId_:J

.field private view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4196
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 4197
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->initFields()V

    .line 4198
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2988
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3370
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedIsInitialized:B

    .line 3426
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedSerializedSize:I

    .line 2989
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2983
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2990
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3370
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedIsInitialized:B

    .line 3426
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedSerializedSize:I

    .line 2990
    return-void
.end method

.method static synthetic access$4002(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2983
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->searchQuery_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2983
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2983
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->userGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$4302(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2983
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2983
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->continuationToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2983
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusGroupId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2983
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->gaiaGroupId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2983
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2983
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->maxCount_:I

    return p1
.end method

.method static synthetic access$4902(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2983
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2983
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->collapsedDataOnly_:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2983
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->fetchPopularPost_:Z

    return p1
.end method

.method static synthetic access$5202(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2983
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    return p1
.end method

.method private getContinuationTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3231
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->continuationToken_:Ljava/lang/Object;

    .line 3232
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3233
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3235
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->continuationToken_:Ljava/lang/Object;

    .line 3238
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 1

    .prologue
    .line 2994
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    return-object v0
.end method

.method private getFocusGroupIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3263
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusGroupId_:Ljava/lang/Object;

    .line 3264
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3265
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3267
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusGroupId_:Ljava/lang/Object;

    .line 3270
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

.method private getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3199
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3200
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3201
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3203
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3206
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

.method private getGaiaGroupIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3295
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->gaiaGroupId_:Ljava/lang/Object;

    .line 3296
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3297
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3299
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->gaiaGroupId_:Ljava/lang/Object;

    .line 3302
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

.method private getSearchQueryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3147
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->searchQuery_:Ljava/lang/Object;

    .line 3148
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3149
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3151
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->searchQuery_:Ljava/lang/Object;

    .line 3154
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

.method private initFields()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3357
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->searchQuery_:Ljava/lang/Object;

    .line 3358
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3359
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->userGaiaId_:J

    .line 3360
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->continuationToken_:Ljava/lang/Object;

    .line 3362
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusGroupId_:Ljava/lang/Object;

    .line 3363
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->gaiaGroupId_:Ljava/lang/Object;

    .line 3364
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->BEST:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    .line 3365
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->maxCount_:I

    .line 3366
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3367
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->collapsedDataOnly_:Z

    .line 3368
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->fetchPopularPost_:Z

    .line 3369
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 1

    .prologue
    .line 3558
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->access$3800()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3561
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCollapsedDataOnly()Z
    .registers 2

    .prologue
    .line 3343
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->collapsedDataOnly_:Z

    return v0
.end method

.method public getContinuationToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3217
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->continuationToken_:Ljava/lang/Object;

    .line 3218
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3219
    check-cast v1, Ljava/lang/String;

    .line 3227
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3221
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3223
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3224
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3225
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->continuationToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3227
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2983
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 2

    .prologue
    .line 2998
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    return-object v0
.end method

.method public getFetchPopularPost()Z
    .registers 2

    .prologue
    .line 3353
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->fetchPopularPost_:Z

    return v0
.end method

.method public getFocusGroupId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3249
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusGroupId_:Ljava/lang/Object;

    .line 3250
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3251
    check-cast v1, Ljava/lang/String;

    .line 3259
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3253
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3255
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3256
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3257
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusGroupId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3259
    goto :goto_8
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3185
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3186
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3187
    check-cast v1, Ljava/lang/String;

    .line 3195
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3189
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3191
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3192
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3193
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3195
    goto :goto_8
.end method

.method public getGaiaGroupId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3281
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->gaiaGroupId_:Ljava/lang/Object;

    .line 3282
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3283
    check-cast v1, Ljava/lang/String;

    .line 3291
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3285
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3287
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3288
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3289
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->gaiaGroupId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3291
    goto :goto_8
.end method

.method public getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2

    .prologue
    .line 3165
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getMaxCount()I
    .registers 2

    .prologue
    .line 3323
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->maxCount_:I

    return v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3133
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->searchQuery_:Ljava/lang/Object;

    .line 3134
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3135
    check-cast v1, Ljava/lang/String;

    .line 3143
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3137
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3139
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3140
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3141
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->searchQuery_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3143
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3428
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedSerializedSize:I

    .line 3429
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 3481
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 3431
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 3432
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 3433
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getSearchQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3436
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 3437
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3440
    :cond_29
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 3441
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->userGaiaId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3444
    :cond_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_48

    .line 3445
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getContinuationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3448
    :cond_48
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5a

    .line 3449
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusGroupIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3452
    :cond_5a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6c

    .line 3453
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getGaiaGroupIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3456
    :cond_6c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_80

    .line 3457
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3460
    :cond_80
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8f

    .line 3461
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->maxCount_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3464
    :cond_8f
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a4

    .line 3465
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3468
    :cond_a4
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_b5

    .line 3469
    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3472
    :cond_b5
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_c6

    .line 3473
    const/16 v2, 0xb

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->collapsedDataOnly_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3476
    :cond_c6
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_d7

    .line 3477
    const/16 v2, 0xc

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->fetchPopularPost_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3480
    :cond_d7
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedSerializedSize:I

    move v1, v0

    .line 3481
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getSorting()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    return-object v0
.end method

.method public getUserGaiaId()J
    .registers 3

    .prologue
    .line 3175
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->userGaiaId_:J

    return-wide v0
.end method

.method public getView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .registers 2

    .prologue
    .line 3333
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    return-object v0
.end method

.method public hasCollapsedDataOnly()Z
    .registers 3

    .prologue
    .line 3340
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasContinuationToken()Z
    .registers 3

    .prologue
    .line 3214
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

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

.method public hasFetchPopularPost()Z
    .registers 3

    .prologue
    .line 3350
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasFocusGroupId()Z
    .registers 3

    .prologue
    .line 3246
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

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

.method public hasFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 3182
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

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

.method public hasGaiaGroupId()Z
    .registers 3

    .prologue
    .line 3278
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLocation()Z
    .registers 3

    .prologue
    .line 3162
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

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

.method public hasMaxCount()Z
    .registers 3

    .prologue
    .line 3320
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSearchQuery()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 3130
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSorting()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3310
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasUserGaiaId()Z
    .registers 3

    .prologue
    .line 3172
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

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

.method public hasView()Z
    .registers 3

    .prologue
    .line 3330
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3372
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedIsInitialized:B

    .line 3373
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 3382
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 3373
    goto :goto_9

    .line 3375
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasLocation()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3376
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 3377
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedIsInitialized:B

    move v1, v2

    .line 3378
    goto :goto_9

    .line 3381
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2983
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 3559
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2983
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2

    .prologue
    .line 3563
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 3488
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3387
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getSerializedSize()I

    .line 3388
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 3389
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getSearchQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3391
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 3392
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3394
    :cond_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 3395
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->userGaiaId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3397
    :cond_2c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3b

    .line 3398
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getContinuationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3400
    :cond_3b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4b

    .line 3401
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusGroupIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3403
    :cond_4b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_5b

    .line 3404
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getGaiaGroupIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3406
    :cond_5b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6d

    .line 3407
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3409
    :cond_6d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_7a

    .line 3410
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->maxCount_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3412
    :cond_7a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_8d

    .line 3413
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3415
    :cond_8d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_9c

    .line 3416
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3418
    :cond_9c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_ab

    .line 3419
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->collapsedDataOnly_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3421
    :cond_ab
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_ba

    .line 3422
    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->fetchPopularPost_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3424
    :cond_ba
    return-void
.end method
