.class public Lorg/apache/log4j/AsyncAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "AsyncAppender.java"

# interfaces
.implements Lorg/apache/log4j/spi/AppenderAttachable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/AsyncAppender$Dispatcher;,
        Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x80


# instance fields
.field aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

.field private final appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

.field private blocking:Z

.field private final buffer:Ljava/util/List;

.field private bufferSize:I

.field private final discardMap:Ljava/util/Map;

.field private final dispatcher:Ljava/lang/Thread;

.field private locationInfo:Z


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 105
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->discardMap:Ljava/util/Map;

    .line 77
    const/16 v0, 0x80

    iput v0, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/AsyncAppender;->locationInfo:Z

    .line 100
    iput-boolean v5, p0, Lorg/apache/log4j/AsyncAppender;->blocking:Z

    .line 106
    new-instance v0, Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    .line 110
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->aai:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    .line 112
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/log4j/AsyncAppender$Dispatcher;

    iget-object v2, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender;->discardMap:Ljava/util/Map;

    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/apache/log4j/AsyncAppender$Dispatcher;-><init>(Lorg/apache/log4j/AsyncAppender;Ljava/util/List;Ljava/util/Map;Lorg/apache/log4j/helpers/AppenderAttachableImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    .line 117
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 121
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Dispatcher-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    return-void
.end method


# virtual methods
.method public addAppender(Lorg/apache/log4j/Appender;)V
    .registers 4
    .parameter "newAppender"

    .prologue
    .line 131
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v1

    .line 132
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 133
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    .line 134
    return-void

    .line 133
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .registers 10
    .parameter "event"

    .prologue
    .line 144
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_10

    iget v5, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    if-gtz v5, :cond_1d

    .line 145
    :cond_10
    iget-object v6, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v6

    .line 146
    :try_start_13
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v5, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->appendLoopOnAppenders(Lorg/apache/log4j/spi/LoggingEvent;)I

    .line 147
    monitor-exit v6
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1a

    .line 223
    :goto_19
    return-void

    .line 147
    :catchall_1a
    move-exception v5

    monitor-exit v6

    throw v5

    .line 154
    :cond_1d
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 158
    iget-boolean v5, p0, Lorg/apache/log4j/AsyncAppender;->locationInfo:Z

    if-eqz v5, :cond_2d

    .line 159
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    .line 162
    :cond_2d
    iget-object v6, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    monitor-enter v6

    .line 164
    :cond_30
    :try_start_30
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 166
    .local v3, previousSize:I
    iget v5, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    if-ge v3, v5, :cond_4b

    .line 167
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    if-nez v3, :cond_46

    .line 175
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 222
    :cond_46
    :goto_46
    monitor-exit v6
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_48

    goto :goto_19

    .end local v3           #previousSize:I
    :catchall_48
    move-exception v5

    monitor-exit v6

    throw v5

    .line 188
    .restart local v3       #previousSize:I
    :cond_4b
    const/4 v0, 0x1

    .line 189
    .local v0, discard:Z
    :try_start_4c
    iget-boolean v5, p0, Lorg/apache/log4j/AsyncAppender;->blocking:Z

    if-eqz v5, :cond_64

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_64

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;
    :try_end_5c
    .catchall {:try_start_4c .. :try_end_5c} :catchall_48

    if-eq v5, v7, :cond_64

    .line 193
    :try_start_5e
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_48
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_63} :catch_7f

    .line 194
    const/4 v0, 0x0

    .line 208
    :cond_64
    :goto_64
    if-eqz v0, :cond_30

    .line 209
    :try_start_66
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, loggerName:Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->discardMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/log4j/AsyncAppender$DiscardSummary;

    .line 212
    .local v4, summary:Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    if-nez v4, :cond_88

    .line 213
    new-instance v4, Lorg/apache/log4j/AsyncAppender$DiscardSummary;

    .end local v4           #summary:Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    invoke-direct {v4, p1}, Lorg/apache/log4j/AsyncAppender$DiscardSummary;-><init>(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 214
    .restart local v4       #summary:Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    iget-object v5, p0, Lorg/apache/log4j/AsyncAppender;->discardMap:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 200
    .end local v2           #loggerName:Ljava/lang/String;
    .end local v4           #summary:Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    :catch_7f
    move-exception v1

    .local v1, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_64

    .line 216
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v2       #loggerName:Ljava/lang/String;
    .restart local v4       #summary:Lorg/apache/log4j/AsyncAppender$DiscardSummary;
    :cond_88
    invoke-virtual {v4, p1}, Lorg/apache/log4j/AsyncAppender$DiscardSummary;->add(Lorg/apache/log4j/spi/LoggingEvent;)V
    :try_end_8b
    .catchall {:try_start_66 .. :try_end_8b} :catchall_48

    goto :goto_46
.end method

