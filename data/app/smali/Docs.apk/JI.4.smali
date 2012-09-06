.class public abstract LJI;
.super Ljava/lang/Object;
.source "HttpIssuerBase.java"

# interfaces
.implements LJH;


# instance fields
.field private a:I

.field private a:LJL;

.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "LJK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, LJI;->a:Ljava/lang/ThreadLocal;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, LJI;->a:LJL;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, LJI;->a:I

    return-void
.end method

.method private a(Lorg/apache/http/params/HttpParams;)V
    .registers 3
    .parameter

    .prologue
    .line 222
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 223
    new-instance v0, LJJ;

    invoke-direct {v0, p0}, LJJ;-><init>(LJI;)V

    invoke-static {p1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 229
    return-void
.end method

.method private declared-synchronized b()LJL;
    .registers 4

    .prologue
    .line 205
    monitor-enter p0

    :try_start_1
    iget v0, p0, LJI;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LJI;->a:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1d

    .line 206
    const-string v0, "HttpIssuerBase"

    const-string v1, "HttpIssuer connection leak, number of active connections exceeded 10"

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, LJI;->a:LJL;

    .line 209
    const/4 v0, 0x1

    iput v0, p0, LJI;->a:I

    .line 211
    :cond_1d
    iget-object v0, p0, LJI;->a:LJL;

    if-nez v0, :cond_30

    .line 212
    invoke-virtual {p0}, LJI;->a()LJL;

    move-result-object v0

    iput-object v0, p0, LJI;->a:LJL;

    .line 213
    iget-object v0, p0, LJI;->a:LJL;

    invoke-interface {v0}, LJL;->a()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-direct {p0, v0}, LJI;->a(Lorg/apache/http/params/HttpParams;)V

    .line 215
    :cond_30
    iget-object v0, p0, LJI;->a:LJL;
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    monitor-exit p0

    return-object v0

    .line 205
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 6
    .parameter

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 118
    :try_start_1
    new-instance v0, LJO;

    invoke-direct {p0}, LJI;->b()LJL;

    move-result-object v2

    invoke-interface {v2, p1}, LJL;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-direct {v0, v2}, LJO;-><init>(Lorg/apache/http/HttpResponse;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_19

    .line 121
    iget-object v1, p0, LJI;->a:Ljava/lang/ThreadLocal;

    new-instance v2, LJK;

    invoke-direct {v2, p1, v0}, LJK;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;LJO;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0

    :catchall_19
    move-exception v0

    iget-object v2, p0, LJI;->a:Ljava/lang/ThreadLocal;

    new-instance v3, LJK;

    invoke-direct {v3, p1, v1}, LJK;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;LJO;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0
.end method

.method private declared-synchronized d()V
    .registers 2

    .prologue
    .line 232
    monitor-enter p0

    :try_start_1
    iget v0, p0, LJI;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LJI;->a:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 233
    monitor-exit p0

    return-void

    .line 232
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract a()LJL;
.end method

.method public a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, LJI;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 106
    invoke-direct {p0, p1}, LJI;->b(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0

    .line 108
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v0, "More than 1 active request per thread is not allowed."

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, LJI;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJK;

    invoke-virtual {v0}, LJK;->a()Ljava/io/IOException;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 111
    throw v1
.end method

.method public a()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, LJI;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJK;

    .line 128
    if-nez v0, :cond_12

    .line 129
    const-string v0, "HttpIssuerBase"

    const-string v1, "Attempt to consume entity of HttpIssuer when no request is executing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_11
    :goto_11
    return-void

    .line 132
    :cond_12
    invoke-virtual {v0}, LJK;->a()LJO;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_11

    .line 136
    invoke-virtual {v0}, LJO;->a()LJM;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_11

    .line 139
    :try_start_1e
    invoke-virtual {v0}, LJM;->consumeContent()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_11

    .line 140
    :catch_22
    move-exception v0

    goto :goto_11
.end method

.method public b()V
    .registers 7

    .prologue
    .line 148
    iget-object v0, p0, LJI;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJK;

    .line 149
    if-nez v0, :cond_17

    .line 150
    const-string v0, "HttpIssuerBase"

    const-string v1, "Attempt to close HttpIssuer when no request is executing."

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :goto_16
    return-void

    .line 153
    :cond_17
    const-wide/16 v2, 0x0

    .line 154
    const/4 v1, 0x0

    .line 156
    :try_start_1a
    const-string v4, "HttpIssuerBase"

    const-string v5, "Start closing time"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, LJI;->d()V

    .line 158
    invoke-virtual {v0}, LJK;->a()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v4

    .line 159
    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_8b

    move-result v5

    if-eqz v5, :cond_3a

    .line 169
    invoke-virtual {p0}, LJI;->a()V

    .line 177
    invoke-virtual {v0}, LJK;->a()V

    .line 178
    iget-object v0, p0, LJI;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_16

    .line 162
    :cond_3a
    :try_start_3a
    invoke-virtual {v0}, LJK;->a()LJO;

    move-result-object v5

    .line 163
    if-eqz v5, :cond_46

    invoke-virtual {v5}, LJO;->a()Z

    move-result v5

    if-nez v5, :cond_4e

    .line 164
    :cond_46
    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_8b

    move-result-wide v2

    .line 166
    const/4 v1, 0x1

    .line 169
    :cond_4e
    invoke-virtual {p0}, LJI;->a()V

    .line 170
    if-eqz v1, :cond_82

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v2

    .line 172
    const-wide/16 v3, 0x3e8

    cmp-long v3, v1, v3

    if-lez v3, :cond_82

    .line 173
    const-string v3, "HttpIssuerBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Excessive delay between abort and stream closure: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :cond_82
    invoke-virtual {v0}, LJK;->a()V

    .line 178
    iget-object v0, p0, LJI;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_16

    .line 169
    :catchall_8b
    move-exception v1

    invoke-virtual {p0}, LJI;->a()V

    .line 177
    invoke-virtual {v0}, LJK;->a()V

    .line 178
    iget-object v0, p0, LJI;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    throw v1
.end method

.method public declared-synchronized c()V
    .registers 2

    .prologue
    .line 184
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LJI;->a:LJL;

    if-eqz v0, :cond_d

    .line 185
    iget-object v0, p0, LJI;->a:LJL;

    invoke-interface {v0}, LJL;->a()V

    .line 186
    const/4 v0, 0x0

    iput v0, p0, LJI;->a:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 188
    :cond_d
    monitor-exit p0

    return-void

    .line 184
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
