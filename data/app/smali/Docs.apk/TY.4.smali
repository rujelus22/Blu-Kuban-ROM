.class public LTY;
.super Ldd;
.source "GDataParserProducerImpl.java"

# interfaces
.implements LTW;


# instance fields
.field private final a:I

.field private final a:LRQ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRQ",
            "<+",
            "Lasm;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LTX;

.field private final a:LZR;

.field private final a:Ljava/lang/String;

.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "LUa;",
            ">;"
        }
    .end annotation
.end field

.field private volatile a:Z

.field private final b:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(LTX;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;LZR;LRQ;II)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTX;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "LUa;",
            ">;",
            "LZR;",
            "LRQ",
            "<+",
            "Lasm;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Ldd;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, LTY;->a:Z

    .line 150
    iput-object p1, p0, LTY;->a:LTX;

    .line 151
    iput-object p4, p0, LTY;->a:Ljava/util/concurrent/BlockingQueue;

    .line 152
    iput-object p6, p0, LTY;->a:LRQ;

    .line 153
    iput-object p2, p0, LTY;->b:Ljava/lang/String;

    .line 154
    iput-object p3, p0, LTY;->a:Ljava/lang/String;

    .line 155
    iput p7, p0, LTY;->a:I

    .line 156
    iput-object p5, p0, LTY;->a:LZR;

    .line 157
    iput p8, p0, LTY;->b:I

    .line 158
    const-class v0, LTY;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LTY;->setName(Ljava/lang/String;)V

    .line 159
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 214
    invoke-virtual {p0}, LTY;->start()V

    .line 215
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 224
    invoke-virtual {p0}, LTY;->isAlive()Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 1

    .prologue
    .line 219
    invoke-virtual {p0}, LTY;->join()V

    .line 220
    return-void
.end method

.method public c()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 163
    iget-object v4, p0, LTY;->b:Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    move v7, v0

    .line 167
    :goto_5
    if-eqz v4, :cond_df

    :try_start_7
    invoke-virtual {p0}, LTY;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_df

    iget v0, p0, LTY;->a:I

    if-ge v7, v0, :cond_df

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_118

    move-result-wide v0

    .line 170
    :try_start_15
    iget-object v2, p0, LTY;->a:LZR;

    invoke-interface {v2}, LZR;->b()V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 173
    const-string v5, "GDataParserProducer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Time to wait for token "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v0, v2, v0

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, LTY;->a:LRQ;

    iget-object v1, p0, LTY;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v0, v4, v1, v5}, LRQ;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasm;
    :try_end_4a
    .catchall {:try_start_15 .. :try_end_4a} :catchall_9c

    move-result-object v1

    .line 176
    :try_start_4b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 177
    const-string v0, "GDataParserProducer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Time to get parser for feed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v2, v5, v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-interface {v1}, Lasm;->b()Lasf;

    move-result-object v2

    .line 180
    iget-object v0, p0, LTY;->a:LTX;

    invoke-interface {v0, v2}, LTX;->a(Lasf;)Ljava/lang/String;

    move-result-object v6

    .line 181
    iget-object v8, p0, LTY;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, LUa;

    const/4 v3, 0x0

    iget v5, p0, LTY;->b:I

    invoke-direct/range {v0 .. v6}, LUa;-><init>(Lasm;Lasf;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/String;)V

    const-wide v2, 0x7fffffffffffffffL

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v0, v2, v3, v5}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_91
    .catchall {:try_start_4b .. :try_end_91} :catchall_13a

    .line 185
    add-int/lit8 v0, v7, 0x1

    .line 187
    :try_start_93
    iget-object v1, p0, LTY;->a:LZR;

    invoke-interface {v1}, LZR;->c()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_98} :catch_136

    move v7, v0

    move-object v4, v6

    .line 189
    goto/16 :goto_5

    .line 187
    :catchall_9c
    move-exception v0

    move-object v1, v12

    :goto_9e
    :try_start_9e
    iget-object v2, p0, LTY;->a:LZR;

    invoke-interface {v2}, LZR;->c()V

    throw v0
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a4} :catch_a4

    .line 194
    :catch_a4
    move-exception v3

    move-object v12, v1

    .line 195
    :goto_a6
    const-string v0, "GDataParserProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error fetching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz v12, :cond_c3

    .line 197
    invoke-interface {v12}, Lasm;->a()V

    .line 201
    :cond_c3
    iget-boolean v0, p0, LTY;->a:Z

    if-nez v0, :cond_de

    .line 203
    :try_start_c7
    iget-object v7, p0, LTY;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, LUa;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v5, p0, LTY;->b:I

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, LUa;-><init>(Lasm;Lasf;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/String;)V

    const-wide v1, 0x7fffffffffffffffL

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v0, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_de
    .catch Ljava/lang/InterruptedException; {:try_start_c7 .. :try_end_de} :catch_11a

    .line 210
    :cond_de
    :goto_de
    return-void

    .line 191
    :cond_df
    :try_start_df
    iget-object v0, p0, LTY;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v5, LUa;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, LTY;->b:I

    move-object v11, v4

    invoke-direct/range {v5 .. v11}, LUa;-><init>(Lasm;Lasf;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/String;)V

    const-wide v1, 0x7fffffffffffffffL

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v5, v1, v2, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    .line 193
    const-string v0, "GDataParserProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LTY;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " feed finished, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LTY;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_117} :catch_118

    goto :goto_de

    .line 194
    :catch_118
    move-exception v3

    goto :goto_a6

    .line 205
    :catch_11a
    move-exception v0

    .line 206
    const-string v0, "GDataParserProducer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Producer cannot be terminated gracefully "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LTY;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    .line 194
    :catch_136
    move-exception v3

    move-object v4, v6

    goto/16 :goto_a6

    .line 187
    :catchall_13a
    move-exception v0

    goto/16 :goto_9e
.end method

.method public interrupt()V
    .registers 2

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, LTY;->a:Z

    .line 230
    invoke-super {p0}, Ldd;->interrupt()V

    .line 231
    return-void
.end method
