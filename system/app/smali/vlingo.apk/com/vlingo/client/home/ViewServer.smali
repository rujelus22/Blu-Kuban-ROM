.class public Lcom/vlingo/client/home/ViewServer;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/home/ViewServer$1;,
        Lcom/vlingo/client/home/ViewServer$ViewServerWorker;,
        Lcom/vlingo/client/home/ViewServer$NoopViewServer;,
        Lcom/vlingo/client/home/ViewServer$UncloseableOuputStream;,
        Lcom/vlingo/client/home/ViewServer$WindowListener;
    }
.end annotation


# static fields
.field private static final BUILD_TYPE_USER:Ljava/lang/String; = "user"

.field private static final COMMAND_PROTOCOL_VERSION:Ljava/lang/String; = "PROTOCOL"

.field private static final COMMAND_SERVER_VERSION:Ljava/lang/String; = "SERVER"

.field private static final COMMAND_WINDOW_MANAGER_AUTOLIST:Ljava/lang/String; = "AUTOLIST"

.field private static final COMMAND_WINDOW_MANAGER_GET_FOCUS:Ljava/lang/String; = "GET_FOCUS"

.field private static final COMMAND_WINDOW_MANAGER_LIST:Ljava/lang/String; = "LIST"

.field private static final LOG_TAG:Ljava/lang/String; = "LocalViewServer"

.field private static final VALUE_PROTOCOL_VERSION:Ljava/lang/String; = "4"

.field private static final VALUE_SERVER_VERSION:Ljava/lang/String; = "4"

.field private static final VIEW_SERVER_DEFAULT_PORT:I = 0x134b

.field private static final VIEW_SERVER_MAX_CONNECTIONS:I = 0xa

.field private static sServer:Lcom/vlingo/client/home/ViewServer;


# instance fields
.field private final mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mFocusedWindow:Landroid/view/View;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/home/ViewServer$WindowListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPort:I

.field private mServer:Ljava/net/ServerSocket;

.field private mThread:Ljava/lang/Thread;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final mWindows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mListeners:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mWindows:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 105
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/home/ViewServer;->mPort:I

    .line 146
    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .parameter "port"

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mListeners:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mWindows:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 105
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 157
    iput p1, p0, Lcom/vlingo/client/home/ViewServer;->mPort:I

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/home/ViewServer$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/vlingo/client/home/ViewServer;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljava/net/Socket;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/vlingo/client/home/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/home/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vlingo/client/home/ViewServer;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mFocusedWindow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vlingo/client/home/ViewServer;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mWindows:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vlingo/client/home/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vlingo/client/home/ViewServer;Lcom/vlingo/client/home/ViewServer$WindowListener;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/vlingo/client/home/ViewServer;->addWindowListener(Lcom/vlingo/client/home/ViewServer$WindowListener;)V

    return-void
.end method

