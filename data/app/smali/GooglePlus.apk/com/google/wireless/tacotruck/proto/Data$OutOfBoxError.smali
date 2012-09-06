.class public final Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutOfBoxError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private text_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35426
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    .line 35427
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->initFields()V

    .line 35428
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 34983
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 35125
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->memoizedIsInitialized:B

    .line 35145
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->memoizedSerializedSize:I

    .line 34984
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34978
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;-><init>(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 34985
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 35125
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->memoizedIsInitialized:B

    .line 35145
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->memoizedSerializedSize:I

    .line 34985
    return-void
.end method

.method static synthetic access$47702(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34978
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    return-object p1
.end method

.method static synthetic access$47802(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34978
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$47902(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34978
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 1

    .prologue
    .line 34989
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    return-object v0
.end method

.method private getTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 35110
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->text_:Ljava/lang/Object;

    .line 35111
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 35112
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 35114
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->text_:Ljava/lang/Object;

    .line 35117
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
    .line 35122
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->NO_AGE:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    .line 35123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->text_:Ljava/lang/Object;

    .line 35124
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 1

    .prologue
    .line 35237
    #calls: Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->access$47500()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 35240
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34978
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;
    .registers 2

    .prologue
    .line 34993
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 35147
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->memoizedSerializedSize:I

    .line 35148
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 35160
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 35150
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 35151
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 35152
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 35155
    :cond_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 35156
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 35159
    :cond_2a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->memoizedSerializedSize:I

    move v1, v0

    .line 35160
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 35096
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->text_:Ljava/lang/Object;

    .line 35097
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 35098
    check-cast v1, Ljava/lang/String;

    .line 35106
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 35100
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 35102
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 35103
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 35104
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->text_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 35106
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;
    .registers 2

    .prologue
    .line 35086
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    return-object v0
.end method

.method public hasText()Z
    .registers 3

    .prologue
    .line 35093
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->bitField0_:I

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

    .line 35083
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->bitField0_:I

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

    .line 35127
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->memoizedIsInitialized:B

    .line 35128
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 35131
    :goto_8
    return v1

    .line 35128
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 35130
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34978
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 2

    .prologue
    .line 35238
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34978
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;
    .registers 2

    .prologue
    .line 35242
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Builder;

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
    .line 35167
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

    .line 35136
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getSerializedSize()I

    .line 35137
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 35138
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->type_:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 35140
    :cond_14
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 35141
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxError;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 35143
    :cond_21
    return-void
.end method
