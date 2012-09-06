.class public final Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlusEventItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusEventItem$ThemeSpecificationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusEventItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThemeSpecification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private imageUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private themeId_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3034
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    .line 3035
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->initFields()V

    .line 3036
    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2680
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2740
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->memoizedIsInitialized:B

    .line 2760
    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->memoizedSerializedSize:I

    .line 2681
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;Lcom/google/protos/embeds/PlusEventItem$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2675
    invoke-direct {p0, p1}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;-><init>(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2682
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2740
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->memoizedIsInitialized:B

    .line 2760
    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->memoizedSerializedSize:I

    .line 2682
    return-void
.end method

.method static synthetic access$3302(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2675
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->imageUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2675
    iput p1, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->themeId_:I

    return p1
.end method

.method static synthetic access$3502(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2675
    iput p1, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;
    .registers 1

    .prologue
    .line 2686
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    return-object v0
.end method

.method private getImageUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2715
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->imageUrl_:Ljava/lang/Object;

    .line 2716
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2717
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2719
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->imageUrl_:Ljava/lang/Object;

    .line 2722
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
    .registers 2

    .prologue
    .line 2737
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->imageUrl_:Ljava/lang/Object;

    .line 2738
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->themeId_:I

    .line 2739
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
    .registers 1

    .prologue
    .line 2852
    #calls: Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->access$3100()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2855
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2675
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;
    .registers 2

    .prologue
    .line 2690
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2701
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->imageUrl_:Ljava/lang/Object;

    .line 2702
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2703
    check-cast v1, Ljava/lang/String;

    .line 2711
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2705
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2707
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2708
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2709
    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->imageUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2711
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2762
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->memoizedSerializedSize:I

    .line 2763
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 2775
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 2765
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 2766
    iget v2, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 2767
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2770
    :cond_19
    iget v2, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 2771
    iget v2, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->themeId_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2774
    :cond_26
    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->memoizedSerializedSize:I

    move v1, v0

    .line 2775
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getThemeId()I
    .registers 2

    .prologue
    .line 2733
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->themeId_:I

    return v0
.end method

.method public hasImageUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2698
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasThemeId()Z
    .registers 3

    .prologue
    .line 2730
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2742
    iget-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->memoizedIsInitialized:B

    .line 2743
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2746
    :goto_8
    return v1

    .line 2743
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2745
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2675
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->newBuilderForType()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
    .registers 2

    .prologue
    .line 2853
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2675
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->toBuilder()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;
    .registers 2

    .prologue
    .line 2857
    invoke-static {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->newBuilder(Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;)Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification$Builder;

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
    .line 2782
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2751
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->getSerializedSize()I

    .line 2752
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 2753
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2755
    :cond_12
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 2756
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$ThemeSpecification;->themeId_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2758
    :cond_1d
    return-void
.end method
