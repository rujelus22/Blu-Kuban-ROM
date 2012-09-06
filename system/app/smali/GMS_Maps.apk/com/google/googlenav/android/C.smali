.class public Lcom/google/googlenav/android/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/b;


# static fields
.field static final synthetic a:Z

.field private static b:Lcom/google/googlenav/android/c;


# instance fields
.field private final c:Lcom/google/googlenav/android/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/google/googlenav/android/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/android/c;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lcom/google/googlenav/android/AndroidGmmApplication;)V
    .registers 5
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "Maps"

    const-string v1, "Build: 6110102"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {p1}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    .line 61
    invoke-static {p1}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lac/h;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/google/googlenav/android/i;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/google/googlenav/android/i;-><init>(Lcom/google/googlenav/android/AndroidGmmApplication;LY/c;Lac/h;)V

    iput-object v1, p0, Lcom/google/googlenav/android/c;->c:Lcom/google/googlenav/android/i;

    .line 68
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->M()Z

    .line 70
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->i()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 71
    invoke-direct {p0, p1}, Lcom/google/googlenav/android/c;->a(Lcom/google/googlenav/android/AndroidGmmApplication;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/google/googlenav/android/c;->b(Lcom/google/googlenav/android/AndroidGmmApplication;)V

    .line 74
    :cond_33
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Lac/h;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 325
    if-nez v0, :cond_10

    .line 326
    const-string v0, "GMM"

    invoke-static {}, Lh/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/dD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lac/h;

    move-result-object v0

    .line 342
    :cond_10
    invoke-static {v0}, Lcom/google/googlenav/clientparam/f;->a(Lac/h;)V

    .line 347
    return-object v0
.end method

.method public static a()Lcom/google/googlenav/android/c;
    .registers 1

    .prologue
    .line 191
    sget-boolean v0, Lcom/google/googlenav/android/c;->a:Z

    if-nez v0, :cond_e

    sget-object v0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/c;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 192
    :cond_e
    sget-object v0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/c;

    return-object v0
.end method

.method public static a(Landroid/app/Application;)Lcom/google/googlenav/android/c;
    .registers 2
    .parameter

    .prologue
    .line 176
    sget-object v0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/c;

    if-nez v0, :cond_1c

    .line 177
    const-string v0, "AndroidGmmApplicationDelegate.getInstance"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 178
    check-cast p0, Lcom/google/googlenav/android/AndroidGmmApplication;

    .line 179
    new-instance v0, Lcom/google/googlenav/android/c;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/c;-><init>(Lcom/google/googlenav/android/AndroidGmmApplication;)V

    sput-object v0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/c;

    .line 180
    sget-object v0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/c;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/android/AndroidGmmApplication;->a(Lcom/google/googlenav/android/b;)V

    .line 181
    const-string v0, "AndroidGmmApplicationDelegate.getInstance"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 183
    :cond_1c
    sget-object v0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/c;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 267
    invoke-static {p0}, Lcom/google/googlenav/common/Config;->getOrCreateInstance(Landroid/content/Context;)Lcom/google/googlenav/common/Config;

    .line 269
    invoke-static {}, LaT/k;->b()LaT/o;

    move-result-object v0

    instance-of v0, v0, Lcom/google/googlenav/android/I;

    if-nez v0, :cond_13

    .line 270
    new-instance v0, Lcom/google/googlenav/android/I;

    invoke-direct {v0, p0}, Lcom/google/googlenav/android/I;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, LaT/k;->a(LaT/o;)V

    .line 273
    :cond_13
    invoke-static {}, Lar/c;->a()Z

    move-result v0

    if-nez v0, :cond_21

    .line 274
    new-instance v0, Lar/a;

    invoke-direct {v0}, Lar/a;-><init>()V

    invoke-static {v0}, Lar/c;->a(Lar/d;)V

    .line 276
    :cond_21
    invoke-static {}, Lao/b;->a()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 277
    new-instance v0, Lao/a;

    invoke-direct {v0}, Lao/a;-><init>()V

    invoke-static {v0}, Lao/b;->a(Lao/c;)V

    .line 279
    :cond_2f
    return-void
.end method

.method private a(Lcom/google/googlenav/android/AndroidGmmApplication;)V
    .registers 5
    .parameter

    .prologue
    .line 100
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->N()Lcom/google/googlenav/O;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_1e

    .line 106
    iget-boolean v1, v0, Lcom/google/googlenav/O;->c:Z

    if-eqz v1, :cond_1f

    .line 109
    invoke-static {}, Lcom/google/googlenav/friend/aB;->b()V

    .line 112
    invoke-static {}, Lcom/google/googlenav/friend/E;->l()V

    .line 115
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->p()V

    .line 118
    invoke-static {}, Lcom/google/googlenav/friend/af;->L()V

    .line 152
    :cond_1e
    :goto_1e
    return-void

    .line 119
    :cond_1f
    iget-boolean v1, v0, Lcom/google/googlenav/O;->a:Z

    if-eqz v1, :cond_1e

    .line 120
    const-string v1, "Maps"

    const-string v2, "Upgrading friends opt in, now split reporting."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-boolean v0, v0, Lcom/google/googlenav/O;->b:Z

    if-eqz v0, :cond_1e

    .line 133
    invoke-static {}, Lcom/google/googlenav/friend/E;->m()V

    .line 136
    invoke-static {}, Lcom/google/googlenav/friend/au;->m()V

    .line 139
    invoke-static {}, Lcom/google/googlenav/friend/aB;->c()V

    .line 142
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/K;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/K;->a(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 148
    invoke-static {p1}, Lcom/google/googlenav/friend/reporting/r;->a(Landroid/content/Context;)V

    goto :goto_1e
.end method

.method public static b(Landroid/content/Context;)Lac/h;
    .registers 3
    .parameter

    .prologue
    .line 305
    const-string v0, "AndroidGmmApplicationDelegate.startUpDispatcher"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/google/googlenav/common/Config;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/googlenav/android/c;->a(Ljava/lang/String;Landroid/content/Context;)Lac/h;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lac/h;->v()V

    .line 314
    const-string v1, "AndroidGmmApplicationDelegate.startUpDispatcher"

    invoke-static {v1}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 315
    return-object v0
.end method

.method private b(Lcom/google/googlenav/android/AndroidGmmApplication;)V
    .registers 4
    .parameter

    .prologue
    .line 157
    invoke-static {}, Lcom/google/googlenav/friend/ae;->e()Lcom/google/googlenav/friend/bk;

    move-result-object v0

    new-instance v1, LQ/b;

    invoke-direct {v1, p1}, LQ/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/bk;->a(Las/h;)V

    .line 162
    new-instance v0, Lcom/google/googlenav/networkinitiated/c;

    invoke-direct {v0, p1}, Lcom/google/googlenav/networkinitiated/c;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-static {}, Lcom/google/googlenav/friend/ae;->e()Lcom/google/googlenav/friend/bk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/friend/bk;->a(Las/h;)V

    .line 166
    invoke-virtual {v0}, Lcom/google/googlenav/networkinitiated/c;->d()V

    .line 167
    return-void
.end method

.method public static b()Z
    .registers 1

    .prologue
    .line 197
    sget-object v0, Lcom/google/googlenav/android/c;->b:Lcom/google/googlenav/android/c;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static f()V
    .registers 0

    .prologue
    .line 286
    invoke-static {}, LaT/k;->d()V

    .line 287
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 234
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    .line 235
    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/Config;->a(Landroid/content/res/Configuration;)V

    .line 239
    iget-object v0, p0, Lcom/google/googlenav/android/c;->c:Lcom/google/googlenav/android/i;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/android/i;->a(Landroid/content/res/Configuration;)V

    .line 240
    return-void
.end method

.method public c()Lcom/google/googlenav/android/i;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/googlenav/android/c;->c:Lcom/google/googlenav/android/i;

    return-object v0
.end method

.method public d()V
    .registers 3

    .prologue
    .line 211
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->w()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 212
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->c()V

    .line 214
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/android/c;->c:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 217
    iget-object v0, p0, Lcom/google/googlenav/android/c;->c:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->i(Z)V

    .line 220
    :cond_1f
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 222
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0}, Lac/h;->u()V

    .line 223
    invoke-static {}, Lac/h;->c()V

    .line 226
    :cond_2f
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 228
    invoke-static {}, Lan/l;->q()V

    .line 230
    :cond_38
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 249
    invoke-static {}, Lcom/google/googlenav/common/j;->a()V

    .line 254
    return-void
.end method

.method public i()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/googlenav/android/c;->c:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    return-object v0
.end method
