.class public final Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$ProfileRequestMaskOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileRequestMask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private includeLocationMapUrl_:Z

.field private includeLocationPoints_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5495
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    .line 5496
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->initFields()V

    .line 5497
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5178
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5216
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->memoizedIsInitialized:B

    .line 5236
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->memoizedSerializedSize:I

    .line 5179
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5173
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;-><init>(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5180
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5216
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->memoizedIsInitialized:B

    .line 5236
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->memoizedSerializedSize:I

    .line 5180
    return-void
.end method

.method static synthetic access$6802(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5173
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->includeLocationPoints_:Z

    return p1
.end method

.method static synthetic access$6902(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5173
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->includeLocationMapUrl_:Z

    return p1
.end method

.method static synthetic access$7002(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5173
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;
    .registers 1

    .prologue
    .line 5184
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 5213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->includeLocationPoints_:Z

    .line 5214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->includeLocationMapUrl_:Z

    .line 5215
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    .registers 1

    .prologue
    .line 5328
    #calls: Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->create()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->access$6600()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 5331
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->newBuilder()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5173
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;
    .registers 2

    .prologue
    .line 5188
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;

    return-object v0
.end method

.method public getIncludeLocationMapUrl()Z
    .registers 2

    .prologue
    .line 5209
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->includeLocationMapUrl_:Z

    return v0
.end method

.method public getIncludeLocationPoints()Z
    .registers 2

    .prologue
    .line 5199
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->includeLocationPoints_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5238
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->memoizedSerializedSize:I

    .line 5239
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 5251
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 5241
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 5242
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 5243
    iget-boolean v2, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->includeLocationPoints_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5246
    :cond_17
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 5247
    iget-boolean v2, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->includeLocationMapUrl_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5250
    :cond_24
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->memoizedSerializedSize:I

    move v1, v0

    .line 5251
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasIncludeLocationMapUrl()Z
    .registers 3

    .prologue
    .line 5206
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->bitField0_:I

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

.method public hasIncludeLocationPoints()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5196
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->bitField0_:I

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

    .line 5218
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->memoizedIsInitialized:B

    .line 5219
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 5222
    :goto_8
    return v1

    .line 5219
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 5221
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5173
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->newBuilderForType()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    .registers 2

    .prologue
    .line 5329
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->newBuilder()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5173
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->toBuilder()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;
    .registers 2

    .prologue
    .line 5333
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->newBuilder(Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;)Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask$Builder;

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
    .line 5258
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

    .line 5227
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->getSerializedSize()I

    .line 5228
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 5229
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->includeLocationPoints_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5231
    :cond_10
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 5232
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Client$ProfileRequestMask;->includeLocationMapUrl_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5234
    :cond_1b
    return-void
.end method
