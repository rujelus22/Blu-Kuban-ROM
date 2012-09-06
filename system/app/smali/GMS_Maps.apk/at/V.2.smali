.class public Lat/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/h;
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:[Lat/U;


# instance fields
.field private volatile b:Lat/W;

.field private final c:Ljava/util/Hashtable;

.field private final d:Ljava/util/Hashtable;

.field private final e:J

.field private final f:LY/d;

.field private volatile g:Z

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Lat/U;

    sput-object v0, Lat/V;->a:[Lat/U;

    return-void
.end method

.method public constructor <init>(JLY/c;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/V;->g:Z

    .line 111
    iput-wide p1, p0, Lat/V;->e:J

    .line 112
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lat/V;->h:J

    .line 113
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lat/V;->c:Ljava/util/Hashtable;

    .line 114
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lat/V;->d:Ljava/util/Hashtable;

    .line 115
    invoke-static {p0}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/h;)V

    .line 117
    new-instance v0, LY/d;

    invoke-direct {v0, p3, p0}, LY/d;-><init>(LY/c;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lat/V;->f:LY/d;

    .line 118
    iget-object v0, p0, Lat/V;->f:LY/d;

    const-wide/16 v1, 0x4e91

    invoke-virtual {v0, v1, v2}, LY/d;->a(J)V

    .line 119
    invoke-virtual {p0}, Lat/V;->c()V

    .line 120
    return-void
.end method

.method static synthetic a(Lat/V;)Ljava/util/Hashtable;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lat/V;->d:Ljava/util/Hashtable;

    return-object v0
.end method

.method private declared-synchronized a(Lat/P;Lat/X;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/V;->b:Lat/W;

    if-nez v0, :cond_c

    .line 190
    new-instance v0, Lat/W;

    invoke-direct {v0, p0}, Lat/W;-><init>(Lat/V;)V

    iput-object v0, p0, Lat/V;->b:Lat/W;

    .line 193
    :cond_c
    iget-object v0, p0, Lat/V;->b:Lat/W;

    invoke-virtual {v0, p2}, Lat/W;->a(Lat/X;)V

    .line 194
    iget-object v0, p0, Lat/V;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 195
    monitor-exit p0

    return-void

    .line 189
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lat/V;)Ljava/util/Hashtable;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lat/V;->c:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic c(Lat/V;)V
    .registers 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lat/V;->f()V

    return-void
.end method

.method static synthetic e()[Lat/U;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lat/V;->a:[Lat/U;

    return-object v0
.end method

.method private f()V
    .registers 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lat/V;->g:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lat/V;->f:LY/d;

    invoke-virtual {v0}, LY/d;->l()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 216
    iget-object v0, p0, Lat/V;->f:LY/d;

    invoke-virtual {v0}, LY/d;->g()V

    .line 218
    :cond_11
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lat/P;Z)Lat/X;
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 151
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lat/P;->e()Lat/Y;

    move-result-object v0

    invoke-virtual {v0}, Lat/Y;->a()I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_58

    move-result v0

    const/16 v1, 0x16

    if-le v0, v1, :cond_10

    .line 152
    const/4 v0, 0x0

    .line 185
    :cond_e
    :goto_e
    monitor-exit p0

    return-object v0

    .line 156
    :cond_10
    :try_start_10
    iget-object v0, p0, Lat/V;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/X;

    .line 159
    iget-object v1, p0, Lat/V;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lat/X;

    .line 162
    if-eqz v0, :cond_5b

    .line 165
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    .line 166
    invoke-virtual {v0}, Lat/X;->d()J

    move-result-wide v3

    .line 167
    invoke-interface {v2}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 168
    if-eqz p2, :cond_e

    if-nez v1, :cond_e

    const-wide/high16 v7, -0x8000

    cmp-long v1, v3, v7

    if-eqz v1, :cond_e

    iget-wide v3, p0, Lat/V;->e:J

    const-wide/16 v7, 0x2

    div-long/2addr v3, v7

    cmp-long v1, v5, v3

    if-lez v1, :cond_e

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    iget-wide v3, p0, Lat/V;->h:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_54

    iget-object v1, p0, Lat/V;->b:Lat/W;

    if-eqz v1, :cond_e

    .line 171
    :cond_54
    invoke-direct {p0, p1, v0}, Lat/V;->a(Lat/P;Lat/X;)V
    :try_end_57
    .catchall {:try_start_10 .. :try_end_57} :catchall_58

    goto :goto_e

    .line 151
    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0

    .line 176
    :cond_5b
    if-eqz v1, :cond_5f

    move-object v0, v1

    .line 177
    goto :goto_e

    .line 180
    :cond_5f
    :try_start_5f
    new-instance v0, Lat/X;

    invoke-direct {v0, p1}, Lat/X;-><init>(Lat/P;)V

    .line 181
    if-eqz p2, :cond_e

    .line 182
    invoke-direct {p0, p1, v0}, Lat/V;->a(Lat/P;Lat/X;)V
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_58

    goto :goto_e
.end method

.method public a()V
    .registers 1

    .prologue
    .line 127
    invoke-static {p0}, Lcom/google/googlenav/common/j;->c(Lcom/google/googlenav/common/h;)V

    .line 129
    invoke-virtual {p0}, Lat/V;->d()V

    .line 130
    return-void
.end method

.method declared-synchronized a(J)V
    .registers 10
    .parameter

    .prologue
    .line 226
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/V;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 227
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 228
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/P;

    .line 229
    iget-object v1, p0, Lat/V;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lat/X;

    .line 230
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v3

    .line 231
    invoke-interface {v3}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v3

    invoke-virtual {v1}, Lat/X;->e()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v1, v3, p1

    if-lez v1, :cond_7

    .line 232
    iget-object v1, p0, Lat/V;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_7

    .line 226
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0

    .line 236
    :cond_39
    monitor-exit p0

    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lat/V;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 260
    return-void
.end method

.method public declared-synchronized b()V
    .registers 5

    .prologue
    .line 202
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/V;->b:Lat/W;

    if-eqz v0, :cond_22

    .line 203
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    iget-object v1, p0, Lat/V;->b:Lat/W;

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lat/V;->b:Lat/W;

    .line 205
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lat/V;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lat/V;->h:J
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 208
    :cond_22
    monitor-exit p0

    return-void

    .line 202
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 2

    .prologue
    .line 266
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lat/V;->g:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 267
    monitor-exit p0

    return-void

    .line 266
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .registers 3

    .prologue
    .line 273
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lat/V;->g:Z

    .line 274
    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v0

    iget-object v1, p0, Lat/V;->f:LY/d;

    invoke-virtual {v0, v1}, LY/c;->b(LY/a;)I
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 275
    monitor-exit p0

    return-void

    .line 273
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 244
    const-wide/32 v0, 0xea60

    :try_start_3
    invoke-virtual {p0, v0, v1}, Lat/V;->a(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_6} :catch_e

    .line 250
    :goto_6
    return-void

    .line 245
    :catch_7
    move-exception v0

    .line 246
    const-string v1, "TrafficService BG"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 247
    :catch_e
    move-exception v0

    .line 248
    invoke-static {}, Lcom/google/googlenav/common/j;->b()V

    goto :goto_6
.end method
