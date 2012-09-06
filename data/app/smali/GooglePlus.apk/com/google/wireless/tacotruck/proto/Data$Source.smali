.class public final Lcom/google/wireless/tacotruck/proto/Data$Source;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$SourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Source;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2195
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Source;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Source;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 2196
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Source;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->initFields()V

    .line 2197
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1688
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1837
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->memoizedIsInitialized:B

    .line 1860
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->memoizedSerializedSize:I

    .line 1689
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1683
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Source;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1690
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1837
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->memoizedIsInitialized:B

    .line 1860
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->memoizedSerializedSize:I

    .line 1690
    return-void
.end method

.method static synthetic access$2202(Lcom/google/wireless/tacotruck/proto/Data$Source;Lcom/google/wireless/tacotruck/proto/Data$Source$Type;)Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/wireless/tacotruck/proto/Data$Source;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/wireless/tacotruck/proto/Data$Source;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/wireless/tacotruck/proto/Data$Source;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1683
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Source;
    .registers 1

    .prologue
    .line 1694
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Source;

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1789
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->name_:Ljava/lang/Object;

    .line 1790
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1791
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1793
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->name_:Ljava/lang/Object;

    .line 1796
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

.method private getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1821
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->url_:Ljava/lang/Object;

    .line 1822
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1823
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1825
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->url_:Ljava/lang/Object;

    .line 1828
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
    .line 1833
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->NEWS:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    .line 1834
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->name_:Ljava/lang/Object;

    .line 1835
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->url_:Ljava/lang/Object;

    .line 1836
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 1

    .prologue
    .line 1956
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->access$2000()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1959
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1683
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Source;
    .registers 2

    .prologue
    .line 1698
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Source;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1775
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->name_:Ljava/lang/Object;

    .line 1776
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1777
    check-cast v1, Ljava/lang/String;

    .line 1785
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1779
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1781
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1782
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1783
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1785
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1862
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->memoizedSerializedSize:I

    .line 1863
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 1879
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 1865
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 1866
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 1867
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1870
    :cond_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 1871
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1874
    :cond_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 1875
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1878
    :cond_3b
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->memoizedSerializedSize:I

    move v1, v0

    .line 1879
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    .registers 2

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1807
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->url_:Ljava/lang/Object;

    .line 1808
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1809
    check-cast v1, Ljava/lang/String;

    .line 1817
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1811
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1813
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1814
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1815
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->url_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1817
    goto :goto_8
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 1772
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1762
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 1804
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

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

    .line 1839
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->memoizedIsInitialized:B

    .line 1840
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1843
    :goto_8
    return v1

    .line 1840
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1842
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1683
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 2

    .prologue
    .line 1957
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1683
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;
    .registers 2

    .prologue
    .line 1961
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source$Builder;

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
    .line 1886
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

    .line 1848
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getSerializedSize()I

    .line 1849
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 1850
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->type_:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1852
    :cond_14
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 1853
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1855
    :cond_21
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 1856
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1858
    :cond_30
    return-void
.end method
