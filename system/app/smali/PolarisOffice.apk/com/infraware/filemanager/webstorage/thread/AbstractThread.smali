.class public abstract Lcom/infraware/filemanager/webstorage/thread/AbstractThread;
.super Ljava/lang/Thread;
.source "AbstractThread.java"


# static fields
.field public static final THREAD_TYPE_DOWNLOAD:Ljava/lang/String; = "DOWNLOAD"

.field public static final THREAD_TYPE_LOGIN:Ljava/lang/String; = "LOGIN"

.field public static final THREAD_TYPE_UPLOAD:Ljava/lang/String; = "UPLOAD"


# instance fields
.field private isCancel:Z

.field private isDone:Z

.field protected password:Ljava/lang/String;

.field protected resultHandler:Landroid/os/Handler;

.field protected serviceType:I

.field protected sourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected targetPath:Ljava/lang/String;

.field public threadType:Ljava/lang/String;

.field protected userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .registers 5
    .parameter "name"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 15
    iput-boolean v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isCancel:Z

    .line 16
    iput-boolean v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isDone:Z

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->serviceType:I

    .line 19
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->userId:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->password:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->sourceList:Ljava/util/List;

    .line 23
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->targetPath:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->resultHandler:Landroid/os/Handler;

    .line 27
    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->threadType:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->resultHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method


# virtual methods
.method public addSourceList(Ljava/lang/String;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->sourceList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->sourceList:Ljava/util/List;

    .line 84
    :cond_b
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->sourceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isCancel:Z

    .line 57
    return-void
.end method

.method public clearList()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->sourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    return-void
.end method

.method protected done()V
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isDone:Z

    .line 52
    return-void
.end method

.method public isCancel()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isCancel:Z

    return v0
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->isDone:Z

    return v0
.end method

.method protected sendMessage(IIILjava/lang/String;)V
    .registers 7
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "value"

    .prologue
    .line 37
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->resultHandler:Landroid/os/Handler;

    if-nez v1, :cond_5

    .line 47
    :goto_4
    return-void

    .line 40
    :cond_5
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->resultHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 41
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 42
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 43
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 44
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->resultHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .parameter "password"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->password:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setSourceList(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->sourceList:Ljava/util/List;

    .line 90
    return-void
.end method

.method public setTargetPath(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/thread/AbstractThread;->targetPath:Ljava/lang/String;

    .line 77
    return-void
.end method
