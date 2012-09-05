.class public final Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreatePhotoCommentResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21501
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

    .line 21502
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->initFields()V

    .line 21503
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 21211
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 21238
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->memoizedIsInitialized:B

    .line 21255
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->memoizedSerializedSize:I

    .line 21212
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21206
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 21213
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21238
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->memoizedIsInitialized:B

    .line 21255
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->memoizedSerializedSize:I

    .line 21213
    return-void
.end method

.method static synthetic access$29202(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;Lcom/google/wireless/tacotruck/proto/Data$Comment;)Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21206
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object p1
.end method

.method static synthetic access$29302(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21206
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;
    .registers 1

    .prologue
    .line 21217
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 21236
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Comment;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Comment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    .line 21237
    return-void
.end method


# virtual methods
.method public getComment()Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 2

    .prologue
    .line 21232
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21206
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;
    .registers 2

    .prologue
    .line 21221
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 21257
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->memoizedSerializedSize:I

    .line 21258
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 21266
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 21260
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 21261
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 21262
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21265
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 21266
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasComment()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 21229
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 21273
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

    .line 21249
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->getSerializedSize()I

    .line 21250
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 21251
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentResponse;->comment_:Lcom/google/wireless/tacotruck/proto/Data$Comment;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 21253
    :cond_f
    return-void
.end method
