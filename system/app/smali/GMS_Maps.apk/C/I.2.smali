.class public LC/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC/x;


# instance fields
.field private final a:LaP/d;

.field private final b:Ljava/util/ArrayList;

.field private c:LaP/a;

.field private d:F

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/lang/Runnable;

.field private g:Z


# direct methods
.method public constructor <init>(LaP/d;LC/L;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, LC/I;->a:LaP/d;

    .line 85
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LC/I;->b:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LC/I;->e:Landroid/os/Handler;

    .line 87
    new-instance v0, LC/J;

    invoke-direct {v0, p0, p2}, LC/J;-><init>(LC/I;LC/L;)V

    iput-object v0, p0, LC/I;->f:Ljava/lang/Runnable;

    .line 118
    return-void
.end method

.method static synthetic a(LC/I;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, LC/I;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(LC/I;LC/z;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, LC/I;->a(LC/z;)V

    return-void
.end method

.method private a(LC/z;)V
    .registers 4
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, LC/I;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/y;

    .line 156
    invoke-interface {v0, p1}, LC/y;->a(LC/z;)V

    goto :goto_6

    .line 158
    :cond_16
    return-void
.end method

.method static synthetic b(LC/I;)Z
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, LC/I;->g:Z

    return v0
.end method

.method private c()LC/z;
    .registers 5

    .prologue
    const-wide/high16 v2, 0x3fe0

    .line 121
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_12

    .line 122
    invoke-direct {p0}, LC/I;->h()V

    .line 123
    invoke-direct {p0}, LC/I;->d()LC/z;

    move-result-object v0

    .line 127
    :goto_11
    return-object v0

    .line 124
    :cond_12
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1f

    .line 125
    invoke-direct {p0}, LC/I;->e()LC/z;

    move-result-object v0

    goto :goto_11

    .line 127
    :cond_1f
    invoke-direct {p0}, LC/I;->f()LC/z;

    move-result-object v0

    goto :goto_11
.end method

.method static synthetic c(LC/I;)LC/z;
    .registers 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, LC/I;->c()LC/z;

    move-result-object v0

    return-object v0
.end method

.method private d()LC/z;
    .registers 6

    .prologue
    .line 135
    invoke-direct {p0}, LC/I;->g()LC/R;

    move-result-object v0

    iget-object v1, p0, LC/I;->c:LaP/a;

    new-instance v2, LaP/c;

    iget-object v3, p0, LC/I;->c:LaP/a;

    iget-object v4, p0, LC/I;->c:LaP/a;

    invoke-direct {v2, v3, v4}, LaP/c;-><init>(LaP/a;LaP/a;)V

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, LC/z;->a(LC/R;LaP/a;LaP/c;Z)LC/z;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(LC/I;)V
    .registers 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, LC/I;->h()V

    return-void
.end method

.method private e()LC/z;
    .registers 2

    .prologue
    .line 140
    invoke-direct {p0}, LC/I;->g()LC/R;

    move-result-object v0

    invoke-static {v0}, LC/z;->a(LC/R;)LC/z;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(LC/I;)LC/z;
    .registers 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, LC/I;->d()LC/z;

    move-result-object v0

    return-object v0
.end method

.method private f()LC/z;
    .registers 3

    .prologue
    .line 144
    invoke-direct {p0}, LC/I;->g()LC/R;

    move-result-object v0

    sget-object v1, LC/B;->c:LC/B;

    invoke-static {v0, v1}, LC/z;->a(LC/R;LC/B;)LC/z;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(LC/I;)V
    .registers 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, LC/I;->i()V

    return-void
.end method

.method private g()LC/R;
    .registers 4

    .prologue
    .line 148
    new-instance v0, LC/R;

    new-instance v1, Landroid/location/Location;

    const-string v2, "gps"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, LC/R;-><init>(Landroid/location/Location;)V

    .line 149
    sget-object v1, LC/S;->a:LC/S;

    invoke-virtual {v0, v1}, LC/R;->a(LC/S;)V

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LC/R;->setTime(J)V

    .line 151
    return-object v0
.end method

.method static synthetic g(LC/I;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, LC/I;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private h()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 186
    iget-object v0, p0, LC/I;->c:LaP/a;

    if-nez v0, :cond_e

    .line 187
    new-instance v0, LaP/a;

    invoke-direct {v0, v1, v1, v4}, LaP/a;-><init>(IIF)V

    iput-object v0, p0, LC/I;->c:LaP/a;

    .line 201
    :cond_d
    :goto_d
    return-void

    .line 190
    :cond_e
    iget-object v0, p0, LC/I;->c:LaP/a;

    iget-object v0, v0, LaP/a;->a:LaP/t;

    .line 191
    new-instance v1, LaP/v;

    iget-object v2, p0, LC/I;->a:LaP/d;

    invoke-direct {v1, v2}, LaP/v;-><init>(LaP/d;)V

    invoke-virtual {v1, v0}, LaP/v;->a(LaP/t;)LaP/v;

    move-result-object v1

    .line 192
    iget-object v2, p0, LC/I;->a:LaP/d;

    invoke-virtual {v2, v0}, LaP/d;->e(LaP/t;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 193
    iget v2, p0, LC/I;->d:F

    const v3, 0x3e4ccccd

    add-float/2addr v2, v3

    iput v2, p0, LC/I;->d:F

    .line 194
    iget v2, p0, LC/I;->d:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3b

    .line 195
    invoke-virtual {v1}, LaP/v;->a()LaP/t;

    move-result-object v0

    .line 196
    iput v4, p0, LC/I;->d:F

    .line 198
    :cond_3b
    new-instance v1, LaP/a;

    iget v2, p0, LC/I;->d:F

    invoke-direct {v1, v0, v2}, LaP/a;-><init>(LaP/t;F)V

    iput-object v1, p0, LC/I;->c:LaP/a;

    goto :goto_d
.end method

.method private i()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 204
    iget-object v0, p0, LC/I;->c:LaP/a;

    if-nez v0, :cond_e

    .line 205
    new-instance v0, LaP/a;

    invoke-direct {v0, v1, v1, v4}, LaP/a;-><init>(IIF)V

    iput-object v0, p0, LC/I;->c:LaP/a;

    .line 227
    :goto_d
    return-void

    .line 208
    :cond_e
    iget-object v0, p0, LC/I;->c:LaP/a;

    iget-object v1, v0, LaP/a;->a:LaP/t;

    .line 210
    iget-object v0, p0, LC/I;->a:LaP/d;

    invoke-virtual {v0, v1}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v0

    invoke-virtual {v0}, LaP/h;->c()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 211
    iget-object v0, p0, LC/I;->a:LaP/d;

    iget-object v2, p0, LC/I;->c:LaP/a;

    const/high16 v3, 0x41a0

    invoke-static {v0, v2, v3}, LF/g;->a(LaP/d;LaP/a;F)LaP/a;

    move-result-object v0

    .line 218
    :goto_28
    iget-object v2, v0, LaP/a;->a:LaP/t;

    invoke-virtual {v2, v1}, LaP/t;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 219
    new-instance v0, LaP/v;

    iget-object v2, p0, LC/I;->a:LaP/d;

    invoke-direct {v0, v2}, LaP/v;-><init>(LaP/d;)V

    invoke-virtual {v0, v1}, LaP/v;->a(LaP/t;)LaP/v;

    move-result-object v0

    .line 220
    iget-object v2, p0, LC/I;->a:LaP/d;

    invoke-virtual {v2, v1}, LaP/d;->e(LaP/t;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 221
    invoke-virtual {v0}, LaP/v;->a()LaP/t;

    move-result-object v0

    .line 223
    :goto_47
    new-instance v1, LaP/a;

    invoke-direct {v1, v0, v4}, LaP/a;-><init>(LaP/t;F)V

    move-object v0, v1

    .line 225
    :cond_4d
    iput-object v0, p0, LC/I;->c:LaP/a;

    goto :goto_d

    .line 213
    :cond_50
    iget-object v0, p0, LC/I;->a:LaP/d;

    iget-object v2, p0, LC/I;->c:LaP/a;

    const/high16 v3, 0x4316

    invoke-static {v0, v2, v3}, LF/g;->a(LaP/d;LaP/a;F)LaP/a;

    move-result-object v0

    goto :goto_28

    :cond_5b
    move-object v0, v1

    goto :goto_47
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, LC/I;->e:Landroid/os/Handler;

    iget-object v1, p0, LC/I;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    iget-object v1, p0, LC/I;->f:Ljava/lang/Runnable;

    monitor-enter v1

    .line 178
    const/4 v0, 0x1

    :try_start_b
    iput-boolean v0, p0, LC/I;->g:Z

    .line 182
    monitor-exit v1

    .line 183
    return-void

    .line 182
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw v0
.end method

.method public a(LC/y;)V
    .registers 3
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, LC/I;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, LC/I;->e:Landroid/os/Handler;

    iget-object v1, p0, LC/I;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method

.method public b(LC/y;)V
    .registers 3
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, LC/I;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method
