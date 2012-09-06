.class public Lcom/google/android/apps/reader/content/PreconditionContentHandler;
.super Ljava/net/ContentHandler;
.source "PreconditionContentHandler.java"


# instance fields
.field private final mContentHandler:Ljava/net/ContentHandler;

.field private final mPrecondition:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/ContentHandler;Ljava/util/concurrent/Callable;)V
    .registers 5
    .parameter "handler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/ContentHandler;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, precondition:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 45
    if-nez p1, :cond_d

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ContentHandler is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_d
    if-nez p2, :cond_17

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Precondition is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_17
    iput-object p1, p0, Lcom/google/android/apps/reader/content/PreconditionContentHandler;->mContentHandler:Ljava/net/ContentHandler;

    .line 52
    iput-object p2, p0, Lcom/google/android/apps/reader/content/PreconditionContentHandler;->mPrecondition:Ljava/util/concurrent/Callable;

    .line 53
    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/reader/content/PreconditionContentHandler;->mPrecondition:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_e
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_5} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_12

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/reader/content/PreconditionContentHandler;->mContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {v0, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    :catch_c
    move-exception v0

    .line 60
    throw v0

    .line 61
    :catch_e
    move-exception v0

    .line 62
    throw v0

    .line 63
    :catch_10
    move-exception v0

    .line 64
    throw v0

    .line 65
    :catch_12
    move-exception v0

    .line 66
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 67
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 68
    throw v1
.end method
