.class public final Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaceSearchLogResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27835
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    .line 27836
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->initFields()V

    .line 27837
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 27629
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 27644
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->memoizedIsInitialized:B

    .line 27658
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->memoizedSerializedSize:I

    .line 27630
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27624
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 27631
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 27644
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->memoizedIsInitialized:B

    .line 27658
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->memoizedSerializedSize:I

    .line 27631
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;
    .registers 1

    .prologue
    .line 27635
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 27643
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27624
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;
    .registers 2

    .prologue
    .line 27639
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 27660
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->memoizedSerializedSize:I

    .line 27661
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 27665
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 27663
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 27664
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 27665
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
    .line 27672
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
    .line 27655
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchLogResponse;->getSerializedSize()I

    .line 27656
    return-void
.end method
