.class public Lcom/google/googlenav/friend/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Las/h;
.implements Lcom/google/googlenav/aY;
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Lcom/google/googlenav/friend/o;

.field private static final b:Ljava/lang/Runnable;

.field private static d:Lcom/google/googlenav/ui/v;

.field private static volatile g:Z


# instance fields
.field private final c:LY/d;

.field private e:Z

.field private volatile f:Z

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/googlenav/friend/o;

    invoke-direct {v0}, Lcom/google/googlenav/friend/o;-><init>()V

    sput-object v0, Lcom/google/googlenav/friend/p;->a:Lcom/google/googlenav/friend/o;

    .line 49
    new-instance v0, Lcom/google/googlenav/friend/q;

    invoke-direct {v0}, Lcom/google/googlenav/friend/q;-><init>()V

    sput-object v0, Lcom/google/googlenav/friend/p;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(LY/c;Lcom/google/googlenav/ui/v;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/p;->e:Z

    .line 91
    new-instance v0, LY/d;

    invoke-direct {v0, p1, p0}, LY/d;-><init>(LY/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/p;->c:LY/d;

    .line 92
    sput-object p2, Lcom/google/googlenav/friend/p;->d:Lcom/google/googlenav/ui/v;

    .line 93
    return-void
.end method

.method public static a(Lcom/google/googlenav/aY;)V
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 252
    new-instance v0, Lcom/google/googlenav/friend/r;

    invoke-direct {v0, p0}, Lcom/google/googlenav/friend/r;-><init>(Lcom/google/googlenav/aY;)V

    .line 276
    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    invoke-static {}, Lat/H;->i()Lat/H;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->b(Z)Lcom/google/googlenav/bd;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/aY;)Lcom/google/googlenav/bd;

    move-result-object v0

    .line 281
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->j()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 282
    invoke-virtual {v0, v3}, Lcom/google/googlenav/bd;->e(Z)Lcom/google/googlenav/bd;

    .line 286
    :cond_2e
    sget-object v1, Lcom/google/googlenav/friend/p;->a:Lcom/google/googlenav/friend/o;

    invoke-virtual {v1}, Lcom/google/googlenav/friend/o;->a()I

    move-result v1

    .line 287
    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->g(I)Lcom/google/googlenav/bd;

    .line 289
    new-instance v1, Lcom/google/googlenav/aW;

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/aW;-><init>(Lcom/google/googlenav/bc;Lat/u;)V

    .line 290
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 293
    invoke-static {v3}, Lcom/google/googlenav/friend/p;->b(Z)V

    .line 294
    return-void
.end method

.method static synthetic a(Z)V
    .registers 1
    .parameter

    .prologue
    .line 27
    invoke-static {p0}, Lcom/google/googlenav/friend/p;->b(Z)V

    return-void
.end method

.method private static b(Z)V
    .registers 1
    .parameter

    .prologue
    .line 297
    sput-boolean p0, Lcom/google/googlenav/friend/p;->g:Z

    .line 298
    invoke-static {}, Lcom/google/googlenav/friend/p;->l()V

    .line 299
    return-void
.end method

.method public static d()Z
    .registers 1

    .prologue
    .line 317
    sget-boolean v0, Lcom/google/googlenav/friend/p;->g:Z

    return v0
.end method

.method public static g()Lcom/google/googlenav/friend/o;
    .registers 1

    .prologue
    .line 322
    sget-object v0, Lcom/google/googlenav/friend/p;->a:Lcom/google/googlenav/friend/o;

    return-object v0
.end method

.method static synthetic h()Lcom/google/googlenav/ui/v;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/googlenav/friend/p;->d:Lcom/google/googlenav/ui/v;

    return-object v0
.end method

.method private i()V
    .registers 3

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/friend/p;->f:Z

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/p;->e:Z

    .line 101
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/googlenav/friend/p;->a(Lcom/google/googlenav/aY;J)V

    .line 102
    return-void
.end method

.method private j()V
    .registers 4

    .prologue
    const-wide/32 v1, 0x1d4c0

    .line 108
    iget-object v0, p0, Lcom/google/googlenav/friend/p;->c:LY/d;

    invoke-virtual {v0, v1, v2}, LY/d;->a(J)V

    .line 109
    iget-object v0, p0, Lcom/google/googlenav/friend/p;->c:LY/d;

    invoke-virtual {v0, v1, v2}, LY/d;->c(J)V

    .line 110
    iget-object v0, p0, Lcom/google/googlenav/friend/p;->c:LY/d;

    invoke-virtual {v0}, LY/d;->g()V

    .line 111
    return-void
.end method

.method private k()V
    .registers 3

    .prologue
    .line 117
    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/p;->c:LY/d;

    invoke-virtual {v0, v1}, LY/c;->b(LY/a;)I

    .line 118
    return-void
.end method

.method private static l()V
    .registers 3

    .prologue
    .line 309
    sget-object v0, Lcom/google/googlenav/friend/p;->d:Lcom/google/googlenav/ui/v;

    if-eqz v0, :cond_10

    .line 310
    const/4 v0, 0x1

    .line 311
    sget-object v1, Lcom/google/googlenav/friend/p;->d:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/friend/p;->b:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 313
    :cond_10
    return-void
.end method


# virtual methods
.method public D_()V
    .registers 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/google/googlenav/friend/p;->i()V

    .line 196
    return-void
.end method

.method public E_()V
    .registers 1

    .prologue
    .line 214
    return-void
.end method

.method public F_()V
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/friend/p;->e:Z

    .line 218
    invoke-direct {p0}, Lcom/google/googlenav/friend/p;->k()V

    .line 219
    return-void
.end method

.method public L_()V
    .registers 2

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/p;->f:Z

    .line 203
    invoke-direct {p0}, Lcom/google/googlenav/friend/p;->k()V

    .line 204
    return-void
.end method

.method public M_()V
    .registers 2

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/p;->e:Z

    .line 223
    invoke-static {}, Lcom/google/googlenav/friend/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 224
    iget-boolean v0, p0, Lcom/google/googlenav/friend/p;->f:Z

    if-nez v0, :cond_11

    .line 226
    invoke-direct {p0}, Lcom/google/googlenav/friend/p;->i()V

    .line 237
    :cond_10
    :goto_10
    return-void

    .line 232
    :cond_11
    invoke-direct {p0}, Lcom/google/googlenav/friend/p;->k()V

    .line 234
    invoke-direct {p0}, Lcom/google/googlenav/friend/p;->j()V

    goto :goto_10
.end method

.method public a(Lcom/google/googlenav/aW;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    return-void
.end method

.method public a(Lcom/google/googlenav/aW;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/google/googlenav/friend/p;->k()V

    .line 127
    iget-boolean v0, p0, Lcom/google/googlenav/friend/p;->f:Z

    if-eqz v0, :cond_10

    if-nez p2, :cond_10

    iget-boolean v0, p0, Lcom/google/googlenav/friend/p;->e:Z

    if-nez v0, :cond_10

    .line 128
    invoke-direct {p0}, Lcom/google/googlenav/friend/p;->j()V

    .line 130
    :cond_10
    return-void
.end method

.method public a(Lcom/google/googlenav/aY;J)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-boolean v0, p0, Lcom/google/googlenav/friend/p;->e:Z

    if-eqz v0, :cond_b

    .line 164
    if-eqz p1, :cond_a

    .line 165
    invoke-interface {p1, v1}, Lcom/google/googlenav/aY;->b(Lcom/google/googlenav/aW;)V

    .line 184
    :cond_a
    :goto_a
    return-void

    .line 171
    :cond_b
    monitor-enter p0

    .line 172
    :try_start_c
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    .line 173
    iget-wide v2, p0, Lcom/google/googlenav/friend/p;->h:J

    sub-long v2, v0, v2

    cmp-long v2, v2, p2

    if-ltz v2, :cond_27

    .line 174
    iput-wide v0, p0, Lcom/google/googlenav/friend/p;->h:J

    .line 181
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2f

    .line 183
    invoke-static {p1}, Lcom/google/googlenav/friend/p;->a(Lcom/google/googlenav/aY;)V

    goto :goto_a

    .line 176
    :cond_27
    if-eqz p1, :cond_2d

    .line 177
    const/4 v0, 0x0

    :try_start_2a
    invoke-interface {p1, v0}, Lcom/google/googlenav/aY;->b(Lcom/google/googlenav/aW;)V

    .line 179
    :cond_2d
    monitor-exit p0

    goto :goto_a

    .line 181
    :catchall_2f
    move-exception v0

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public b(Lcom/google/googlenav/aW;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/googlenav/friend/p;->k()V

    .line 151
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/googlenav/friend/p;->a(Lcom/google/googlenav/aY;J)V

    .line 152
    return-void
.end method
