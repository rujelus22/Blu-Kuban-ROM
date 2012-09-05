.class public Lcom/samsung/util/ThreadCore;
.super Ljava/lang/Object;
.source "ThreadCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mName:Ljava/lang/String;

.field private mThreadObject:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/util/ThreadCore;->mThreadObject:Ljava/lang/Thread;

    .line 38
    const-string v0, "Unnamed Thread"

    iput-object v0, p0, Lcom/samsung/util/ThreadCore;->mName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private getThreadObject()Ljava/lang/Thread;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/util/ThreadCore;->mThreadObject:Ljava/lang/Thread;

    return-object v0
.end method

.method private setThreadObject(Ljava/lang/Thread;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/util/ThreadCore;->mThreadObject:Ljava/lang/Thread;

    .line 42
    return-void
.end method


# virtual methods
.method public isRunnable()Z
    .registers 3

    .prologue
    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/util/ThreadCore;->getThreadObject()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public run()V
    .registers 1

    .prologue
    .line 65
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/util/ThreadCore;->mName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/util/ThreadCore;->getThreadObject()Ljava/lang/Thread;

    move-result-object v0

    .line 55
    .local v0, threadObject:Ljava/lang/Thread;
    if-nez v0, :cond_1a

    .line 56
    new-instance v0, Ljava/lang/Thread;

    .end local v0           #threadObject:Ljava/lang/Thread;
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    .restart local v0       #threadObject:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/samsung/util/ThreadCore;->mName:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 58
    iget-object v1, p0, Lcom/samsung/util/ThreadCore;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 59
    :cond_14
    invoke-direct {p0, v0}, Lcom/samsung/util/ThreadCore;->setThreadObject(Ljava/lang/Thread;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    :cond_1a
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/samsung/util/ThreadCore;->getThreadObject()Ljava/lang/Thread;

    move-result-object v0

    .line 75
    .local v0, threadObject:Ljava/lang/Thread;
    if-eqz v0, :cond_a

    .line 76
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/util/ThreadCore;->setThreadObject(Ljava/lang/Thread;)V

    .line 78
    :cond_a
    return-void
.end method
