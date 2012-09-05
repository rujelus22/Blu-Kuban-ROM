.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OFEBox"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;


# instance fields
.field private h_:I

.field private hasH:Z

.field private hasW:Z

.field private hasX:Z

.field private hasY:Z

.field private memoizedSerializedSize:I

.field private w_:I

.field private x_:I

.field private y_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 376
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;-><init>(Z)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 377
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo;->internalForceInit()V

    .line 378
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->initFields()V

    .line 379
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->x_:I

    .line 38
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->y_:I

    .line 45
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->w_:I

    .line 52
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->h_:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->memoizedSerializedSize:I

    .line 15
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->x_:I

    .line 38
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->y_:I

    .line 45
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->w_:I

    .line 52
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->h_:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->memoizedSerializedSize:I

    .line 17
    return-void
.end method

.method static synthetic access$1002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->h_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasX:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->x_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasY:Z

    return p1
.end method

.method static synthetic access$602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->y_:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasW:Z

    return p1
.end method

.method static synthetic access$802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->w_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasH:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 57
    return-void
.end method

.method public static newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    .registers 1

    .prologue
    .line 176
    #calls: Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->access$100()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 179
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getH()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->h_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 85
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->memoizedSerializedSize:I

    .line 86
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 106
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 88
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasX()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 90
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getX()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 93
    :cond_18
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasY()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 94
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getY()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 97
    :cond_28
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasW()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 98
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getW()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 101
    :cond_38
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasH()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 102
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getH()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 105
    :cond_48
    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->memoizedSerializedSize:I

    move v1, v0

    .line 106
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public getW()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->w_:I

    return v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->x_:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->y_:I

    return v0
.end method

.method public hasH()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasH:Z

    return v0
.end method

.method public hasW()Z
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasW:Z

    return v0
.end method

.method public hasX()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasX:Z

    return v0
.end method

.method public hasY()Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasY:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-boolean v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasX:Z

    if-nez v1, :cond_6

    .line 63
    :cond_5
    :goto_5
    return v0

    .line 60
    :cond_6
    iget-boolean v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasY:Z

    if-eqz v1, :cond_5

    .line 61
    iget-boolean v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasW:Z

    if-eqz v1, :cond_5

    .line 62
    iget-boolean v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasH:Z

    if-eqz v1, :cond_5

    .line 63
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
    .line 68
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getSerializedSize()I

    .line 69
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasX()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getX()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 72
    :cond_11
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasY()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 73
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 75
    :cond_1f
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasW()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 76
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getW()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 78
    :cond_2d
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->hasH()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 79
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getH()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 81
    :cond_3b
    return-void
.end method
