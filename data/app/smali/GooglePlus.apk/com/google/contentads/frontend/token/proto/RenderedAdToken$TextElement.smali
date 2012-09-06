.class public final Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RenderedAdToken.java"

# interfaces
.implements Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/contentads/frontend/token/proto/RenderedAdToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextElement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private line1_:Ljava/lang/Object;

.field private line2_:Ljava/lang/Object;

.field private line3_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1268
    new-instance v0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;-><init>(Z)V

    sput-object v0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->defaultInstance:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    .line 1269
    sget-object v0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->defaultInstance:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    invoke-direct {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->initFields()V

    .line 1270
    return-void
.end method

.method private constructor <init>(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 787
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 902
    iput-byte v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->memoizedIsInitialized:B

    .line 925
    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->memoizedSerializedSize:I

    .line 788
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;Lcom/google/contentads/frontend/token/proto/RenderedAdToken$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 782
    invoke-direct {p0, p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;-><init>(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 789
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 902
    iput-byte v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->memoizedIsInitialized:B

    .line 925
    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->memoizedSerializedSize:I

    .line 789
    return-void
.end method

.method static synthetic access$1402(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 782
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line1_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 782
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line2_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 782
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line3_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 782
    iput p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;
    .registers 1

    .prologue
    .line 793
    sget-object v0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->defaultInstance:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    return-object v0
.end method

.method private getLine1Bytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 822
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line1_:Ljava/lang/Object;

    .line 823
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 824
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 826
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line1_:Ljava/lang/Object;

    .line 829
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

.method private getLine2Bytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 854
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line2_:Ljava/lang/Object;

    .line 855
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 856
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 858
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line2_:Ljava/lang/Object;

    .line 861
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

.method private getLine3Bytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 886
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line3_:Ljava/lang/Object;

    .line 887
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 888
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 890
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line3_:Ljava/lang/Object;

    .line 893
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
    .line 898
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line1_:Ljava/lang/Object;

    .line 899
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line2_:Ljava/lang/Object;

    .line 900
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line3_:Ljava/lang/Object;

    .line 901
    return-void
.end method

.method public static newBuilder()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    .registers 1

    .prologue
    .line 1021
    #calls: Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->create()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->access$1200()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1024
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->newBuilder()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->mergeFrom(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;
    .registers 2

    .prologue
    .line 797
    sget-object v0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->defaultInstance:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getDefaultInstanceForType()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    move-result-object v0

    return-object v0
.end method

.method public getLine1()Ljava/lang/String;
    .registers 5

    .prologue
    .line 808
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line1_:Ljava/lang/Object;

    .line 809
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 810
    check-cast v1, Ljava/lang/String;

    .line 818
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 812
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 814
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 815
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 816
    iput-object v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line1_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 818
    goto :goto_8
.end method

.method public getLine2()Ljava/lang/String;
    .registers 5

    .prologue
    .line 840
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line2_:Ljava/lang/Object;

    .line 841
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 842
    check-cast v1, Ljava/lang/String;

    .line 850
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 844
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 846
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 847
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 848
    iput-object v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line2_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 850
    goto :goto_8
.end method

.method public getLine3()Ljava/lang/String;
    .registers 5

    .prologue
    .line 872
    iget-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line3_:Ljava/lang/Object;

    .line 873
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 874
    check-cast v1, Ljava/lang/String;

    .line 882
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 876
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 878
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 879
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 880
    iput-object v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line3_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 882
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 927
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->memoizedSerializedSize:I

    .line 928
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 944
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 930
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 931
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 932
    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getLine1Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 935
    :cond_1a
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    .line 936
    const/16 v2, 0xb

    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getLine2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 939
    :cond_2c
    iget v2, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3e

    .line 940
    const/16 v2, 0xc

    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getLine3Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 943
    :cond_3e
    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->memoizedSerializedSize:I

    move v1, v0

    .line 944
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public hasLine1()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 805
    iget v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLine2()Z
    .registers 3

    .prologue
    .line 837
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->bitField0_:I

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

.method public hasLine3()Z
    .registers 3

    .prologue
    .line 869
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 904
    iget-byte v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->memoizedIsInitialized:B

    .line 905
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 908
    :goto_8
    return v1

    .line 905
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 907
    :cond_b
    iput-byte v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    .registers 2

    .prologue
    .line 1022
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->newBuilder()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->newBuilderForType()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    .registers 2

    .prologue
    .line 1026
    invoke-static {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->newBuilder(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->toBuilder()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

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
    .line 951
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
    .line 913
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getSerializedSize()I

    .line 914
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 915
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getLine1Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 917
    :cond_13
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 918
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getLine2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 920
    :cond_23
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_33

    .line 921
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getLine3Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 923
    :cond_33
    return-void
.end method
