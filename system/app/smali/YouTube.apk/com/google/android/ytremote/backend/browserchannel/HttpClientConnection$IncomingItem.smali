.class final Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:Ljava/lang/Exception;

.field private c:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->CLOSED:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->c:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->ERROR:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->c:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    .line 213
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->b:Ljava/lang/Exception;

    .line 214
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->DATA:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->c:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    .line 207
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->a:Ljava/nio/ByteBuffer;

    .line 208
    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .registers 3

    .prologue
    .line 222
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->DATA:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->c:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    invoke-virtual {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "data accessed when state was not DATA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_12
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final b()Ljava/lang/Exception;
    .registers 3

    .prologue
    .line 234
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->ERROR:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->c:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    invoke-virtual {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "data accessed when state was not ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_12
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->b:Ljava/lang/Exception;

    return-object v0
.end method

.method public final c()Z
    .registers 3

    .prologue
    .line 246
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->CLOSED:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->c:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    invoke-virtual {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 3

    .prologue
    .line 253
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->ERROR:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->c:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;

    invoke-virtual {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
