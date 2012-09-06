.class public final Lcom/google/apps/tacotown/proto/data/Formatting;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Formatting.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/data/FormattingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/tacotown/proto/data/Formatting$1;,
        Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/tacotown/proto/data/Formatting;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private bold_:Z

.field private italics_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private strikethrough_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 380
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Formatting;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/tacotown/proto/data/Formatting;-><init>(Z)V

    sput-object v0, Lcom/google/apps/tacotown/proto/data/Formatting;->defaultInstance:Lcom/google/apps/tacotown/proto/data/Formatting;

    .line 381
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Formatting;->defaultInstance:Lcom/google/apps/tacotown/proto/data/Formatting;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/data/Formatting;->initFields()V

    .line 382
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/tacotown/proto/data/Formatting$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 59
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->memoizedIsInitialized:B

    .line 82
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->memoizedSerializedSize:I

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/tacotown/proto/data/Formatting$Builder;Lcom/google/apps/tacotown/proto/data/Formatting$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/google/apps/tacotown/proto/data/Formatting;-><init>(Lcom/google/apps/tacotown/proto/data/Formatting$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 59
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->memoizedIsInitialized:B

    .line 82
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->memoizedSerializedSize:I

    .line 12
    return-void
.end method

.method static synthetic access$302(Lcom/google/apps/tacotown/proto/data/Formatting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-boolean p1, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->bold_:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/apps/tacotown/proto/data/Formatting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-boolean p1, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->italics_:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/apps/tacotown/proto/data/Formatting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput-boolean p1, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->strikethrough_:Z

    return p1
.end method

.method static synthetic access$602(Lcom/google/apps/tacotown/proto/data/Formatting;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    iput p1, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/tacotown/proto/data/Formatting;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Formatting;->defaultInstance:Lcom/google/apps/tacotown/proto/data/Formatting;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->bold_:Z

    .line 56
    iput-boolean v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->italics_:Z

    .line 57
    iput-boolean v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->strikethrough_:Z

    .line 58
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    .registers 1

    .prologue
    .line 178
    #calls: Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->create()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->access$100()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/tacotown/proto/data/Formatting;)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 181
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Formatting;->newBuilder()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/tacotown/proto/data/Formatting$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/data/Formatting;)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBold()Z
    .registers 2

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->bold_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Formatting;
    .registers 2

    .prologue
    .line 20
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Formatting;->defaultInstance:Lcom/google/apps/tacotown/proto/data/Formatting;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Formatting;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/data/Formatting;

    move-result-object v0

    return-object v0
.end method

.method public getItalics()Z
    .registers 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->italics_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 84
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->memoizedSerializedSize:I

    .line 85
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 101
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 87
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 88
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 89
    iget-boolean v2, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->bold_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 92
    :cond_17
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 93
    iget-boolean v2, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->italics_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 96
    :cond_24
    iget v2, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    .line 97
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->strikethrough_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 100
    :cond_33
    iput v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->memoizedSerializedSize:I

    move v1, v0

    .line 101
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStrikethrough()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->strikethrough_:Z

    return v0
.end method

.method public hasBold()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 28
    iget v1, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasItalics()Z
    .registers 3

    .prologue
    .line 38
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->bitField0_:I

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

.method public hasStrikethrough()Z
    .registers 3

    .prologue
    .line 48
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->bitField0_:I

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

    .line 61
    iget-byte v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->memoizedIsInitialized:B

    .line 62
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 65
    :goto_8
    return v1

    .line 62
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 64
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    .registers 2

    .prologue
    .line 179
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/Formatting;->newBuilder()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Formatting;->newBuilderForType()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;
    .registers 2

    .prologue
    .line 183
    invoke-static {p0}, Lcom/google/apps/tacotown/proto/data/Formatting;->newBuilder(Lcom/google/apps/tacotown/proto/data/Formatting;)Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Formatting;->toBuilder()Lcom/google/apps/tacotown/proto/data/Formatting$Builder;

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
    .line 108
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

    .line 70
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/data/Formatting;->getSerializedSize()I

    .line 71
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 72
    iget-boolean v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->bold_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 74
    :cond_10
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 75
    iget-boolean v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->italics_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 77
    :cond_1b
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    .line 78
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/apps/tacotown/proto/data/Formatting;->strikethrough_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 80
    :cond_28
    return-void
.end method
