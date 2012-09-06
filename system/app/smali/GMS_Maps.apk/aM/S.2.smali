.class public LaM/S;
.super LaM/bd;
.source "SourceFile"


# instance fields
.field private b:Lcom/google/googlenav/L;


# direct methods
.method public constructor <init>(LaM/m;Lcom/google/googlenav/L;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, LaM/bd;-><init>(LaM/m;)V

    .line 40
    iput-object p2, p0, LaM/S;->b:Lcom/google/googlenav/L;

    .line 41
    return-void
.end method

.method static synthetic a(LaM/S;)LaM/X;
    .registers 2
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, LaM/S;->e()LaM/X;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/friend/aK;)V
    .registers 11
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, LaM/S;->e()LaM/X;

    move-result-object v0

    invoke-virtual {v0}, LaM/X;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v3

    .line 90
    invoke-direct {p0}, LaM/S;->e()LaM/X;

    move-result-object v0

    invoke-virtual {v0}, LaM/X;->ba()Lcom/google/googlenav/ui/v;

    move-result-object v6

    .line 92
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->i()Landroid/app/Activity;

    move-result-object v0

    .line 93
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 104
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->j()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 105
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 109
    const/16 v5, 0x9a

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    move-object v7, v0

    move v5, v2

    move v2, v1

    .line 118
    :goto_3f
    const/16 v0, 0x15d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    .line 119
    const/16 v0, 0x2a4

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    .line 121
    new-instance v0, LaM/T;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, LaM/T;-><init>(LaM/S;ILcom/google/googlenav/ui/wizard/ju;IILcom/google/googlenav/ui/v;)V

    invoke-virtual {v8, v7, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 144
    return-void

    .line 112
    :cond_60
    new-array v0, v4, [Ljava/lang/CharSequence;

    .line 113
    const/4 v5, -0x1

    move-object v7, v0

    move v4, v1

    .line 115
    goto :goto_3f
.end method

.method static synthetic b(LaM/S;)Lcom/google/googlenav/L;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, LaM/S;->b:Lcom/google/googlenav/L;

    return-object v0
.end method

.method private b()Lcom/google/googlenav/ui/friend/n;
    .registers 2

    .prologue
    .line 147
    new-instance v0, LaM/U;

    invoke-direct {v0, p0}, LaM/U;-><init>(LaM/S;)V

    return-object v0
.end method

.method private c()Lcom/google/googlenav/ui/friend/p;
    .registers 3

    .prologue
    .line 167
    invoke-direct {p0}, LaM/S;->e()LaM/X;

    move-result-object v0

    invoke-virtual {v0}, LaM/X;->bP()Lcom/google/googlenav/friend/t;

    move-result-object v0

    .line 168
    new-instance v1, LaM/V;

    invoke-direct {v1, p0, v0}, LaM/V;-><init>(LaM/S;Lcom/google/googlenav/friend/t;)V

    return-object v1
.end method

.method private d()Lcom/google/googlenav/ui/friend/o;
    .registers 2

    .prologue
    .line 237
    new-instance v0, LaM/W;

    invoke-direct {v0, p0}, LaM/W;-><init>(LaM/S;)V

    return-object v0
.end method

.method private e()LaM/X;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, LaM/S;->a:LaM/i;

    check-cast v0, LaM/X;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ai;)Lcom/google/googlenav/ui/view/android/V;
    .registers 9
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, LaM/S;->e()LaM/X;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, LaM/X;->f()Lcom/google/googlenav/ui/friend/q;

    move-result-object v2

    .line 58
    invoke-direct {p0}, LaM/S;->e()LaM/X;

    move-result-object v0

    invoke-virtual {v0}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 59
    if-nez v0, :cond_3e

    .line 60
    invoke-virtual {v2}, Lcom/google/googlenav/ui/friend/q;->b()J

    move-result-wide v3

    .line 61
    invoke-virtual {v1}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v1

    .line 62
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/friend/aM;->a(Ljava/lang/Long;)Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 63
    if-nez v0, :cond_33

    .line 64
    invoke-virtual {v1}, Lcom/google/googlenav/friend/aM;->d()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ui/friend/q;->a(J)V

    .line 72
    :cond_33
    :goto_33
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 73
    invoke-direct {p0, v0}, LaM/S;->a(Lcom/google/googlenav/friend/aK;)V

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_3d
    return-object v0

    .line 67
    :cond_3e
    invoke-virtual {v1}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v1

    if-ne v1, v0, :cond_33

    invoke-virtual {v2}, Lcom/google/googlenav/ui/friend/q;->b()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_33

    .line 69
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ui/friend/q;->a(J)V

    goto :goto_33

    .line 76
    :cond_60
    new-instance v1, Lcom/google/googlenav/ui/friend/a;

    invoke-direct {p0}, LaM/S;->d()Lcom/google/googlenav/ui/friend/o;

    move-result-object v2

    invoke-direct {p0}, LaM/S;->c()Lcom/google/googlenav/ui/friend/p;

    move-result-object v3

    invoke-direct {p0}, LaM/S;->b()Lcom/google/googlenav/ui/friend/n;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/googlenav/ui/friend/a;-><init>(Lcom/google/googlenav/friend/aK;Lcom/google/googlenav/ui/friend/o;Lcom/google/googlenav/ui/friend/p;Lcom/google/googlenav/ui/friend/n;)V

    move-object v0, v1

    goto :goto_3d
.end method
