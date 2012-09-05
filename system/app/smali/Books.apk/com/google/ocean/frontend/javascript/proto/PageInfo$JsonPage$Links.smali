.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Links"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;


# instance fields
.field private hasRegion:Z

.field private hasTargetPid:Z

.field private hasUrl:Z

.field private memoizedSerializedSize:I

.field private region_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

.field private targetPid_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3425
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;-><init>(Z)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    .line 3426
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo;->internalForceInit()V

    .line 3427
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->initFields()V

    .line 3428
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3072
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3096
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->targetPid_:Ljava/lang/String;

    .line 3103
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->url_:Ljava/lang/String;

    .line 3131
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->memoizedSerializedSize:I

    .line 3073
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->initFields()V

    .line 3074
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 3069
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    .line 3075
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3096
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->targetPid_:Ljava/lang/String;

    .line 3103
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->url_:Ljava/lang/String;

    .line 3131
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->memoizedSerializedSize:I

    .line 3075
    return-void
.end method

.method static synthetic access$7602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasRegion:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3069
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->region_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    return-object v0
.end method

.method static synthetic access$7702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->region_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    return-object p1
.end method

.method static synthetic access$7802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasTargetPid:Z

    return p1
.end method

.method static synthetic access$7902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->targetPid_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasUrl:Z

    return p1
.end method

.method static synthetic access$8102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->url_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;
    .registers 1

    .prologue
    .line 3079
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 3108
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->region_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 3109
    return-void
.end method

.method public static newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;
    .registers 1

    .prologue
    .line 3220
    #calls: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;->access$7400()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRegion()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2

    .prologue
    .line 3091
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->region_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 3133
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->memoizedSerializedSize:I

    .line 3134
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 3150
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 3136
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 3137
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasRegion()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3138
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->getRegion()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3141
    :cond_18
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasTargetPid()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3142
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->getTargetPid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3145
    :cond_28
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3146
    const/16 v2, 0x13

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3149
    :cond_39
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->memoizedSerializedSize:I

    move v1, v0

    .line 3150
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public getTargetPid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->targetPid_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasRegion()Z
    .registers 2

    .prologue
    .line 3090
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasRegion:Z

    return v0
.end method

.method public hasTargetPid()Z
    .registers 2

    .prologue
    .line 3097
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasTargetPid:Z

    return v0
.end method

.method public hasUrl()Z
    .registers 2

    .prologue
    .line 3104
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 3111
    iget-boolean v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasRegion:Z

    if-nez v1, :cond_6

    .line 3114
    :cond_5
    :goto_5
    return v0

    .line 3112
    :cond_6
    iget-boolean v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasTargetPid:Z

    if-eqz v1, :cond_5

    .line 3113
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->getRegion()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3114
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3119
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->getSerializedSize()I

    .line 3120
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3121
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->getRegion()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3123
    :cond_11
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasTargetPid()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3124
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->getTargetPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3126
    :cond_1f
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3127
    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3129
    :cond_2e
    return-void
.end method
