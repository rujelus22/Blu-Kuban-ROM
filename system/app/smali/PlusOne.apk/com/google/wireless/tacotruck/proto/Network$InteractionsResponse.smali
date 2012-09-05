.class public final Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InteractionsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31070
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    .line 31071
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->initFields()V

    .line 31072
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 30864
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 30879
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->memoizedIsInitialized:B

    .line 30893
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->memoizedSerializedSize:I

    .line 30865
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30859
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 30866
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 30879
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->memoizedIsInitialized:B

    .line 30893
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->memoizedSerializedSize:I

    .line 30866
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;
    .registers 1

    .prologue
    .line 30870
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 30878
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30859
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;
    .registers 2

    .prologue
    .line 30874
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 30895
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->memoizedSerializedSize:I

    .line 30896
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 30900
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 30898
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 30899
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 30900
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 30907
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30890
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$InteractionsResponse;->getSerializedSize()I

    .line 30891
    return-void
.end method
