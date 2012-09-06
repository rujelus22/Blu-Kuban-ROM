.class public abstract Ldbxyzptlk/a/a;
.super Ldbxyzptlk/a/d;
.source "panda.py"


# instance fields
.field volatile a:Ldbxyzptlk/a/b;

.field volatile b:Ldbxyzptlk/a/b;

.field c:J

.field d:J

.field e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Ldbxyzptlk/a/d;-><init>(Landroid/content/Context;)V

    .line 88
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Ldbxyzptlk/a/a;->d:J

    .line 93
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    .prologue
    .line 111
    invoke-super {p0}, Ldbxyzptlk/a/d;->a()V

    .line 112
    invoke-virtual {p0}, Ldbxyzptlk/a/a;->b()Z

    .line 113
    new-instance v0, Ldbxyzptlk/a/b;

    invoke-direct {v0, p0}, Ldbxyzptlk/a/b;-><init>(Ldbxyzptlk/a/a;)V

    iput-object v0, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    .line 115
    invoke-virtual {p0}, Ldbxyzptlk/a/a;->c()V

    .line 116
    return-void
.end method

.method final a(Ldbxyzptlk/a/b;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-virtual {p0, p2}, Ldbxyzptlk/a/a;->a(Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Ldbxyzptlk/a/a;->b:Ldbxyzptlk/a/b;

    if-ne v0, p1, :cond_13

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/a/a;->d:J

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/a/a;->b:Ldbxyzptlk/a/b;

    .line 205
    invoke-virtual {p0}, Ldbxyzptlk/a/a;->c()V

    .line 207
    :cond_13
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-super {p0, p1, p2, p3, p4}, Ldbxyzptlk/a/d;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    if-eqz v0, :cond_20

    .line 268
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 269
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    iget-boolean v0, v0, Ldbxyzptlk/a/b;->b:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 271
    :cond_20
    iget-object v0, p0, Ldbxyzptlk/a/a;->b:Ldbxyzptlk/a/b;

    if-eqz v0, :cond_3d

    .line 272
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ldbxyzptlk/a/a;->b:Ldbxyzptlk/a/b;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 273
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Ldbxyzptlk/a/a;->b:Ldbxyzptlk/a/b;

    iget-boolean v0, v0, Ldbxyzptlk/a/b;->b:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 275
    :cond_3d
    iget-wide v0, p0, Ldbxyzptlk/a/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_63

    .line 276
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    iget-wide v0, p0, Ldbxyzptlk/a/a;->c:J

    invoke-static {v0, v1, p3}, Ldbxyzptlk/c/d;->a(JLjava/io/PrintWriter;)V

    .line 278
    const-string v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget-wide v0, p0, Ldbxyzptlk/a/a;->d:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p3}, Ldbxyzptlk/c/d;->a(JJLjava/io/PrintWriter;)V

    .line 281
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 283
    :cond_63
    return-void
.end method

.method final b(Ldbxyzptlk/a/b;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    if-eq v0, p1, :cond_8

    .line 212
    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/a/a;->a(Ldbxyzptlk/a/b;Ljava/lang/Object;)V

    .line 224
    :goto_7
    return-void

    .line 214
    :cond_8
    invoke-virtual {p0}, Ldbxyzptlk/a/a;->l()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 216
    invoke-virtual {p0, p2}, Ldbxyzptlk/a/a;->a(Ljava/lang/Object;)V

    goto :goto_7

    .line 218
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/a/a;->d:J

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    .line 221
    invoke-virtual {p0, p2}, Ldbxyzptlk/a/a;->b(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public final b()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    if-eqz v1, :cond_1d

    .line 137
    iget-object v1, p0, Ldbxyzptlk/a/a;->b:Ldbxyzptlk/a/b;

    if-eqz v1, :cond_1e

    .line 142
    iget-object v1, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    iget-boolean v1, v1, Ldbxyzptlk/a/b;->b:Z

    if-eqz v1, :cond_1b

    .line 143
    iget-object v1, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    iput-boolean v0, v1, Ldbxyzptlk/a/b;->b:Z

    .line 144
    iget-object v1, p0, Ldbxyzptlk/a/a;->e:Landroid/os/Handler;

    iget-object v2, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    :cond_1b
    iput-object v3, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    .line 166
    :cond_1d
    :goto_1d
    return v0

    .line 148
    :cond_1e
    iget-object v1, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    iget-boolean v1, v1, Ldbxyzptlk/a/b;->b:Z

    if-eqz v1, :cond_32

    .line 152
    iget-object v1, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    iput-boolean v0, v1, Ldbxyzptlk/a/b;->b:Z

    .line 153
    iget-object v1, p0, Ldbxyzptlk/a/a;->e:Landroid/os/Handler;

    iget-object v2, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iput-object v3, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    goto :goto_1d

    .line 157
    :cond_32
    iget-object v1, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    invoke-virtual {v1, v0}, Ldbxyzptlk/a/b;->a(Z)Z

    move-result v0

    .line 159
    if-eqz v0, :cond_3e

    .line 160
    iget-object v1, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    iput-object v1, p0, Ldbxyzptlk/a/a;->b:Ldbxyzptlk/a/b;

    .line 162
    :cond_3e
    iput-object v3, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    goto :goto_1d
.end method

.method final c()V
    .registers 7

    .prologue
    .line 177
    iget-object v0, p0, Ldbxyzptlk/a/a;->b:Ldbxyzptlk/a/b;

    if-nez v0, :cond_40

    iget-object v0, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    if-eqz v0, :cond_40

    .line 178
    iget-object v0, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    iget-boolean v0, v0, Ldbxyzptlk/a/b;->b:Z

    if-eqz v0, :cond_1a

    .line 179
    iget-object v0, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ldbxyzptlk/a/b;->b:Z

    .line 180
    iget-object v0, p0, Ldbxyzptlk/a/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    :cond_1a
    iget-wide v0, p0, Ldbxyzptlk/a/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_41

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 184
    iget-wide v2, p0, Ldbxyzptlk/a/a;->d:J

    iget-wide v4, p0, Ldbxyzptlk/a/a;->c:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_41

    .line 189
    iget-object v0, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ldbxyzptlk/a/b;->b:Z

    .line 190
    iget-object v0, p0, Ldbxyzptlk/a/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    iget-wide v2, p0, Ldbxyzptlk/a/a;->d:J

    iget-wide v4, p0, Ldbxyzptlk/a/a;->c:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 197
    :cond_40
    :goto_40
    return-void

    .line 195
    :cond_41
    iget-object v1, p0, Ldbxyzptlk/a/a;->a:Ldbxyzptlk/a/b;

    sget-object v2, Ldbxyzptlk/a/k;->d:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Ldbxyzptlk/a/b;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Ldbxyzptlk/a/k;

    goto :goto_40
.end method

.method public abstract d()Ljava/lang/Object;
.end method

.method protected final e()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 240
    invoke-virtual {p0}, Ldbxyzptlk/a/a;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