.method public close()V
    .registers 6

    .prologue
    .line 234
    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    monitor-enter v4

    .line 235
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    .line 236
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 237
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_24

    .line 240
    :try_start_c
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender;->dispatcher:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_27

    .line 251
    :goto_11
    iget-object v4, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v4

    .line 252
    :try_start_14
    iget-object v3, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v3}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->getAllAppenders()Ljava/util/Enumeration;

    move-result-object v1

    .line 254
    .local v1, iter:Ljava/util/Enumeration;
    if-eqz v1, :cond_22

    .line 255
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_35

    .line 263
    :cond_22
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_43

    .line 264
    return-void

    .line 237
    .end local v1           #iter:Ljava/util/Enumeration;
    :catchall_24
    move-exception v3

    monitor-exit v4

    throw v3

    .line 242
    :catch_27
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 243
    const-string v3, "Got an InterruptedException while waiting for the dispatcher to finish."

    invoke-static {v3, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    .line 256
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #iter:Ljava/util/Enumeration;
    :cond_35
    :try_start_35
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 258
    .local v2, next:Ljava/lang/Object;
    instance-of v3, v2, Lorg/apache/log4j/Appender;

    if-eqz v3, :cond_1c

    .line 259
    check-cast v2, Lorg/apache/log4j/Appender;

    .end local v2           #next:Ljava/lang/Object;
    invoke-interface {v2}, Lorg/apache/log4j/Appender;->close()V
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_43

    goto :goto_1c

    .line 263
    .end local v1           #iter:Ljava/util/Enumeration;
    :catchall_43
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getAllAppenders()Ljava/util/Enumeration;
    .registers 3

    .prologue
    .line 271
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v1

    .line 272
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->getAllAppenders()Ljava/util/Enumeration;

    move-result-object v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    return-object v0

    .line 273
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getAppender(Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .registers 4
    .parameter "name"

    .prologue
    .line 283
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v1

    .line 284
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->getAppender(Ljava/lang/String;)Lorg/apache/log4j/Appender;

    move-result-object v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    return-object v0

    .line 285
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBlocking()Z
    .registers 2

    .prologue
    .line 417
    iget-boolean v0, p0, Lorg/apache/log4j/AsyncAppender;->blocking:Z

    return v0
.end method

.method public getBufferSize()I
    .registers 2

    .prologue
    .line 393
    iget v0, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    return v0
.end method

.method public getLocationInfo()Z
    .registers 2

    .prologue
    .line 295
    iget-boolean v0, p0, Lorg/apache/log4j/AsyncAppender;->locationInfo:Z

    return v0
.end method

.method public isAttached(Lorg/apache/log4j/Appender;)Z
    .registers 4
    .parameter "appender"

    .prologue
    .line 304
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v1

    .line 305
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->isAttached(Lorg/apache/log4j/Appender;)Z

    move-result v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    return v0

    .line 306
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeAllAppenders()V
    .registers 3

    .prologue
    .line 320
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v1

    .line 321
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAllAppenders()V

    .line 322
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    .line 323
    return-void

    .line 322
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeAppender(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 340
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v1

    .line 341
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAppender(Ljava/lang/String;)V

    .line 342
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    .line 343
    return-void

    .line 342
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeAppender(Lorg/apache/log4j/Appender;)V
    .registers 4
    .parameter "appender"

    .prologue
    .line 330
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    monitor-enter v1

    .line 331
    :try_start_3
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->appenders:Lorg/apache/log4j/helpers/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/AppenderAttachableImpl;->removeAppender(Lorg/apache/log4j/Appender;)V

    .line 332
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    .line 333
    return-void

    .line 332
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requiresLayout()Z
    .registers 2

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public setBlocking(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 403
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    monitor-enter v1

    .line 404
    :try_start_3
    iput-boolean p1, p0, Lorg/apache/log4j/AsyncAppender;->blocking:Z

    .line 405
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 406
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    .line 407
    return-void

    .line 406
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setBufferSize(I)V
    .registers 4
    .parameter "size"

    .prologue
    const/4 v0, 0x1

    .line 375
    if-gez p1, :cond_b

    .line 376
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    const-string v1, "size"

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_b
    iget-object v1, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    monitor-enter v1

    .line 383
    if-ge p1, v0, :cond_11

    move p1, v0

    .end local p1
    :cond_11
    :try_start_11
    iput p1, p0, Lorg/apache/log4j/AsyncAppender;->bufferSize:I

    .line 384
    iget-object v0, p0, Lorg/apache/log4j/AsyncAppender;->buffer:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 385
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1a

    .line 386
    return-void

    .line 385
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setLocationInfo(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 359
    iput-boolean p1, p0, Lorg/apache/log4j/AsyncAppender;->locationInfo:Z

    .line 360
    return-void
.end method
