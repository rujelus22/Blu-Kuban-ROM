.class public abstract LV;
.super LX;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "LX",
        "<TD;>;"
    }
.end annotation


# instance fields
.field a:J

.field volatile a:LW;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV",
            "<TD;>.W;"
        }
    .end annotation
.end field

.field a:Landroid/os/Handler;

.field b:J

.field volatile b:LW;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV",
            "<TD;>.W;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, LX;-><init>(Landroid/content/Context;)V

    .line 88
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, LV;->b:J

    .line 93
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected a()V
    .registers 2

    .prologue
    .line 111
    invoke-super {p0}, LX;->a()V

    .line 112
    invoke-virtual {p0}, LV;->a()Z

    .line 113
    new-instance v0, LW;

    invoke-direct {v0, p0}, LW;-><init>(LV;)V

    iput-object v0, p0, LV;->a:LW;

    .line 115
    invoke-virtual {p0}, LV;->b()V

    .line 116
    return-void
.end method

.method a(LW;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV",
            "<TD;>.W;TD;)V"
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0, p2}, LV;->a(Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, LV;->b:LW;

    if-ne v0, p1, :cond_13

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LV;->b:J

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, LV;->b:LW;

    .line 205
    invoke-virtual {p0}, LV;->b()V

    .line 207
    :cond_13
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

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
    invoke-super {p0, p1, p2, p3, p4}, LX;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, LV;->a:LW;

    if-eqz v0, :cond_20

    .line 268
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, LV;->a:LW;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 269
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, LV;->a:LW;

    iget-boolean v0, v0, LW;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 271
    :cond_20
    iget-object v0, p0, LV;->b:LW;

    if-eqz v0, :cond_3d

    .line 272
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, LV;->b:LW;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 273
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, LV;->b:LW;

    iget-boolean v0, v0, LW;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 275
    :cond_3d
    iget-wide v0, p0, LV;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_63

    .line 276
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    iget-wide v0, p0, LV;->a:J

    invoke-static {v0, v1, p3}, Laq;->a(JLjava/io/PrintWriter;)V

    .line 278
    const-string v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget-wide v0, p0, LV;->b:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p3}, Laq;->a(JJLjava/io/PrintWriter;)V

    .line 281
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 283
    :cond_63
    return-void
.end method

.method public a()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 136
    iget-object v1, p0, LV;->a:LW;

    if-eqz v1, :cond_1d

    .line 137
    iget-object v1, p0, LV;->b:LW;

    if-eqz v1, :cond_1e

    .line 142
    iget-object v1, p0, LV;->a:LW;

    iget-boolean v1, v1, LW;->a:Z

    if-eqz v1, :cond_1b

    .line 143
    iget-object v1, p0, LV;->a:LW;

    iput-boolean v0, v1, LW;->a:Z

    .line 144
    iget-object v1, p0, LV;->a:Landroid/os/Handler;

    iget-object v2, p0, LV;->a:LW;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    :cond_1b
    iput-object v3, p0, LV;->a:LW;

    .line 166
    :cond_1d
    :goto_1d
    return v0

    .line 148
    :cond_1e
    iget-object v1, p0, LV;->a:LW;

    iget-boolean v1, v1, LW;->a:Z

    if-eqz v1, :cond_32

    .line 152
    iget-object v1, p0, LV;->a:LW;

    iput-boolean v0, v1, LW;->a:Z

    .line 153
    iget-object v1, p0, LV;->a:Landroid/os/Handler;

    iget-object v2, p0, LV;->a:LW;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    iput-object v3, p0, LV;->a:LW;

    goto :goto_1d

    .line 157
    :cond_32
    iget-object v1, p0, LV;->a:LW;

    invoke-virtual {v1, v0}, LW;->a(Z)Z

    move-result v0

    .line 159
    if-eqz v0, :cond_3e

    .line 160
    iget-object v1, p0, LV;->a:LW;

    iput-object v1, p0, LV;->b:LW;

    .line 162
    :cond_3e
    iput-object v3, p0, LV;->a:LW;

    goto :goto_1d
.end method

.method protected b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, LV;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method b()V
    .registers 7

    .prologue
    .line 177
    iget-object v0, p0, LV;->b:LW;

    if-nez v0, :cond_40

    iget-object v0, p0, LV;->a:LW;

    if-eqz v0, :cond_40

    .line 178
    iget-object v0, p0, LV;->a:LW;

    iget-boolean v0, v0, LW;->a:Z

    if-eqz v0, :cond_1a

    .line 179
    iget-object v0, p0, LV;->a:LW;

    const/4 v1, 0x0

    iput-boolean v1, v0, LW;->a:Z

    .line 180
    iget-object v0, p0, LV;->a:Landroid/os/Handler;

    iget-object v1, p0, LV;->a:LW;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    :cond_1a
    iget-wide v0, p0, LV;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_41

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 184
    iget-wide v2, p0, LV;->b:J

    iget-wide v4, p0, LV;->a:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_41

    .line 189
    iget-object v0, p0, LV;->a:LW;

    const/4 v1, 0x1

    iput-boolean v1, v0, LW;->a:Z

    .line 190
    iget-object v0, p0, LV;->a:Landroid/os/Handler;

    iget-object v1, p0, LV;->a:LW;

    iget-wide v2, p0, LV;->b:J

    iget-wide v4, p0, LV;->a:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 197
    :cond_40
    :goto_40
    return-void

    .line 195
    :cond_41
    iget-object v1, p0, LV;->a:LW;

    sget-object v2, LZ;->a:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, LW;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)LZ;

    goto :goto_40
.end method

.method b(LW;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV",
            "<TD;>.W;TD;)V"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, LV;->a:LW;

    if-eq v0, p1, :cond_8

    .line 212
    invoke-virtual {p0, p1, p2}, LV;->a(LW;Ljava/lang/Object;)V

    .line 224
    :goto_7
    return-void

    .line 214
    :cond_8
    invoke-virtual {p0}, LV;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 216
    invoke-virtual {p0, p2}, LV;->a(Ljava/lang/Object;)V

    goto :goto_7

    .line 218
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LV;->b:J

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, LV;->a:LW;

    .line 221
    invoke-virtual {p0, p2}, LV;->b(Ljava/lang/Object;)V

    goto :goto_7
.end method
