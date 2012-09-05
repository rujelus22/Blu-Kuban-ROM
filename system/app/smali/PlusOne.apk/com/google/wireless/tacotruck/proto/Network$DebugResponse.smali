.class public final Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$DebugResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private debugInfoHtml_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52383
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;

    .line 52384
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->initFields()V

    .line 52385
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 52082
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 52131
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->memoizedIsInitialized:B

    .line 52148
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->memoizedSerializedSize:I

    .line 52083
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52077
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$DebugResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 52084
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 52131
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->memoizedIsInitialized:B

    .line 52148
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->memoizedSerializedSize:I

    .line 52084
    return-void
.end method

.method static synthetic access$74002(Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52077
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->debugInfoHtml_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$74102(Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52077
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->bitField0_:I

    return p1
.end method

.method private getDebugInfoHtmlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 52117
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->debugInfoHtml_:Ljava/lang/Object;

    .line 52118
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 52119
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 52121
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->debugInfoHtml_:Ljava/lang/Object;

    .line 52124
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;
    .registers 1

    .prologue
    .line 52088
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 52129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->debugInfoHtml_:Ljava/lang/Object;

    .line 52130
    return-void
.end method


# virtual methods
.method public getDebugInfoHtml()Ljava/lang/String;
    .registers 5

    .prologue
    .line 52103
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->debugInfoHtml_:Ljava/lang/Object;

    .line 52104
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 52105
    check-cast v1, Ljava/lang/String;

    .line 52113
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 52107
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 52109
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 52110
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 52111
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->debugInfoHtml_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 52113
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52077
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;
    .registers 2

    .prologue
    .line 52092
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 52150
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->memoizedSerializedSize:I

    .line 52151
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 52159
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 52153
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 52154
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 52155
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->getDebugInfoHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52158
    :cond_18
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 52159
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasDebugInfoHtml()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 52100
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->bitField0_:I

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
    .line 52166
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

    .line 52142
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->getSerializedSize()I

    .line 52143
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 52144
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugResponse;->getDebugInfoHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 52146
    :cond_11
    return-void
.end method
