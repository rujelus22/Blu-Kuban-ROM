.class public final Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$BatchRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BatchRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

.field private static final serialVersionUID:J


# instance fields
.field private actionToken_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private request_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$Request;",
            ">;"
        }
    .end annotation
.end field

.field private unauth_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1217
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    .line 1218
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->initFields()V

    .line 1219
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 722
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 804
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->memoizedIsInitialized:B

    .line 827
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->memoizedSerializedSize:I

    .line 723
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 717
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 724
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 804
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->memoizedIsInitialized:B

    .line 827
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->memoizedSerializedSize:I

    .line 724
    return-void
.end method

.method static synthetic access$1100(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->request_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 717
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->request_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 717
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->actionToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 717
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->unauth_:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 717
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->bitField0_:I

    return p1
.end method

.method private getActionTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 778
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->actionToken_:Ljava/lang/Object;

    .line 779
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 780
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 782
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->actionToken_:Ljava/lang/Object;

    .line 785
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;
    .registers 1

    .prologue
    .line 728
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 800
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->request_:Ljava/util/List;

    .line 801
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->actionToken_:Ljava/lang/Object;

    .line 802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->unauth_:Z

    .line 803
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    .registers 1

    .prologue
    .line 923
    #calls: Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->access$900()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 764
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->actionToken_:Ljava/lang/Object;

    .line 765
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 766
    check-cast v1, Ljava/lang/String;

    .line 774
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 768
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 770
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 772
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->actionToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 774
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;
    .registers 2

    .prologue
    .line 732
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    return-object v0
.end method

.method public getRequest(I)Lcom/google/wireless/tacotruck/proto/Network$Request;
    .registers 3
    .parameter "index"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$Request;

    return-object v0
.end method

.method public getRequestCount()I
    .registers 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->request_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$Request;",
            ">;"
        }
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->request_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Network$RequestOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->request_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$RequestOrBuilder;

    return-object v0
.end method

.method public getRequestOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$RequestOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 744
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->request_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 829
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->memoizedSerializedSize:I

    .line 830
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 846
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 832
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 833
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->request_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_23

    .line 834
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->request_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 833
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 837
    :cond_23
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_32

    .line 838
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->getActionTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 841
    :cond_32
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_40

    .line 842
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->unauth_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 845
    :cond_40
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->memoizedSerializedSize:I

    move v2, v1

    .line 846
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public getUnauth()Z
    .registers 2

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->unauth_:Z

    return v0
.end method

.method public hasActionToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 761
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUnauth()Z
    .registers 3

    .prologue
    .line 793
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->bitField0_:I

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

    .line 806
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->memoizedIsInitialized:B

    .line 807
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 810
    :goto_8
    return v1

    .line 807
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 809
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->memoizedIsInitialized:B

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
    .line 853
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 815
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->getSerializedSize()I

    .line 816
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->request_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 817
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->request_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 819
    :cond_1c
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_29

    .line 820
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->getActionTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 822
    :cond_29
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_35

    .line 823
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->unauth_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 825
    :cond_35
    return-void
.end method
