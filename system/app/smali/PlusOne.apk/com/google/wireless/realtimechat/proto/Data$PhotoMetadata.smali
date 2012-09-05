.class public final Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3023
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    .line 3024
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->initFields()V

    .line 3025
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2722
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2771
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->memoizedIsInitialized:B

    .line 2788
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->memoizedSerializedSize:I

    .line 2723
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2717
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;-><init>(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2724
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2771
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->memoizedIsInitialized:B

    .line 2788
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->memoizedSerializedSize:I

    .line 2724
    return-void
.end method

.method static synthetic access$3802(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2717
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2717
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;
    .registers 1

    .prologue
    .line 2728
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    return-object v0
.end method

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2757
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->url_:Ljava/lang/Object;

    .line 2758
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2759
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2761
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->url_:Ljava/lang/Object;

    .line 2764
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
    .line 2769
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->url_:Ljava/lang/Object;

    .line 2770
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;
    .registers 1

    .prologue
    .line 2876
    #calls: Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->access$3600()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2879
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2717
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;
    .registers 2

    .prologue
    .line 2732
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 2790
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->memoizedSerializedSize:I

    .line 2791
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 2799
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 2793
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 2794
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 2795
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2798
    :cond_18
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->memoizedSerializedSize:I

    move v1, v0

    .line 2799
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2743
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->url_:Ljava/lang/Object;

    .line 2744
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2745
    check-cast v1, Ljava/lang/String;

    .line 2753
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2747
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2749
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2750
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2751
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2753
    goto :goto_8
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2740
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->bitField0_:I

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

    .line 2773
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->memoizedIsInitialized:B

    .line 2774
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2777
    :goto_8
    return v1

    .line 2774
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2776
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->memoizedIsInitialized:B

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
    .line 2806
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    const/4 v1, 0x1

    .line 2782
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getSerializedSize()I

    .line 2783
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 2784
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2786
    :cond_11
    return-void
.end method
