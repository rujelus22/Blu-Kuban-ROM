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
    .line 19830
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    .line 19831
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->initFields()V

    .line 19832
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 18155
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 18911
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedIsInitialized:B

    .line 18970
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedSerializedSize:I

    .line 18156
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18150
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;-><init>(Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18157
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18911
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedIsInitialized:B

    .line 18970
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedSerializedSize:I

    .line 18157
    return-void
.end method

.method static synthetic access$25302(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18150
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->id_:J

    return-wide p1
.end method

.method static synthetic access$25402(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18150
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftX_:I

    return p1
.end method

.method static synthetic access$25502(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18150
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftY_:I

    return p1
.end method

.method static synthetic access$25602(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18150
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightX_:I

    return p1
.end method

.method static synthetic access$25702(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18150
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightY_:I

    return p1
.end method

.method static synthetic access$25802(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18150
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    return-object p1
.end method

.method static synthetic access$25902(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18150
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->subjectGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$26002(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18150
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26100(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18150
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$26102(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18150
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$26202(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18150
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    return-object p1
.end method

.method static synthetic access$26302(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18150
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->nameTagCreatorGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$26402(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18150
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26502(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;)Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18150
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    return-object p1
.end method

.method static synthetic access$26602(Lcom/google/wireless/tacotruck/proto/Data$MobileShape;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18150
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    .registers 1

    .prologue
    .line 18161
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    return-object v0
.end method

.method private getFocusObfuscatedNameTagCreatorIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 18875
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 18876
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 18877
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18879
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 18882
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
    .line 18802
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 18803
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 18804
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18806
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 18809
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

    .line 18897
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->id_:J

    .line 18898
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftX_:I

    .line 18899
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftY_:I

    .line 18900
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightX_:I

    .line 18901
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightY_:I

    .line 18902
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    .line 18903
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->subjectGaiaId_:J

    .line 18904
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 18905
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    .line 18906
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->UNNAMED:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    .line 18907
    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->nameTagCreatorGaiaId_:J

    .line 18908
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 18909
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    .line 18910
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    .registers 1

    .prologue
    .line 19106
    #calls: Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;->access$25100()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18150
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
    .registers 2

    .prologue
    .line 18165
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobileShape;

    return-object v0
.end method

.method public getFocusObfuscatedNameTagCreatorId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 18861
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    .line 18862
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 18863
    check-cast v1, Ljava/lang/String;

    .line 18871
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 18865
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18867
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18868
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 18869
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedNameTagCreatorId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 18871
    goto :goto_8
.end method

.method public getFocusObfuscatedSubjectId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 18788
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    .line 18789
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 18790
    check-cast v1, Ljava/lang/String;

    .line 18798
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 18792
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18794
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18795
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 18796
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->focusObfuscatedSubjectId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 18798
    goto :goto_8
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 18718
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->id_:J

    return-wide v0
.end method

.method public getLowerRightX()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18748
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightX_:I

    return v0
.end method

.method public getLowerRightY()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18758
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightY_:I

    return v0
.end method

.method public getNameTagCreatorGaiaId()J
    .registers 3

    .prologue
    .line 18851
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->nameTagCreatorGaiaId_:J

    return-wide v0
.end method

.method public getNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
    .registers 2

    .prologue
    .line 18893
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    return-object v0
.end method

.method public getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 2

    .prologue
    .line 18768
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

    .line 18972
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedSerializedSize:I

    .line 18973
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 19029
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 18975
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 18976
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1a

    .line 18977
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->id_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 18980
    :cond_1a
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v6, :cond_27

    .line 18981
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftX_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 18984
    :cond_27
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_35

    .line 18985
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftY_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 18988
    :cond_35
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v8, :cond_42

    .line 18989
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightX_:I

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 18992
    :cond_42
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_52

    .line 18993
    const/4 v3, 0x5

    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightY_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 18996
    :cond_52
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_62

    .line 18997
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 19000
    :cond_62
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_72

    .line 19001
    const/4 v3, 0x7

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->subjectGaiaId_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 19004
    :cond_72
    const/4 v0, 0x0

    .local v0, i:I
    :goto_73
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_8b

    .line 19005
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 19004
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 19008
    :cond_8b
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_a0

    .line 19009
    const/16 v3, 0x9

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 19012
    :cond_a0
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_b1

    .line 19013
    const/16 v3, 0xa

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->nameTagCreatorGaiaId_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 19016
    :cond_b1
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_c2

    .line 19017
    const/16 v3, 0xb

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 19020
    :cond_c2
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_d5

    .line 19021
    const/16 v3, 0xc

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedSubjectIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 19024
    :cond_d5
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_e8

    .line 19025
    const/16 v3, 0xd

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedNameTagCreatorIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 19028
    :cond_e8
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedSerializedSize:I

    move v2, v1

    .line 19029
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getStatus()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
    .registers 2

    .prologue
    .line 18841
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    return-object v0
.end method

.method public getSubjectGaiaId()J
    .registers 3

    .prologue
    .line 18778
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->subjectGaiaId_:J

    return-wide v0
.end method

.method public getSuggestion(I)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;
    .registers 3
    .parameter "index"

    .prologue
    .line 18827
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    return-object v0
.end method

.method public getSuggestionCount()I
    .registers 2

    .prologue
    .line 18824
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
    .line 18817
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestionOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestionOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 18831
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
    .line 18821
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    return-object v0
.end method

.method public getUpperLeftX()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18728
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftX_:I

    return v0
.end method

.method public getUpperLeftY()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18738
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftY_:I

    return v0
.end method

.method public hasFocusObfuscatedNameTagCreatorId()Z
    .registers 3

    .prologue
    .line 18858
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
    .line 18785
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

    .line 18715
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
    .line 18745
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
    .line 18755
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
    .line 18848
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
    .line 18890
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
    .line 18765
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
    .line 18838
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
    .line 18775
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
    .line 18725
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
    .line 18735
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

    .line 18913
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedIsInitialized:B

    .line 18914
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 18923
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 18914
    goto :goto_9

    .line 18916
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->hasNormalizedBounds()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 18917
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 18918
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedIsInitialized:B

    move v1, v2

    .line 18919
    goto :goto_9

    .line 18922
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->memoizedIsInitialized:B

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
    .line 19036
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

    .line 18928
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getSerializedSize()I

    .line 18929
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_13

    .line 18930
    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->id_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 18932
    :cond_13
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1e

    .line 18933
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftX_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 18935
    :cond_1e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2a

    .line 18936
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->upperLeftY_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 18938
    :cond_2a
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_35

    .line 18939
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightX_:I

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 18941
    :cond_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_43

    .line 18942
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->lowerRightY_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 18944
    :cond_43
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_51

    .line 18945
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->photoActionState_:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18947
    :cond_51
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5f

    .line 18948
    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->subjectGaiaId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 18950
    :cond_5f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_60
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_76

    .line 18951
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->suggestion_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18950
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 18953
    :cond_76
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_89

    .line 18954
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->status_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 18956
    :cond_89
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_98

    .line 18957
    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->nameTagCreatorGaiaId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 18959
    :cond_98
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_a7

    .line 18960
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->normalizedBounds_:Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18962
    :cond_a7
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_b8

    .line 18963
    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedSubjectIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18965
    :cond_b8
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_c9

    .line 18966
    const/16 v1, 0xd

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobileShape;->getFocusObfuscatedNameTagCreatorIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18968
    :cond_c9
    return-void
.end method
