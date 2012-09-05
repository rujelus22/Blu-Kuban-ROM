.class public final Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupantOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HangoutOccupant"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

.field private static final serialVersionUID:J


# instance fields
.field private avatarUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private gaiaId_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37176
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    .line 37177
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->initFields()V

    .line 37178
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 36642
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 36768
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->memoizedIsInitialized:B

    .line 36794
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->memoizedSerializedSize:I

    .line 36643
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36637
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;-><init>(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 36644
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 36768
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->memoizedIsInitialized:B

    .line 36794
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->memoizedSerializedSize:I

    .line 36644
    return-void
.end method

.method static synthetic access$49802(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36637
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$49902(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36637
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$50002(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36637
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->gaiaId_:J

    return-wide p1
.end method

.method static synthetic access$50102(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36637
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->focusObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$50202(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36637
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    return p1
.end method

.method private getAvatarUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 36709
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    .line 36710
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36711
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36713
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    .line 36716
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
    .registers 1

    .prologue
    .line 36648
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    return-object v0
.end method

.method private getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 36751
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->focusObfuscatedId_:Ljava/lang/Object;

    .line 36752
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36753
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36755
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->focusObfuscatedId_:Ljava/lang/Object;

    .line 36758
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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 36677
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->name_:Ljava/lang/Object;

    .line 36678
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36679
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36681
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->name_:Ljava/lang/Object;

    .line 36684
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
    .registers 3

    .prologue
    .line 36763
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->name_:Ljava/lang/Object;

    .line 36764
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    .line 36765
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->gaiaId_:J

    .line 36766
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->focusObfuscatedId_:Ljava/lang/Object;

    .line 36767
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 1

    .prologue
    .line 36894
    #calls: Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->access$49600()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36695
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    .line 36696
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 36697
    check-cast v1, Ljava/lang/String;

    .line 36705
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 36699
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36701
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36702
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 36703
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 36705
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36637
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
    .registers 2

    .prologue
    .line 36652
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    return-object v0
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36737
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->focusObfuscatedId_:Ljava/lang/Object;

    .line 36738
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 36739
    check-cast v1, Ljava/lang/String;

    .line 36747
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 36741
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36743
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36744
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 36745
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->focusObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 36747
    goto :goto_8
.end method

.method public getGaiaId()J
    .registers 3

    .prologue
    .line 36727
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->gaiaId_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36663
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->name_:Ljava/lang/Object;

    .line 36664
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 36665
    check-cast v1, Ljava/lang/String;

    .line 36673
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 36667
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36669
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36670
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 36671
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 36673
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 36796
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->memoizedSerializedSize:I

    .line 36797
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 36817
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 36799
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 36800
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 36801
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36804
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 36805
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getAvatarUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36808
    :cond_29
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 36809
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->gaiaId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 36812
    :cond_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 36813
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36816
    :cond_48
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->memoizedSerializedSize:I

    move v1, v0

    .line 36817
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasAvatarUrl()Z
    .registers 3

    .prologue
    .line 36692
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

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

.method public hasFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 36734
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

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

.method public hasGaiaId()Z
    .registers 3

    .prologue
    .line 36724
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 36660
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 36770
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->memoizedIsInitialized:B

    .line 36771
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 36774
    :goto_8
    return v1

    .line 36771
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 36773
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 36824
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 36779
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getSerializedSize()I

    .line 36780
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 36781
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36783
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 36784
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getAvatarUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36786
    :cond_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 36787
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->gaiaId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 36789
    :cond_2c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 36790
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36792
    :cond_3b
    return-void
.end method
