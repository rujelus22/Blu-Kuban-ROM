.class public final Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$MobileShapeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileShape"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;,
        Lcom/google/wireless/tacotruck/proto/Data$MobileShape$RectOrBuilder;,
        Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

.field private focusObfuscatedSubjectId_:Ljava/lang/Object;

.field private id_:J

.field private lowerRightX_:I

.field private lowerRightY_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private nameTagCreatorGaiaId_:J

.field private normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

.field private photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

.field private status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

.field private subjectGaiaId_:J

.field private suggestion_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private upperLeftX_:I

.field private upperLeftY_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21567
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    .line 21568
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->initFields()V

    .line 21569
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 19892
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 20648
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedIsInitialized:B

    .line 20707
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedSerializedSize:I

    .line 19893
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19887
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;-><init>(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 19894
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20648
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedIsInitialized:B

    .line 20707
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedSerializedSize:I

    .line 19894
    return-void
.end method

.method static synthetic access$27402(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19887
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->id_:J

    return-wide p1
.end method

.method static synthetic access$27502(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19887
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftX_:I

    return p1
.end method

.method static synthetic access$27602(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19887
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftY_:I

    return p1
.end method

.method static synthetic access$27702(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19887
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightX_:I

    return p1
.end method

.method static synthetic access$27802(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19887
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightY_:I

    return p1
.end method

.method static synthetic access$27902(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19887
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    return-object p1
.end method

.method static synthetic access$28002(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19887
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->subjectGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$28102(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19887
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28200(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19887
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$28202(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19887
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$28302(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19887
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    return-object p1
.end method

.method static synthetic access$28402(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19887
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->nameTagCreatorGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$28502(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19887
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28602(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19887
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    return-object p1
.end method

.method static synthetic access$28702(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19887
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    .registers 1

    .prologue
    .line 19898
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    return-object v0
.end method

.method private getFocusObfuscatedNameTagCreatorIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 20612
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 20613
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 20614
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20616
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 20619
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

.method private getFocusObfuscatedSubjectIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 20539
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 20540
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 20541
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20543
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 20546
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
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 20634
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->id_:J

    .line 20635
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftX_:I

    .line 20636
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftY_:I

    .line 20637
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightX_:I

    .line 20638
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightY_:I

    .line 20639
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 20640
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->subjectGaiaId_:J

    .line 20641
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 20642
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    .line 20643
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->UNNAMED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 20644
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->nameTagCreatorGaiaId_:J

    .line 20645
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 20646
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 20647
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 1

    .prologue
    .line 20843
    #calls: Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->access$27200()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 20846
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19887
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    .registers 2

    .prologue
    .line 19902
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    return-object v0
.end method

.method public getFocusObfuscatedNameTagCreatorId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 20598
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 20599
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 20600
    check-cast v1, Ljava/lang/String;

    .line 20608
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 20602
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 20604
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 20605
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 20606
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 20608
    goto :goto_8
.end method

.method public getFocusObfuscatedSubjectId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 20525
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 20526
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 20527
    check-cast v1, Ljava/lang/String;

    .line 20535
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 20529
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 20531
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 20532
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 20533
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 20535
    goto :goto_8
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 20455
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->id_:J

    return-wide v0
.end method

.method public getLowerRightX()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20485
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightX_:I

    return v0
.end method

.method public getLowerRightY()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20495
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightY_:I

    return v0
.end method

.method public getNameTagCreatorGaiaId()J
    .registers 3

    .prologue
    .line 20588
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->nameTagCreatorGaiaId_:J

    return-wide v0
.end method

.method public getNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2

    .prologue
    .line 20630
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    return-object v0
.end method

.method public getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 2

    .prologue
    .line 20505
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 20709
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedSerializedSize:I

    .line 20710
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 20766
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 20712
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 20713
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1a

    .line 20714
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->id_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 20717
    :cond_1a
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v6, :cond_27

    .line 20718
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftX_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 20721
    :cond_27
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_35

    .line 20722
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftY_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 20725
    :cond_35
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v8, :cond_42

    .line 20726
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightX_:I

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 20729
    :cond_42
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_52

    .line 20730
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightY_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 20733
    :cond_52
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_62

    .line 20734
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 20737
    :cond_62
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_72

    .line 20738
    const/4 v3, 0x7

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->subjectGaiaId_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 20741
    :cond_72
    const/4 v0, 0x0

    .local v0, i:I
    :goto_73
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8b

    .line 20742
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 20741
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 20745
    :cond_8b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_a0

    .line 20746
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 20749
    :cond_a0
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_b1

    .line 20750
    const/16 v3, 0xa

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->nameTagCreatorGaiaId_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 20753
    :cond_b1
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_c2

    .line 20754
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 20757
    :cond_c2
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_d5

    .line 20758
    const/16 v3, 0xc

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedSubjectIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 20761
    :cond_d5
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_e8

    .line 20762
    const/16 v3, 0xd

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedNameTagCreatorIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 20765
    :cond_e8
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedSerializedSize:I

    move v2, v1

    .line 20766
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getStatus()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
    .registers 2

    .prologue
    .line 20578
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    return-object v0
.end method

.method public getSubjectGaiaId()J
    .registers 3

    .prologue
    .line 20515
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->subjectGaiaId_:J

    return-wide v0
.end method

.method public getSuggestion(I)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;
    .registers 3
    .parameter "index"

    .prologue
    .line 20564
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    return-object v0
.end method

.method public getSuggestionCount()I
    .registers 2

    .prologue
    .line 20561
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSuggestionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20554
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestionOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestionOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 20568
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestionOrBuilder;

    return-object v0
.end method

.method public getSuggestionOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20558
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    return-object v0
.end method

.method public getUpperLeftX()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20465
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftX_:I

    return v0
.end method

.method public getUpperLeftY()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20475
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftY_:I

    return v0
.end method

.method public hasFocusObfuscatedNameTagCreatorId()Z
    .registers 3

    .prologue
    .line 20595
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

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

.method public hasFocusObfuscatedSubjectId()Z
    .registers 3

    .prologue
    .line 20522
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 20452
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLowerRightX()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20482
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

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

.method public hasLowerRightY()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20492
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

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

.method public hasNameTagCreatorGaiaId()Z
    .registers 3

    .prologue
    .line 20585
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

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

.method public hasNormalizedBounds()Z
    .registers 3

    .prologue
    .line 20627
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

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

.method public hasPhotoActionState()Z
    .registers 3

    .prologue
    .line 20502
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    .line 20575
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

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

.method public hasSubjectGaiaId()Z
    .registers 3

    .prologue
    .line 20512
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

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

.method public hasUpperLeftX()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20462
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

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

.method public hasUpperLeftY()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20472
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 20650
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedIsInitialized:B

    .line 20651
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 20660
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 20651
    goto :goto_9

    .line 20653
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasNormalizedBounds()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 20654
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 20655
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedIsInitialized:B

    move v1, v2

    .line 20656
    goto :goto_9

    .line 20659
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19887
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2

    .prologue
    .line 20844
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19887
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 2

    .prologue
    .line 20848
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

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
    .line 20773
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 20665
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getSerializedSize()I

    .line 20666
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_13

    .line 20667
    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->id_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 20669
    :cond_13
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1e

    .line 20670
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftX_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 20672
    :cond_1e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2a

    .line 20673
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftY_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 20675
    :cond_2a
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_35

    .line 20676
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightX_:I

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 20678
    :cond_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_43

    .line 20679
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightY_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 20681
    :cond_43
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_51

    .line 20682
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 20684
    :cond_51
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5f

    .line 20685
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->subjectGaiaId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 20687
    :cond_5f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_60
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_76

    .line 20688
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 20687
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 20690
    :cond_76
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_89

    .line 20691
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 20693
    :cond_89
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_98

    .line 20694
    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->nameTagCreatorGaiaId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 20696
    :cond_98
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_a7

    .line 20697
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 20699
    :cond_a7
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_b8

    .line 20700
    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedSubjectIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 20702
    :cond_b8
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_c9

    .line 20703
    const/16 v1, 0xd

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedNameTagCreatorIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 20705
    :cond_c9
    return-void
.end method