.method static synthetic access$800(Lcom/vlingo/client/home/ViewServer;Lcom/vlingo/client/home/ViewServer$WindowListener;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/vlingo/client/home/ViewServer;->removeWindowListener(Lcom/vlingo/client/home/ViewServer$WindowListener;)V

    return-void
.end method

.method private addWindowListener(Lcom/vlingo/client/home/ViewServer$WindowListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 399
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_d
    return-void
.end method

.method private fireFocusChangedEvent()V
    .registers 4

    .prologue
    .line 392
    iget-object v2, p0, Lcom/vlingo/client/home/ViewServer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/home/ViewServer$WindowListener;

    .line 393
    .local v1, listener:Lcom/vlingo/client/home/ViewServer$WindowListener;
    invoke-interface {v1}, Lcom/vlingo/client/home/ViewServer$WindowListener;->focusChanged()V

    goto :goto_6

    .line 395
    .end local v1           #listener:Lcom/vlingo/client/home/ViewServer$WindowListener;
    :cond_16
    return-void
.end method

.method private fireWindowsChangedEvent()V
    .registers 4

    .prologue
    .line 386
    iget-object v2, p0, Lcom/vlingo/client/home/ViewServer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/home/ViewServer$WindowListener;

    .line 387
    .local v1, listener:Lcom/vlingo/client/home/ViewServer$WindowListener;
    invoke-interface {v1}, Lcom/vlingo/client/home/ViewServer$WindowListener;->windowsChanged()V

    goto :goto_6

    .line 389
    .end local v1           #listener:Lcom/vlingo/client/home/ViewServer$WindowListener;
    :cond_16
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/vlingo/client/home/ViewServer;
    .registers 5
    .parameter "context"

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 124
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    const-string v2, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3a

    .line 126
    sget-object v2, Lcom/vlingo/client/home/ViewServer;->sServer:Lcom/vlingo/client/home/ViewServer;

    if-nez v2, :cond_21

    .line 127
    new-instance v2, Lcom/vlingo/client/home/ViewServer;

    const/16 v3, 0x134b

    invoke-direct {v2, v3}, Lcom/vlingo/client/home/ViewServer;-><init>(I)V

    sput-object v2, Lcom/vlingo/client/home/ViewServer;->sServer:Lcom/vlingo/client/home/ViewServer;

    .line 130
    :cond_21
    sget-object v2, Lcom/vlingo/client/home/ViewServer;->sServer:Lcom/vlingo/client/home/ViewServer;

    invoke-virtual {v2}, Lcom/vlingo/client/home/ViewServer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 132
    :try_start_29
    sget-object v2, Lcom/vlingo/client/home/ViewServer;->sServer:Lcom/vlingo/client/home/ViewServer;

    invoke-virtual {v2}, Lcom/vlingo/client/home/ViewServer;->start()Z
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_31

    .line 141
    :cond_2e
    :goto_2e
    sget-object v2, Lcom/vlingo/client/home/ViewServer;->sServer:Lcom/vlingo/client/home/ViewServer;

    return-object v2

    .line 133
    :catch_31
    move-exception v0

    .line 134
    .local v0, e:Ljava/io/IOException;
    const-string v2, "LocalViewServer"

    const-string v3, "Error:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 138
    .end local v0           #e:Ljava/io/IOException;
    :cond_3a
    new-instance v2, Lcom/vlingo/client/home/ViewServer$NoopViewServer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/vlingo/client/home/ViewServer$NoopViewServer;-><init>(Lcom/vlingo/client/home/ViewServer$1;)V

    sput-object v2, Lcom/vlingo/client/home/ViewServer;->sServer:Lcom/vlingo/client/home/ViewServer;

    goto :goto_2e
.end method

.method private removeWindowListener(Lcom/vlingo/client/home/ViewServer$WindowListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 405
    return-void
.end method

.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .registers 9
    .parameter "client"
    .parameter "value"

    .prologue
    .line 363
    const/4 v2, 0x0

    .line 365
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 366
    .local v0, clientStream:Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_28

    .line 367
    .end local v2           #out:Ljava/io/BufferedWriter;
    .local v3, out:Ljava/io/BufferedWriter;
    :try_start_11
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 368
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_3c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_3f

    .line 370
    const/4 v4, 0x1

    .line 374
    .local v4, result:Z
    if-eqz v3, :cond_42

    .line 376
    :try_start_1f
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_24

    move-object v2, v3

    .line 382
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    :cond_23
    :goto_23
    return v4

    .line 377
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_24
    move-exception v1

    .line 378
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    move-object v2, v3

    .line 379
    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_23

    .line 371
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catch_28
    move-exception v1

    .line 372
    .local v1, e:Ljava/lang/Exception;
    :goto_29
    const/4 v4, 0x0

    .line 374
    .restart local v4       #result:Z
    if-eqz v2, :cond_23

    .line 376
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_23

    .line 377
    :catch_30
    move-exception v1

    .line 378
    .local v1, e:Ljava/io/IOException;
    const/4 v4, 0x0

    .line 379
    goto :goto_23

    .line 374
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #result:Z
    :catchall_33
    move-exception v5

    :goto_34
    if-eqz v2, :cond_39

    .line 376
    :try_start_36
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 379
    :cond_39
    :goto_39
    throw v5

    .line 377
    :catch_3a
    move-exception v1

    .line 378
    .restart local v1       #e:Ljava/io/IOException;
    goto :goto_39

    .line 374
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catchall_3c
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_34

    .line 371
    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    :catch_3f
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_29

    .end local v2           #out:Ljava/io/BufferedWriter;
    .restart local v3       #out:Ljava/io/BufferedWriter;
    .restart local v4       #result:Z
    :cond_42
    move-object v2, v3

    .end local v3           #out:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/BufferedWriter;
    goto :goto_23
.end method


# virtual methods
.method public addWindow(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, name:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_31
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/vlingo/client/home/ViewServer;->addWindow(Landroid/view/View;Ljava/lang/String;)V

    .line 263
    return-void

    .line 260
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method

.method public addWindow(Landroid/view/View;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "name"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 288
    :try_start_9
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mWindows:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1f

    .line 290
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 292
    invoke-direct {p0}, Lcom/vlingo/client/home/ViewServer;->fireWindowsChangedEvent()V

    .line 293
    return-void

    .line 290
    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/vlingo/client/home/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public removeWindow(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/ViewServer;->removeWindow(Landroid/view/View;)V

    .line 275
    return-void
.end method

.method public removeWindow(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 305
    :try_start_9
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mWindows:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_1f

    .line 307
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 309
    invoke-direct {p0}, Lcom/vlingo/client/home/ViewServer;->fireWindowsChangedEvent()V

    .line 310
    return-void

    .line 307
    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/vlingo/client/home/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 342
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/home/ViewServer;->mThread:Ljava/lang/Thread;

    if-ne v2, v3, :cond_2f

    .line 345
    :try_start_8
    iget-object v2, p0, Lcom/vlingo/client/home/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 346
    .local v0, client:Ljava/net/Socket;
    iget-object v2, p0, Lcom/vlingo/client/home/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_26

    .line 347
    iget-object v2, p0, Lcom/vlingo/client/home/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/vlingo/client/home/ViewServer$ViewServerWorker;

    invoke-direct {v3, p0, v0}, Lcom/vlingo/client/home/ViewServer$ViewServerWorker;-><init>(Lcom/vlingo/client/home/ViewServer;Ljava/net/Socket;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_1d

    goto :goto_0

    .line 355
    .end local v0           #client:Ljava/net/Socket;
    :catch_1d
    move-exception v1

    .line 356
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "LocalViewServer"

    const-string v3, "Connection error: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 350
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #client:Ljava/net/Socket;
    :cond_26
    :try_start_26
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_1d

    goto :goto_0

    .line 351
    :catch_2a
    move-exception v1

    .line 352
    .local v1, e:Ljava/io/IOException;
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_1d

    goto :goto_0

    .line 359
    .end local v0           #client:Ljava/net/Socket;
    .end local v1           #e:Ljava/io/IOException;
    :cond_2f
    return-void
.end method

.method public setFocusedWindow(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 319
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/ViewServer;->setFocusedWindow(Landroid/view/View;)V

    .line 320
    return-void
.end method

.method public setFocusedWindow(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 331
    if-nez p1, :cond_1b

    const/4 v0, 0x0

    :goto_c
    :try_start_c
    iput-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mFocusedWindow:Landroid/view/View;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_20

    .line 333
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 335
    invoke-direct {p0}, Lcom/vlingo/client/home/ViewServer;->fireFocusChangedEvent()V

    .line 336
    return-void

    .line 331
    :cond_1b
    :try_start_1b
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_20

    move-result-object v0

    goto :goto_c

    .line 333
    :catchall_20
    move-exception v0

    iget-object v1, p0, Lcom/vlingo/client/home/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public start()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    .line 171
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_8

    .line 172
    const/4 v0, 0x0

    .line 180
    :goto_7
    return v0

    .line 175
    :cond_8
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lcom/vlingo/client/home/ViewServer;->mPort:I

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mServer:Ljava/net/ServerSocket;

    .line 176
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local View Server [port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vlingo/client/home/ViewServer;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mThread:Ljava/lang/Thread;

    .line 177
    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 178
    iget-object v0, p0, Lcom/vlingo/client/home/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 180
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public stop()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v1, p0, Lcom/vlingo/client/home/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_32

    .line 195
    iget-object v1, p0, Lcom/vlingo/client/home/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 196
    iget-object v1, p0, Lcom/vlingo/client/home/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_13

    .line 198
    :try_start_e
    iget-object v1, p0, Lcom/vlingo/client/home/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_13} :catch_21

    .line 204
    :cond_13
    :goto_13
    iput-object v3, p0, Lcom/vlingo/client/home/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 205
    iput-object v3, p0, Lcom/vlingo/client/home/ViewServer;->mThread:Ljava/lang/Thread;

    .line 208
    :try_start_17
    iget-object v1, p0, Lcom/vlingo/client/home/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/home/ViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_2a

    .line 210
    const/4 v1, 0x1

    .line 230
    :goto_20
    return v1

    .line 199
    :catch_21
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "LocalViewServer"

    const-string v2, "Could not stop all view server threads"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 211
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2a
    move-exception v0

    .line 212
    .local v0, e:Ljava/io/IOException;
    const-string v1, "LocalViewServer"

    const-string v2, "Could not close the view server"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v0           #e:Ljava/io/IOException;
    :cond_32
    iget-object v1, p0, Lcom/vlingo/client/home/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 218
    :try_start_3b
    iget-object v1, p0, Lcom/vlingo/client/home/ViewServer;->mWindows:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_60

    .line 220
    iget-object v1, p0, Lcom/vlingo/client/home/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 223
    iget-object v1, p0, Lcom/vlingo/client/home/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 225
    const/4 v1, 0x0

    :try_start_53
    iput-object v1, p0, Lcom/vlingo/client/home/ViewServer;->mFocusedWindow:Landroid/view/View;
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_6b

    .line 227
    iget-object v1, p0, Lcom/vlingo/client/home/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 230
    const/4 v1, 0x0

    goto :goto_20

    .line 220
    :catchall_60
    move-exception v1

    iget-object v2, p0, Lcom/vlingo/client/home/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1

    .line 227
    :catchall_6b
    move-exception v1

    iget-object v2, p0, Lcom/vlingo/client/home/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method
