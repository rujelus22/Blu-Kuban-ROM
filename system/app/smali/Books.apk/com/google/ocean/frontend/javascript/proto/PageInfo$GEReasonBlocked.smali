.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GEReasonBlocked"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;,
        Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;


# instance fields
.field private hasNumAllowedConcurrentAccesses:Z

.field private hasNumAllowedOfflineDevices:Z

.field private hasOrderUrl:Z

.field private hasReason:Z

.field private memoizedSerializedSize:I

.field private numAllowedConcurrentAccesses_:I

.field private numAllowedOfflineDevices_:I

.field private orderUrl_:Ljava/lang/String;

.field private reason_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2379
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;-><init>(Z)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    .line 2380
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo;->internalForceInit()V

    .line 2381
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->initFields()V

    .line 2382
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1961
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2034
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->numAllowedOfflineDevices_:I

    .line 2041
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->numAllowedConcurrentAccesses_:I

    .line 2048
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->orderUrl_:Ljava/lang/String;

    .line 2076
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->memoizedSerializedSize:I

    .line 1962
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->initFields()V

    .line 1963
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1958
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, 0x0

    .line 1964
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2034
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->numAllowedOfflineDevices_:I

    .line 2041
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->numAllowedConcurrentAccesses_:I

    .line 2048
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->orderUrl_:Ljava/lang/String;

    .line 2076
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->memoizedSerializedSize:I

    .line 1964
    return-void
.end method

.method static synthetic access$4902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1958
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasReason:Z

    return p1
.end method

.method static synthetic access$5002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1958
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->reason_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1958
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasNumAllowedOfflineDevices:Z

    return p1
.end method

.method static synthetic access$5202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1958
    iput p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->numAllowedOfflineDevices_:I

    return p1
.end method

.method static synthetic access$5302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1958
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasNumAllowedConcurrentAccesses:Z

    return p1
.end method

.method static synthetic access$5402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1958
    iput p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->numAllowedConcurrentAccesses_:I

    return p1
.end method

.method static synthetic access$5502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1958
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasOrderUrl:Z

    return p1
.end method

.method static synthetic access$5602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1958
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->orderUrl_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;
    .registers 1

    .prologue
    .line 1968
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 2053
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->NOT_BLOCKED:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->reason_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    .line 2054
    return-void
.end method

.method public static newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;
    .registers 1

    .prologue
    .line 2169
    #calls: Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->access$4700()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2172
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getNumAllowedConcurrentAccesses()I
    .registers 2

    .prologue
    .line 2043
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->numAllowedConcurrentAccesses_:I

    return v0
.end method

.method public getNumAllowedOfflineDevices()I
    .registers 2

    .prologue
    .line 2036
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->numAllowedOfflineDevices_:I

    return v0
.end method

.method public getOrderUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->orderUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;
    .registers 2

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->reason_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 2078
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->memoizedSerializedSize:I

    .line 2079
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 2099
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 2081
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 2082
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasReason()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2083
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getReason()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2086
    :cond_1c
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasNumAllowedOfflineDevices()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2087
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getNumAllowedOfflineDevices()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2090
    :cond_2c
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasNumAllowedConcurrentAccesses()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2091
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getNumAllowedConcurrentAccesses()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2094
    :cond_3c
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasOrderUrl()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 2095
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getOrderUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2098
    :cond_4c
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->memoizedSerializedSize:I

    move v1, v0

    .line 2099
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public hasNumAllowedConcurrentAccesses()Z
    .registers 2

    .prologue
    .line 2042
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasNumAllowedConcurrentAccesses:Z

    return v0
.end method

.method public hasNumAllowedOfflineDevices()Z
    .registers 2

    .prologue
    .line 2035
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasNumAllowedOfflineDevices:Z

    return v0
.end method

.method public hasOrderUrl()Z
    .registers 2

    .prologue
    .line 2049
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasOrderUrl:Z

    return v0
.end method

.method public hasReason()Z
    .registers 2

    .prologue
    .line 2028
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasReason:Z

    return v0
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
    .line 2061
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getSerializedSize()I

    .line 2062
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2063
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getReason()Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2065
    :cond_15
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasNumAllowedOfflineDevices()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2066
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getNumAllowedOfflineDevices()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2068
    :cond_23
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasNumAllowedConcurrentAccesses()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2069
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getNumAllowedConcurrentAccesses()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2071
    :cond_31
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->hasOrderUrl()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2072
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;->getOrderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2074
    :cond_3f
    return-void
.end method
