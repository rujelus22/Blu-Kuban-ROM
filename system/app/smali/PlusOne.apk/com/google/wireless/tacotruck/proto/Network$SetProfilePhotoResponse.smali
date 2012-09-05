.class public final Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetProfilePhotoResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44119
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    .line 44120
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->initFields()V

    .line 44121
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 43913
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 43928
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->memoizedIsInitialized:B

    .line 43942
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->memoizedSerializedSize:I

    .line 43914
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43908
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 43915
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 43928
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->memoizedIsInitialized:B

    .line 43942
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->memoizedSerializedSize:I

    .line 43915
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    .registers 1

    .prologue
    .line 43919
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 43927
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 1

    .prologue
    .line 44026
    #calls: Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->access$61500()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43962
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->access$61400(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43908
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    .registers 2

    .prologue
    .line 43923
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 43944
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->memoizedSerializedSize:I

    .line 43945
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 43949
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 43947
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 43948
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 43949
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 43930
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->memoizedIsInitialized:B

    .line 43931
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 43934
    :goto_8
    return v1

    .line 43931
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 43933
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->memoizedIsInitialized:B

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
    .line 43956
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
    .line 43939
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->getSerializedSize()I

    .line 43940
    return-void
.end method
