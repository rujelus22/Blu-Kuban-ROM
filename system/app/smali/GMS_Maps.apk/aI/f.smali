.class public abstract LaI/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaI/r;


# instance fields
.field protected volatile a:Z

.field private b:I

.field private c:LY/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, LaI/f;->b:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, LaI/f;->c:LY/d;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, LaI/f;->a:Z

    return-void
.end method

.method public static a(II)Lat/B;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-static {p0, p1}, LaI/f;->b(II)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lat/B;

    invoke-direct {v0, p0, p1}, Lat/B;-><init>(II)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static b(II)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    const v0, 0xbebc200

    .line 172
    if-eq p0, v0, :cond_9

    if-eq p1, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected static e(LaI/s;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 184
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1}, Las/f;->k()Z

    move-result v1

    if-nez v1, :cond_12

    .line 203
    :cond_11
    :goto_11
    return v0

    .line 197
    :cond_12
    invoke-static {}, Lcom/google/googlenav/android/F;->f()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 203
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method protected final declared-synchronized a(LaI/z;)V
    .registers 5
    .parameter

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, LaI/f;->h()Z

    .line 84
    new-instance v0, LaI/g;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, LaI/g;-><init>(LaI/f;LY/c;LaI/z;)V

    iput-object v0, p0, LaI/f;->c:LY/d;

    .line 100
    iget-object v0, p0, LaI/f;->c:LY/d;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, LY/d;->a(J)V

    .line 101
    iget-object v0, p0, LaI/f;->c:LY/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LY/d;->b(I)V

    .line 102
    iget-object v0, p0, LaI/f;->c:LY/d;

    invoke-virtual {v0}, LY/d;->g()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 103
    monitor-exit p0

    return-void

    .line 82
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(LaI/z;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, LaI/f;->c()I

    move-result v1

    invoke-virtual {v0, v1}, LaI/o;->b(I)V

    .line 69
    invoke-virtual {p1}, LaI/z;->b()LaI/s;

    move-result-object v1

    invoke-virtual {v1}, LaI/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, LaI/o;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Laa/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 70
    invoke-virtual {p0}, LaI/f;->c()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, LaI/o;->a(LaI/z;ZI)V

    .line 72
    :cond_24
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    const-string v0, "o"

    return-object v0
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 153
    iput p1, p0, LaI/f;->b:I

    .line 154
    return-void
.end method

.method public b(LaI/s;)Z
    .registers 3
    .parameter

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public c(LaI/s;)Z
    .registers 3
    .parameter

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public d()[I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    return-object v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, LaI/f;->a:Z

    return v0
.end method

.method public g()V
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, LaI/f;->a:Z

    .line 50
    return-void
.end method

.method public declared-synchronized h()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 110
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, LaI/f;->c:LY/d;

    if-eqz v1, :cond_12

    .line 111
    iget-object v1, p0, LaI/f;->c:LY/d;

    invoke-virtual {v1}, LY/d;->c()I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    .line 112
    :cond_f
    const/4 v1, 0x0

    iput-object v1, p0, LaI/f;->c:LY/d;
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_14

    .line 115
    :cond_12
    monitor-exit p0

    return v0

    .line 110
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 158
    iget v0, p0, LaI/f;->b:I

    return v0
.end method
