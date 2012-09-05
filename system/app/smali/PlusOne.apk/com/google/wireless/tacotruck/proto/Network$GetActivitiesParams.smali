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
    .line 4019
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    .line 4020
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->initFields()V

    .line 4021
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2864
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3235
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedIsInitialized:B

    .line 3288
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedSerializedSize:I

    .line 2865
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2859
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2866
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3235
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedIsInitialized:B

    .line 3288
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedSerializedSize:I

    .line 2866
    return-void
.end method

.method static synthetic access$3902(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2859
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->searchQuery_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2859
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2859
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->userGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$4202(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2859
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2859
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->continuationToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2859
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusGroupId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2859
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->gaiaGroupId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2859
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2859
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->maxCount_:I

    return p1
.end method

.method static synthetic access$4802(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2859
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2859
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->collapsedDataOnly_:Z

    return p1
.end method

.method static synthetic access$5002(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2859
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    return p1
.end method

.method private getContinuationTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3107
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->continuationToken_:Ljava/lang/Object;

    .line 3108
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3109
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3111
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->continuationToken_:Ljava/lang/Object;

    .line 3114
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
    .line 2870
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    return-object v0
.end method

.method private getFocusGroupIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3139
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusGroupId_:Ljava/lang/Object;

    .line 3140
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3141
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3143
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusGroupId_:Ljava/lang/Object;

    .line 3146
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
    .line 3075
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3076
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3077
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3079
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3082
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
    .line 3171
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->gaiaGroupId_:Ljava/lang/Object;

    .line 3172
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3173
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3175
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->gaiaGroupId_:Ljava/lang/Object;

    .line 3178
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
    .line 3023
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->searchQuery_:Ljava/lang/Object;

    .line 3024
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3025
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3027
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->searchQuery_:Ljava/lang/Object;

    .line 3030
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

    .line 3223
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->searchQuery_:Ljava/lang/Object;

    .line 3224
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3225
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->userGaiaId_:J

    .line 3226
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3227
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->continuationToken_:Ljava/lang/Object;

    .line 3228
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusGroupId_:Ljava/lang/Object;

    .line 3229
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->gaiaGroupId_:Ljava/lang/Object;

    .line 3230
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->BEST:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    .line 3231
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->maxCount_:I

    .line 3232
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->ALL:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    .line 3233
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->collapsedDataOnly_:Z

    .line 3234
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 1

    .prologue
    .line 3416
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;->access$3700()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3419
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
    .line 3219
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->collapsedDataOnly_:Z

    return v0
.end method

.method public getContinuationToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3093
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->continuationToken_:Ljava/lang/Object;

    .line 3094
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3095
    check-cast v1, Ljava/lang/String;

    .line 3103
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3097
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3099
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3100
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3101
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->continuationToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3103
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2859
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;
    .registers 2

    .prologue
    .line 2874
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;

    return-object v0
.end method

.method public getFocusGroupId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3125
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusGroupId_:Ljava/lang/Object;

    .line 3126
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3127
    check-cast v1, Ljava/lang/String;

    .line 3135
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3129
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3131
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3132
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3133
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusGroupId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3135
    goto :goto_8
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3061
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusObfuscatedId_:Ljava/lang/Object;

    .line 3062
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3063
    check-cast v1, Ljava/lang/String;

    .line 3071
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3065
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3067
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3068
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3069
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->focusObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3071
    goto :goto_8
.end method

.method public getGaiaGroupId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3157
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->gaiaGroupId_:Ljava/lang/Object;

    .line 3158
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3159
    check-cast v1, Ljava/lang/String;

    .line 3167
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3161
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3163
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3164
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3165
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->gaiaGroupId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3167
    goto :goto_8
.end method

.method public getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2

    .prologue
    .line 3041
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getMaxCount()I
    .registers 2

    .prologue
    .line 3199
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->maxCount_:I

    return v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3009
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->searchQuery_:Ljava/lang/Object;

    .line 3010
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3011
    check-cast v1, Ljava/lang/String;

    .line 3019
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3013
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3015
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3016
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3017
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->searchQuery_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3019
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3290
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedSerializedSize:I

    .line 3291
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 3339
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 3293
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 3294
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 3295
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getSearchQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3298
    :cond_1c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 3299
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3302
    :cond_29
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 3303
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->userGaiaId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3306
    :cond_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_48

    .line 3307
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getContinuationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3310
    :cond_48
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5a

    .line 3311
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusGroupIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3314
    :cond_5a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6c

    .line 3315
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getGaiaGroupIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3318
    :cond_6c
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_80

    .line 3319
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3322
    :cond_80
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8f

    .line 3323
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->maxCount_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3326
    :cond_8f
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a4

    .line 3327
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3330
    :cond_a4
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_b5

    .line 3331
    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3334
    :cond_b5
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_c6

    .line 3335
    const/16 v2, 0xb

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->collapsedDataOnly_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3338
    :cond_c6
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedSerializedSize:I

    move v1, v0

    .line 3339
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getSorting()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    return-object v0
.end method

.method public getUserGaiaId()J
    .registers 3

    .prologue
    .line 3051
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->userGaiaId_:J

    return-wide v0
.end method

.method public getView()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;
    .registers 2

    .prologue
    .line 3209
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    return-object v0
.end method

.method public hasCollapsedDataOnly()Z
    .registers 3

    .prologue
    .line 3216
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
    .line 3090
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

.method public hasFocusGroupId()Z
    .registers 3

    .prologue
    .line 3122
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
    .line 3058
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
    .line 3154
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
    .line 3038
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
    .line 3196
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

    .line 3006
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
    .line 3186
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
    .line 3048
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
    .line 3206
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

    .line 3237
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedIsInitialized:B

    .line 3238
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 3247
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 3238
    goto :goto_9

    .line 3240
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->hasLocation()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3241
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 3242
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedIsInitialized:B

    move v1, v2

    .line 3243
    goto :goto_9

    .line 3246
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 3346
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

    .line 3252
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getSerializedSize()I

    .line 3253
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 3254
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getSearchQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3256
    :cond_15
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 3257
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3259
    :cond_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 3260
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->userGaiaId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3262
    :cond_2c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3b

    .line 3263
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getContinuationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3265
    :cond_3b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4b

    .line 3266
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusGroupIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3268
    :cond_4b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_5b

    .line 3269
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getGaiaGroupIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3271
    :cond_5b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_6d

    .line 3272
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->sorting_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$ViewSorting;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3274
    :cond_6d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_7a

    .line 3275
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->maxCount_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3277
    :cond_7a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_8d

    .line 3278
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->view_:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3280
    :cond_8d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_9c

    .line 3281
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3283
    :cond_9c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_ab

    .line 3284
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams;->collapsedDataOnly_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3286
    :cond_ab
    return-void
.end method
