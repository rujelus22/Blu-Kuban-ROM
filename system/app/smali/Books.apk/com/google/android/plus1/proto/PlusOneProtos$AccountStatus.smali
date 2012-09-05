.class public final Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlusOneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/proto/PlusOneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;


# instance fields
.field private displayName_:Ljava/lang/String;

.field private hasDisplayName:Z

.field private hasOptedIntoPlusOne:Z

.field private hasThumbnailUrl:Z

.field private memoizedSerializedSize:I

.field private optedIntoPlusOne_:Z

.field private thumbnailUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1097
    new-instance v0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;-><init>(Z)V

    sput-object v0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    .line 1098
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos;->internalForceInit()V

    .line 1099
    sget-object v0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    invoke-direct {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->initFields()V

    .line 1100
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->optedIntoPlusOne_:Z

    .line 796
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->displayName_:Ljava/lang/String;

    .line 803
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->thumbnailUrl_:Ljava/lang/String;

    .line 827
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->memoizedSerializedSize:I

    .line 773
    invoke-direct {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->initFields()V

    .line 774
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/plus1/proto/PlusOneProtos$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->optedIntoPlusOne_:Z

    .line 796
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->displayName_:Ljava/lang/String;

    .line 803
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->thumbnailUrl_:Ljava/lang/String;

    .line 827
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->memoizedSerializedSize:I

    .line 775
    return-void
.end method

.method static synthetic access$2202(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 769
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasOptedIntoPlusOne:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 769
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->optedIntoPlusOne_:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 769
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasDisplayName:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 769
    iput-object p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->displayName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 769
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasThumbnailUrl:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 769
    iput-object p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->thumbnailUrl_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
    .registers 1

    .prologue
    .line 779
    sget-object v0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 808
    return-void
.end method

.method public static newBuilder()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    .registers 1

    .prologue
    .line 916
    #calls: Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->create()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->access$2000()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 919
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->newBuilder()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;->mergeFrom(Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getOptedIntoPlusOne()Z
    .registers 2

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->optedIntoPlusOne_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 829
    iget v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->memoizedSerializedSize:I

    .line 830
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 846
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 832
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 833
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasOptedIntoPlusOne()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 834
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->getOptedIntoPlusOne()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 837
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasDisplayName()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 838
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 841
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasThumbnailUrl()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 842
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 845
    :cond_38
    iput v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->memoizedSerializedSize:I

    move v1, v0

    .line 846
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->thumbnailUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDisplayName()Z
    .registers 2

    .prologue
    .line 797
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasDisplayName:Z

    return v0
.end method

.method public hasOptedIntoPlusOne()Z
    .registers 2

    .prologue
    .line 790
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasOptedIntoPlusOne:Z

    return v0
.end method

.method public hasThumbnailUrl()Z
    .registers 2

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasThumbnailUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 810
    const/4 v0, 0x1

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
    .line 815
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->getSerializedSize()I

    .line 816
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasOptedIntoPlusOne()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 817
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->getOptedIntoPlusOne()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 819
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 820
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 822
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->hasThumbnailUrl()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 823
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 825
    :cond_2d
    return-void
.end method
