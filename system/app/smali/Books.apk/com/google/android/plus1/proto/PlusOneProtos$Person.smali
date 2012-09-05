.class public final Lcom/google/android/plus1/proto/PlusOneProtos$Person;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlusOneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/proto/PlusOneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Person"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$Person;


# instance fields
.field private displayName_:Ljava/lang/String;

.field private hasDisplayName:Z

.field private hasThumbnailUrl:Z

.field private memoizedSerializedSize:I

.field private thumbnailUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 300
    new-instance v0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;-><init>(Z)V

    sput-object v0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$Person;

    .line 301
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos;->internalForceInit()V

    .line 302
    sget-object v0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$Person;

    invoke-direct {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->initFields()V

    .line 303
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->displayName_:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->thumbnailUrl_:Ljava/lang/String;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->memoizedSerializedSize:I

    .line 15
    invoke-direct {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/plus1/proto/PlusOneProtos$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->displayName_:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->thumbnailUrl_:Ljava/lang/String;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->memoizedSerializedSize:I

    .line 17
    return-void
.end method

.method static synthetic access$302(Lcom/google/android/plus1/proto/PlusOneProtos$Person;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->hasDisplayName:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/android/plus1/proto/PlusOneProtos$Person;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->displayName_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/android/plus1/proto/PlusOneProtos$Person;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->hasThumbnailUrl:Z

    return p1
.end method

.method static synthetic access$602(Lcom/google/android/plus1/proto/PlusOneProtos$Person;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->thumbnailUrl_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/plus1/proto/PlusOneProtos$Person;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$Person;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 43
    return-void
.end method

.method public static newBuilder()Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;
    .registers 1

    .prologue
    .line 144
    #calls: Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;->create()Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;->access$100()Lcom/google/android/plus1/proto/PlusOneProtos$Person$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 61
    iget v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->memoizedSerializedSize:I

    .line 62
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 74
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 64
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->hasDisplayName()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 66
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 69
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->hasThumbnailUrl()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 70
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 73
    :cond_28
    iput v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->memoizedSerializedSize:I

    move v1, v0

    .line 74
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->thumbnailUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDisplayName()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->hasDisplayName:Z

    return v0
.end method

.method public hasThumbnailUrl()Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->hasThumbnailUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 45
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
    .line 50
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->getSerializedSize()I

    .line 51
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 54
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->hasThumbnailUrl()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 55
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$Person;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 57
    :cond_1f
    return-void
.end method
