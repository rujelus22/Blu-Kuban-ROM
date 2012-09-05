.class public final Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Contact.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Contact$SearchQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchQuery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private query_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4724
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 4725
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->initFields()V

    .line 4726
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4423
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4472
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->memoizedIsInitialized:B

    .line 4489
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->memoizedSerializedSize:I

    .line 4424
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;Lcom/google/wireless/contacts/proto/Contact$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4418
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;-><init>(Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4425
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4472
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->memoizedIsInitialized:B

    .line 4489
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->memoizedSerializedSize:I

    .line 4425
    return-void
.end method

.method static synthetic access$5902(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4418
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->query_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4418
    iput p1, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
    .registers 1

    .prologue
    .line 4429
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    return-object v0
.end method

.method private getQueryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4458
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->query_:Ljava/lang/Object;

    .line 4459
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4460
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4462
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->query_:Ljava/lang/Object;

    .line 4465
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
    .line 4470
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->query_:Ljava/lang/Object;

    .line 4471
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
    .registers 1

    .prologue
    .line 4577
    #calls: Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->access$5700()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4580
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4418
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
    .registers 2

    .prologue
    .line 4433
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->defaultInstance:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4444
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->query_:Ljava/lang/Object;

    .line 4445
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4446
    check-cast v1, Ljava/lang/String;

    .line 4454
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4448
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4450
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4451
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4452
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->query_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4454
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 4491
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->memoizedSerializedSize:I

    .line 4492
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 4500
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 4494
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 4495
    iget v2, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 4496
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4499
    :cond_18
    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->memoizedSerializedSize:I

    move v1, v0

    .line 4500
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasQuery()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4441
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->bitField0_:I

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

    .line 4474
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->memoizedIsInitialized:B

    .line 4475
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 4478
    :goto_8
    return v1

    .line 4475
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 4477
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->memoizedIsInitialized:B

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
    .line 4507
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

    .line 4483
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getSerializedSize()I

    .line 4484
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 4485
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4487
    :cond_11
    return-void
.end method
