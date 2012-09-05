.class public final Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlusOneProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/proto/PlusOneProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusOneStore"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;


# instance fields
.field private accountStatus_:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

.field private hasAccountStatus:Z

.field private memoizedSerializedSize:I

.field private operation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/plus1/proto/PlusOneProtos$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private plusOne_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1921
    new-instance v0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;-><init>(Z)V

    sput-object v0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    .line 1922
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos;->internalForceInit()V

    .line 1923
    sget-object v0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    invoke-direct {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->initFields()V

    .line 1924
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1483
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1506
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->plusOne_:Ljava/util/List;

    .line 1518
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->operation_:Ljava/util/List;

    .line 1549
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->memoizedSerializedSize:I

    .line 1484
    invoke-direct {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->initFields()V

    .line 1485
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/plus1/proto/PlusOneProtos$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1480
    invoke-direct {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    .line 1486
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1506
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->plusOne_:Ljava/util/List;

    .line 1518
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->operation_:Ljava/util/List;

    .line 1549
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->memoizedSerializedSize:I

    .line 1486
    return-void
.end method

.method static synthetic access$4200(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->plusOne_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->plusOne_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->operation_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->operation_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1480
    iput-boolean p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->hasAccountStatus:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->accountStatus_:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;)Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->accountStatus_:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;
    .registers 1

    .prologue
    .line 1490
    sget-object v0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->defaultInstance:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1529
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;->getDefaultInstance()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->accountStatus_:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    .line 1530
    return-void
.end method

.method public static newBuilder()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    .registers 1

    .prologue
    .line 1638
    #calls: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->create()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->access$4000()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1585
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->newBuilder()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    #calls: Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->buildParsed()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->access$3900(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccountStatus()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;
    .registers 2

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->accountStatus_:Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    return-object v0
.end method

.method public getOperationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/plus1/proto/PlusOneProtos$Operation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->operation_:Ljava/util/List;

    return-object v0
.end method

.method public getPlusOneList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->plusOne_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 1551
    iget v2, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->memoizedSerializedSize:I

    .line 1552
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    move v3, v2

    .line 1568
    .end local v2           #size:I
    .local v3, size:I
    :goto_6
    return v3

    .line 1554
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_7
    const/4 v2, 0x0

    .line 1555
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->hasAccountStatus()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1556
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->getAccountStatus()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1559
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->getPlusOneList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    .line 1560
    .local v0, element:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;
    const/4 v4, 0x2

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_20

    .line 1563
    .end local v0           #element:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;
    :cond_33
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->getOperationList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    .line 1564
    .local v0, element:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;
    const/4 v4, 0x3

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_3b

    .line 1567
    .end local v0           #element:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;
    :cond_4e
    iput v2, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->memoizedSerializedSize:I

    move v3, v2

    .line 1568
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_6
.end method

.method public hasAccountStatus()Z
    .registers 2

    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->hasAccountStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1532
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
    .line 1537
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->getSerializedSize()I

    .line 1538
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->hasAccountStatus()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1539
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->getAccountStatus()Lcom/google/android/plus1/proto/PlusOneProtos$AccountStatus;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1541
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->getPlusOneList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;

    .line 1542
    .local v0, element:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_19

    .line 1544
    .end local v0           #element:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOne;
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->getOperationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/proto/PlusOneProtos$Operation;

    .line 1545
    .local v0, element:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_32

    .line 1547
    .end local v0           #element:Lcom/google/android/plus1/proto/PlusOneProtos$Operation;
    :cond_43
    return-void
.end method
