.class public LaM/bd;
.super LaM/l;
.source "SourceFile"


# instance fields
.field private b:Lt/f;


# direct methods
.method public constructor <init>(LaM/m;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, LaM/l;-><init>(LaM/i;)V

    .line 45
    new-instance v0, Lt/f;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lt/f;-><init>(I)V

    iput-object v0, p0, LaM/bd;->b:Lt/f;

    .line 50
    return-void
.end method

.method static synthetic a(LaM/bd;)LaM/m;
    .registers 2
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, LaM/bd;->b()LaM/m;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LaM/bd;Lcom/google/googlenav/ai;)Ljava/util/List;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, LaM/bd;->e(Lcom/google/googlenav/ai;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private b()LaM/m;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, LaM/bd;->a:LaM/i;

    check-cast v0, LaM/m;

    return-object v0
.end method

.method private b(Lcom/google/googlenav/ai;)Lcom/google/googlenav/ui/view/android/V;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 108
    iget-object v0, p0, LaM/bd;->a:LaM/i;

    invoke-virtual {v0, v2}, LaM/i;->f(Z)V

    .line 109
    new-instance v1, Lcom/google/googlenav/ui/view/android/bm;

    iget-object v0, p0, LaM/bd;->a:LaM/i;

    check-cast v0, LaM/m;

    invoke-direct {v1, p1, v0}, Lcom/google/googlenav/ui/view/android/bm;-><init>(Lcom/google/googlenav/ai;LaM/m;)V

    .line 110
    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/bE;->b(Z)V

    .line 111
    return-object v1
.end method

.method private c(Lcom/google/googlenav/ai;)Lcom/google/googlenav/ui/view/dialog/r;
    .registers 4
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, LaM/bd;->b()LaM/m;

    move-result-object v0

    .line 117
    new-instance v1, LaM/be;

    invoke-direct {v1, p0, v0, p1}, LaM/be;-><init>(LaM/bd;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ai;)V

    return-object v1
.end method

.method private d(Lcom/google/googlenav/ai;)LaM/bf;
    .registers 4
    .parameter

    .prologue
    .line 154
    new-instance v0, LaM/bf;

    iget-object v1, p0, LaM/bd;->a:LaM/i;

    invoke-direct {v0, p0, v1, p1}, LaM/bf;-><init>(LaM/bd;LaM/i;Lcom/google/googlenav/ai;)V

    return-object v0
.end method

.method private e(Lcom/google/googlenav/ai;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, LaM/bd;->b()LaM/m;

    move-result-object v0

    .line 159
    invoke-static {p1, v0}, LaM/aR;->a(Lcom/google/googlenav/ai;LaM/i;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private f(Lcom/google/googlenav/ai;)LaM/bi;
    .registers 5
    .parameter

    .prologue
    .line 199
    new-instance v0, LaM/bi;

    iget-object v1, p0, LaM/bd;->a:LaM/i;

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->A()[Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, LaM/bi;-><init>(LaM/bd;LaM/i;[Lcom/google/googlenav/ai;)V

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/ui/view/android/V;
    .registers 5
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, LaM/bd;->b()LaM/m;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v0

    .line 62
    sparse-switch p1, :sswitch_data_3e

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :sswitch_24
    invoke-direct {p0, v0}, LaM/bd;->b(Lcom/google/googlenav/ai;)Lcom/google/googlenav/ui/view/android/V;

    move-result-object v0

    .line 74
    :goto_28
    return-object v0

    .line 68
    :sswitch_29
    invoke-virtual {p0, v0}, LaM/bd;->a(Lcom/google/googlenav/ai;)Lcom/google/googlenav/ui/view/android/V;

    move-result-object v0

    goto :goto_28

    .line 70
    :sswitch_2e
    invoke-direct {p0, v0}, LaM/bd;->d(Lcom/google/googlenav/ai;)LaM/bf;

    move-result-object v0

    goto :goto_28

    .line 72
    :sswitch_33
    invoke-direct {p0, v0}, LaM/bd;->f(Lcom/google/googlenav/ai;)LaM/bi;

    move-result-object v0

    goto :goto_28

    .line 74
    :sswitch_38
    invoke-direct {p0, v0}, LaM/bd;->c(Lcom/google/googlenav/ai;)Lcom/google/googlenav/ui/view/dialog/r;

    move-result-object v0

    goto :goto_28

    .line 62
    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_29
        0x4 -> :sswitch_2e
        0x5 -> :sswitch_24
        0x7 -> :sswitch_33
        0x14 -> :sswitch_38
    .end sparse-switch
.end method

.method public a(Lcom/google/googlenav/ai;)Lcom/google/googlenav/ui/view/android/V;
    .registers 6
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, LaM/bd;->b()LaM/m;

    move-result-object v1

    .line 84
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aI()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 88
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/a;

    invoke-virtual {v1, p1}, LaM/m;->j(Lcom/google/googlenav/ai;)Z

    move-result v2

    invoke-virtual {v1, p1}, LaM/m;->k(Lcom/google/googlenav/ai;)Z

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/googlenav/ui/view/dialog/a;-><init>(Lcom/google/googlenav/ai;LaM/m;ZZ)V

    .line 93
    :goto_21
    return-object v0

    .line 90
    :cond_22
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aj()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 91
    new-instance v0, Lcom/google/googlenav/ui/view/android/bm;

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/ui/view/android/bm;-><init>(Lcom/google/googlenav/ai;LaM/m;)V

    goto :goto_21

    .line 93
    :cond_2e
    new-instance v0, Lcom/google/googlenav/ui/view/android/bE;

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/ui/view/android/bE;-><init>(Lcom/google/googlenav/ai;LaM/m;)V

    goto :goto_21
.end method

.method public a()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, LaM/bd;->b:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 55
    return-void
.end method
