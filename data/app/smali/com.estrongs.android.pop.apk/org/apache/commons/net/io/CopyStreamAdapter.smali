.class public Lorg/apache/commons/net/io/CopyStreamAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/net/io/CopyStreamListener;


# instance fields
.field private final internalListeners:Lorg/apache/commons/net/util/ListenerList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/commons/net/util/ListenerList;

    invoke-direct {v0}, Lorg/apache/commons/net/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->internalListeners:Lorg/apache/commons/net/util/ListenerList;

    return-void
.end method


# virtual methods
.method public addCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->internalListeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->addListener(Ljava/util/EventListener;)V

    return-void
.end method

.method public bytesTransferred(JIJ)V
    .registers 13

    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->internalListeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    check-cast v0, Lorg/apache/commons/net/io/CopyStreamListener;

    check-cast v0, Lorg/apache/commons/net/io/CopyStreamListener;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V

    goto :goto_6

    :cond_1d
    return-void
.end method

.method public bytesTransferred(Lorg/apache/commons/net/io/CopyStreamEvent;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->internalListeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0}, Lorg/apache/commons/net/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    check-cast v0, Lorg/apache/commons/net/io/CopyStreamListener;

    check-cast v0, Lorg/apache/commons/net/io/CopyStreamListener;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(Lorg/apache/commons/net/io/CopyStreamEvent;)V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public removeCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->internalListeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->removeListener(Ljava/util/EventListener;)V

    return-void
.end method
