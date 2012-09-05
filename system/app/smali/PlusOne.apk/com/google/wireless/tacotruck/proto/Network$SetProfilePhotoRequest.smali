.class public final Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetProfilePhotoRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private photo_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43898
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    .line 43899
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->initFields()V

    .line 43900
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 43597
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 43646
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->memoizedIsInitialized:B

    .line 43663
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->memoizedSerializedSize:I

    .line 43598
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43592
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 43599
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 43646
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->memoizedIsInitialized:B

    .line 43663
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->memoizedSerializedSize:I

    .line 43599
    return-void
.end method

.method static synthetic access$61202(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43592
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->photo_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$61302(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43592
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;
    .registers 1

    .prologue
    .line 43603
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    return-object v0
.end method

.method private getPhotoBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 43632
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->photo_:Ljava/lang/Object;

    .line 43633
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 43634
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 43636
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->photo_:Ljava/lang/Object;

    .line 43639
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
    .line 43644
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->photo_:Ljava/lang/Object;

    .line 43645
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    .registers 1

    .prologue
    .line 43751
    #calls: Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;->access$61000()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43592
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;
    .registers 2

    .prologue
    .line 43607
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;

    return-object v0
.end method

.method public getPhoto()Ljava/lang/String;
    .registers 5

    .prologue
    .line 43618
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->photo_:Ljava/lang/Object;

    .line 43619
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 43620
    check-cast v1, Ljava/lang/String;

    .line 43628
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 43622
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 43624
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 43625
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 43626
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->photo_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 43628
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 43665
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->memoizedSerializedSize:I

    .line 43666
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 43674
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 43668
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 43669
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 43670
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getPhotoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 43673
    :cond_18
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 43674
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasPhoto()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 43615
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->bitField0_:I

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

    .line 43648
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->memoizedIsInitialized:B

    .line 43649
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 43652
    :goto_8
    return v1

    .line 43649
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 43651
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->memoizedIsInitialized:B

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
    .line 43681
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

    .line 43657
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getSerializedSize()I

    .line 43658
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 43659
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoRequest;->getPhotoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 43661
    :cond_11
    return-void
.end method
