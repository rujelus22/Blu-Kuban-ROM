.class public abstract LY/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[LY/a;


# instance fields
.field private b:I

.field protected c:LY/c;

.field protected d:Ljava/lang/Runnable;

.field protected e:Ljava/util/Vector;

.field private f:I

.field private g:Ljava/lang/Object;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [LY/a;

    sput-object v0, LY/a;->a:[LY/a;

    return-void
.end method

.method public constructor <init>(LY/c;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LY/a;->g:Ljava/lang/Object;

    .line 107
    iput-object p1, p0, LY/a;->c:LY/c;

    .line 108
    iput-object p2, p0, LY/a;->d:Ljava/lang/Runnable;

    .line 109
    iput-object p3, p0, LY/a;->h:Ljava/lang/String;

    .line 110
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, LY/a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 260
    iget-object v0, p0, LY/a;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 262
    :cond_9
    return-void
.end method

.method protected a(I)V
    .registers 2
    .parameter

    .prologue
    .line 236
    iput p1, p0, LY/a;->b:I

    .line 237
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, LY/a;->c:LY/c;

    invoke-virtual {v0, p0}, LY/c;->b(LY/a;)I

    move-result v0

    return v0
.end method

.method abstract d()I
.end method

.method protected e()[LY/a;
    .registers 3

    .prologue
    .line 188
    .line 189
    monitor-enter p0

    .line 190
    :try_start_1
    iget-object v0, p0, LY/a;->e:Ljava/util/Vector;

    if-eqz v0, :cond_14

    .line 191
    iget-object v0, p0, LY/a;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [LY/a;

    .line 192
    iget-object v1, p0, LY/a;->e:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 196
    :goto_12
    monitor-exit p0

    .line 197
    return-object v0

    .line 194
    :cond_14
    sget-object v0, LY/a;->a:[LY/a;

    goto :goto_12

    .line 196
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method protected f()I
    .registers 2

    .prologue
    .line 209
    iget v0, p0, LY/a;->b:I

    return v0
.end method

.method public g()V
    .registers 3

    .prologue
    .line 243
    iget-object v1, p0, LY/a;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, LY/a;->f:I

    .line 245
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    .line 246
    iget-object v0, p0, LY/a;->c:LY/c;

    invoke-virtual {v0, p0}, LY/c;->a(LY/a;)V

    .line 247
    return-void

    .line 245
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method abstract h()V
.end method

.method i()V
    .registers 4

    .prologue
    .line 292
    :try_start_0
    invoke-virtual {p0}, LY/a;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_22

    .line 300
    :goto_3
    iget-object v1, p0, LY/a;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_6
    iget v0, p0, LY/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LY/a;->f:I

    .line 302
    iget-object v0, p0, LY/a;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 303
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_27

    .line 305
    invoke-virtual {p0}, LY/a;->e()[LY/a;

    move-result-object v1

    .line 307
    const/4 v0, 0x0

    :goto_17
    array-length v2, v1

    if-ge v0, v2, :cond_2a

    .line 308
    aget-object v2, v1, v0

    invoke-virtual {v2}, LY/a;->g()V

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 293
    :catch_22
    move-exception v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 303
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0

    .line 310
    :cond_2a
    return-void
.end method
