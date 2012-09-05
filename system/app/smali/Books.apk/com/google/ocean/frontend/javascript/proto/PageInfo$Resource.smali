.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Resource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;


# instance fields
.field private hasMimeType:Z

.field private hasUrl:Z

.field private memoizedSerializedSize:I

.field private mimeType_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3007
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;-><init>(Z)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    .line 3008
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo;->internalForceInit()V

    .line 3009
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->initFields()V

    .line 3010
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2720
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2737
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->url_:Ljava/lang/String;

    .line 2744
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->mimeType_:Ljava/lang/String;

    .line 2766
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->memoizedSerializedSize:I

    .line 2721
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->initFields()V

    .line 2722
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2717
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    .line 2723
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2737
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->url_:Ljava/lang/String;

    .line 2744
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->mimeType_:Ljava/lang/String;

    .line 2766
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->memoizedSerializedSize:I

    .line 2723
    return-void
.end method

.method static synthetic access$6902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2717
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->hasUrl:Z

    return p1
.end method

.method static synthetic access$7002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2717
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->url_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2717
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->hasMimeType:Z

    return p1
.end method

.method static synthetic access$7202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2717
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->mimeType_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;
    .registers 1

    .prologue
    .line 2727
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 2749
    return-void
.end method

.method public static newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;
    .registers 1

    .prologue
    .line 2851
    #calls: Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->access$6700()Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2746
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->mimeType_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 2768
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->memoizedSerializedSize:I

    .line 2769
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 2781
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 2771
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 2772
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2773
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2776
    :cond_18
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->hasMimeType()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2777
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2780
    :cond_28
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->memoizedSerializedSize:I

    move v1, v0

    .line 2781
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2739
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasMimeType()Z
    .registers 2

    .prologue
    .line 2745
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->hasMimeType:Z

    return v0
.end method

.method public hasUrl()Z
    .registers 2

    .prologue
    .line 2738
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->hasUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 2751
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->hasUrl:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 2752
    :goto_5
    return v0

    :cond_6
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
    .line 2757
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->getSerializedSize()I

    .line 2758
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2759
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2761
    :cond_11
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->hasMimeType()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2762
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2764
    :cond_1f
    return-void
.end method
