.class public final Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplayOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoMediaDisplay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private data_:Ljava/lang/Object;

.field private format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

.field private isPwa_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8236
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    .line 8237
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->initFields()V

    .line 8238
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7781
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7893
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->memoizedIsInitialized:B

    .line 7916
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->memoizedSerializedSize:I

    .line 7782
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7776
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7783
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7893
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->memoizedIsInitialized:B

    .line 7916
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->memoizedSerializedSize:I

    .line 7783
    return-void
.end method

.method static synthetic access$10302(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7776
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    return-object p1
.end method

.method static synthetic access$10402(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7776
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->data_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10502(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7776
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->isPwa_:Z

    return p1
.end method

.method static synthetic access$10602(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7776
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

    return p1
.end method

.method private getDataBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 7867
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->data_:Ljava/lang/Object;

    .line 7868
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 7869
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7871
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->data_:Ljava/lang/Object;

    .line 7874
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
    .registers 1

    .prologue
    .line 7787
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 7889
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->LINKED_THUMBS:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    .line 7890
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->data_:Ljava/lang/Object;

    .line 7891
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->isPwa_:Z

    .line 7892
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 1

    .prologue
    .line 8012
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->access$10100()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8015
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;)Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 5

    .prologue
    .line 7853
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->data_:Ljava/lang/Object;

    .line 7854
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 7855
    check-cast v1, Ljava/lang/String;

    .line 7863
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 7857
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7859
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7860
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7861
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->data_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 7863
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7776
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
    .registers 2

    .prologue
    .line 7791
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;

    return-object v0
.end method

.method public getFormat()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;
    .registers 2

    .prologue
    .line 7843
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    return-object v0
.end method

.method public getIsPwa()Z
    .registers 2

    .prologue
    .line 7885
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->isPwa_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 7918
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->memoizedSerializedSize:I

    .line 7919
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 7935
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 7921
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 7922
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 7923
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7926
    :cond_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 7927
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7930
    :cond_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 7931
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->isPwa_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 7934
    :cond_39
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->memoizedSerializedSize:I

    move v1, v0

    .line 7935
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasData()Z
    .registers 3

    .prologue
    .line 7850
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

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

.method public hasFormat()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7840
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasIsPwa()Z
    .registers 3

    .prologue
    .line 7882
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

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

    .line 7895
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->memoizedIsInitialized:B

    .line 7896
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 7899
    :goto_8
    return v1

    .line 7896
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 7898
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->memoizedIsInitialized:B

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
    .line 7942
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

    .line 7904
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getSerializedSize()I

    .line 7905
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 7906
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->format_:Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay$DisplayFormat;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7908
    :cond_14
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 7909
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->getDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7911
    :cond_21
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 7912
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;->isPwa_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7914
    :cond_2e
    return-void
.end method
