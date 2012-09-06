.class Lcom/google/android/music/albumwall/Model$Requestable;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Requestable"
.end annotation


# instance fields
.field private mReceived:Z

.field private mRequest:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/albumwall/Model$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/google/android/music/albumwall/Model$Requestable;-><init>()V

    return-void
.end method


# virtual methods
.method final clear()V
    .registers 3

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$Requestable;->isRequestOutstanding()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 208
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Request outstanding."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mReceived:Z

    .line 211
    return-void
.end method

.method final invalidate()V
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mReceived:Z

    .line 176
    return-void
.end method

.method final isRequestOutstanding()Z
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mRequest:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final isValid()Z
    .registers 2

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mReceived:Z

    return v0
.end method

.method final peekNeedsRequest()Z
    .registers 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mReceived:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mRequest:Ljava/lang/Runnable;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method final setReceived()V
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mRequest:Ljava/lang/Runnable;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mReceived:Z

    .line 200
    return-void
.end method

.method final setRequest(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Model$Requestable;->peekNeedsRequest()Z

    move-result v0

    if-nez v0, :cond_e

    .line 188
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t need a request."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_e
    iput-object p1, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mRequest:Ljava/lang/Runnable;

    .line 191
    return-void
.end method

.method final setRequestFailed()V
    .registers 2

    .prologue
    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/albumwall/Model$Requestable;->mRequest:Ljava/lang/Runnable;

    .line 204
    return-void
.end method
