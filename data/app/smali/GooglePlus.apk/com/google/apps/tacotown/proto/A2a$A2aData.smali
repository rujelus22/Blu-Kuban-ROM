.class public final Lcom/google/apps/tacotown/proto/A2a$A2aData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "A2a.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/A2a$A2aDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/A2a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "A2aData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/tacotown/proto/A2a$A2aData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 326
    new-instance v0, Lcom/google/apps/tacotown/proto/A2a$A2aData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/tacotown/proto/A2a$A2aData;-><init>(Z)V

    sput-object v0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->defaultInstance:Lcom/google/apps/tacotown/proto/A2a$A2aData;

    .line 327
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->defaultInstance:Lcom/google/apps/tacotown/proto/A2a$A2aData;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->initFields()V

    .line 328
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 24
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 51
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->memoizedIsInitialized:B

    .line 74
    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->memoizedSerializedSize:I

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;Lcom/google/apps/tacotown/proto/A2a$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/google/apps/tacotown/proto/A2a$A2aData;-><init>(Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 51
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->memoizedIsInitialized:B

    .line 74
    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->memoizedSerializedSize:I

    .line 26
    return-void
.end method

.method static synthetic access$302(Lcom/google/apps/tacotown/proto/A2a$A2aData;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/apps/tacotown/proto/A2a$A2aData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$A2aData;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->defaultInstance:Lcom/google/apps/tacotown/proto/A2a$A2aData;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 49
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 50
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;
    .registers 1

    .prologue
    .line 162
    #calls: Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->create()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->access$100()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/tacotown/proto/A2a$A2aData;)Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 165
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->newBuilder()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$A2aData;)Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$A2aData;
    .registers 2

    .prologue
    .line 34
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->defaultInstance:Lcom/google/apps/tacotown/proto/A2a$A2aData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$A2aData;

    move-result-object v0

    return-object v0
.end method

.method public getHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 76
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->memoizedSerializedSize:I

    .line 77
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 85
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 79
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 80
    iget v2, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 81
    iget-object v2, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 84
    :cond_16
    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->memoizedSerializedSize:I

    move v1, v0

    .line 85
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasHangoutData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 42
    iget v1, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 53
    iget-byte v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->memoizedIsInitialized:B

    .line 54
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 63
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 54
    goto :goto_9

    .line 56
    :cond_c
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->hasHangoutData()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 57
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->getHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 58
    iput-byte v2, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->memoizedIsInitialized:B

    move v1, v2

    .line 59
    goto :goto_9

    .line 62
    :cond_20
    iput-byte v1, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;
    .registers 2

    .prologue
    .line 163
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->newBuilder()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->newBuilderForType()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;
    .registers 2

    .prologue
    .line 167
    invoke-static {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->newBuilder(Lcom/google/apps/tacotown/proto/A2a$A2aData;)Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->toBuilder()Lcom/google/apps/tacotown/proto/A2a$A2aData$Builder;

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
    .line 92
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

    .line 68
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$A2aData;->getSerializedSize()I

    .line 69
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 70
    iget-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$A2aData;->hangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 72
    :cond_f
    return-void
.end method
