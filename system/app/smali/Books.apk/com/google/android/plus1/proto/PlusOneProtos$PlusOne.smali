.class public final Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlusOneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/proto/PlusOneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusOne"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;


# instance fields
.field private abuseToken_:Ljava/lang/String;

.field private friend_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/plus1/proto/PlusOneProtos$Person;",
            ">;"
        }
    .end annotation
.end field

.field private hasAbuseToken:Z

.field private hasTotalPlusOneCount:Z

.field private hasUri:Z

.field private hasValue:Z

.field private memoizedSerializedSize:I

.field private totalPlusOneCount_:I

.field private uri_:Ljava/lang/String;

.field private value_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 761
    new-instance v0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;-><init>(Z)V

    sput-object v0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    .line 762
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos;->internalForceInit()V

    .line 763
    sget-object v0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    invoke-direct {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->initFields()V

    .line 764
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 311
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->uri_:Ljava/lang/String;

    .line 335
    iput-boolean v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->value_:Z

    .line 342
    iput v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->totalPlusOneCount_:I

    .line 348
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;

    .line 361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->abuseToken_:Ljava/lang/String;

    .line 391
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->memoizedSerializedSize:I

    .line 312
    invoke-direct {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->initFields()V

    .line 313
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/plus1/proto/PlusOneProtos$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4
    .parameter "noInit"

    .prologue
    const/4 v1, 0x0

    .line 314
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->uri_:Ljava/lang/String;

    .line 335
    iput-boolean v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->value_:Z

    .line 342
    iput v1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->totalPlusOneCount_:I

    .line 348
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;

    .line 361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->abuseToken_:Ljava/lang/String;

    .line 391
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->memoizedSerializedSize:I

    .line 314
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasUri:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->uri_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasValue:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->value_:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasTotalPlusOneCount:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->totalPlusOneCount_:I

    return p1
.end method

.method static synthetic access$1702(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasAbuseToken:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->abuseToken_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;
    .registers 1

    .prologue
    .line 318
    sget-object v0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 366
    return-void
.end method

.method public static newBuilder()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    .registers 1

    .prologue
    .line 488
    #calls: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->create()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;->access$800()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAbuseToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->abuseToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/plus1/proto/PlusOneProtos$Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->friend_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 393
    iget v2, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->memoizedSerializedSize:I

    .line 394
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    move v3, v2

    .line 418
    .end local v2           #size:I
    .local v3, size:I
    :goto_6
    return v3

    .line 396
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_7
    const/4 v2, 0x0

    .line 397
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasUri()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 398
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 401
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasValue()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 402
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getValue()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 405
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasTotalPlusOneCount()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 406
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getTotalPlusOneCount()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 409
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getFriendList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;

    .line 410
    .local v0, element:Lcom/google/android/plus1/proto/PlusOneProtos$Person;
    const/4 v4, 0x4

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_40

    .line 413
    .end local v0           #element:Lcom/google/android/plus1/proto/PlusOneProtos$Person;
    :cond_53
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasAbuseToken()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 414
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getAbuseToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 417
    :cond_63
    iput v2, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->memoizedSerializedSize:I

    move v3, v2

    .line 418
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_6
.end method

.method public getTotalPlusOneCount()I
    .registers 2

    .prologue
    .line 344
    iget v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->totalPlusOneCount_:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Z
    .registers 2

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->value_:Z

    return v0
.end method

.method public hasAbuseToken()Z
    .registers 2

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasAbuseToken:Z

    return v0
.end method

.method public hasTotalPlusOneCount()Z
    .registers 2

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasTotalPlusOneCount:Z

    return v0
.end method

.method public hasUri()Z
    .registers 2

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasUri:Z

    return v0
.end method

.method public hasValue()Z
    .registers 2

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasValue:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 368
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getSerializedSize()I

    .line 374
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasUri()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 375
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 377
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 378
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getValue()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 380
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasTotalPlusOneCount()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 381
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getTotalPlusOneCount()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 383
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getFriendList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/proto/PlusOneProtos$Person;

    .line 384
    .local v0, element:Lcom/google/android/plus1/proto/PlusOneProtos$Person;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_35

    .line 386
    .end local v0           #element:Lcom/google/android/plus1/proto/PlusOneProtos$Person;
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->hasAbuseToken()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 387
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;->getAbuseToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 389
    :cond_54
    return-void
.end method
