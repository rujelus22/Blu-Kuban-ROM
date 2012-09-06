.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextFieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutOfBoxTextField"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private textAlign_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

.field private text_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32414
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    .line 32415
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->initFields()V

    .line 32416
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 32009
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 32113
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->memoizedIsInitialized:B

    .line 32133
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->memoizedSerializedSize:I

    .line 32010
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32004
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 32011
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32113
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->memoizedIsInitialized:B

    .line 32133
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->memoizedSerializedSize:I

    .line 32011
    return-void
.end method

.method static synthetic access$43702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32004
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$43802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32004
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->textAlign_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    return-object p1
.end method

.method static synthetic access$43902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32004
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 1

    .prologue
    .line 32015
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object v0
.end method

.method private getTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 32088
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->text_:Ljava/lang/Object;

    .line 32089
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 32090
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32092
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->text_:Ljava/lang/Object;

    .line 32095
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
    .line 32110
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->text_:Ljava/lang/Object;

    .line 32111
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->CENTER:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->textAlign_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    .line 32112
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    .registers 1

    .prologue
    .line 32225
    #calls: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->access$43500()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 32228
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32004
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;
    .registers 2

    .prologue
    .line 32019
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 32135
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->memoizedSerializedSize:I

    .line 32136
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 32148
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 32138
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 32139
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 32140
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 32143
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    .line 32144
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->textAlign_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 32147
    :cond_2b
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->memoizedSerializedSize:I

    move v1, v0

    .line 32148
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 32074
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->text_:Ljava/lang/Object;

    .line 32075
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 32076
    check-cast v1, Ljava/lang/String;

    .line 32084
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 32078
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32080
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32081
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 32082
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->text_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 32084
    goto :goto_8
.end method

.method public getTextAlign()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;
    .registers 2

    .prologue
    .line 32106
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->textAlign_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    return-object v0
.end method

.method public hasText()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32071
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTextAlign()Z
    .registers 3

    .prologue
    .line 32103
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->bitField0_:I

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

    .line 32115
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->memoizedIsInitialized:B

    .line 32116
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 32119
    :goto_8
    return v1

    .line 32116
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 32118
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32004
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    .registers 2

    .prologue
    .line 32226
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32004
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;
    .registers 2

    .prologue
    .line 32230
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$Builder;

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
    .line 32155
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

    .line 32124
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getSerializedSize()I

    .line 32125
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 32126
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 32128
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 32129
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField;->textAlign_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxTextField$TextAlignment;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 32131
    :cond_22
    return-void
.end method
