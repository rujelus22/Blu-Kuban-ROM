.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoPlusOneResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22119
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    .line 22120
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->initFields()V

    .line 22121
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 21913
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 21928
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->memoizedIsInitialized:B

    .line 21942
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->memoizedSerializedSize:I

    .line 21914
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21908
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 21915
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21928
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->memoizedIsInitialized:B

    .line 21942
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->memoizedSerializedSize:I

    .line 21915
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;
    .registers 1

    .prologue
    .line 21919
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 21927
    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21908
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;
    .registers 2

    .prologue
    .line 21923
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 21944
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->memoizedSerializedSize:I

    .line 21945
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 21949
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 21947
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 21948
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 21949
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
    .line 21956
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
    .line 21939
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoPlusOneResponse;->getSerializedSize()I

    .line 21940
    return-void
.end method
