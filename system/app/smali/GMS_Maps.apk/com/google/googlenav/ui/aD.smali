.class public Lcom/google/googlenav/ui/aD;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/hM;

.field private final b:LaY/Y;

.field private final c:Lcom/google/googlenav/android/ac;

.field private d:Z

.field private e:Lcom/google/googlenav/login/h;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;LaY/Y;Lcom/google/googlenav/android/ac;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/aD;->d:Z

    iput-object p1, p0, Lcom/google/googlenav/ui/aD;->a:Lcom/google/googlenav/ui/wizard/hM;

    iput-object p2, p0, Lcom/google/googlenav/ui/aD;->b:LaY/Y;

    iput-object p3, p0, Lcom/google/googlenav/ui/aD;->c:Lcom/google/googlenav/android/ac;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/aD;)Lcom/google/googlenav/ui/wizard/hM;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aD;->a:Lcom/google/googlenav/ui/wizard/hM;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/aD;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/aD;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/aD;)LaY/Y;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/aD;->b:LaY/Y;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/aD;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/aD;->d:Z

    return v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/login/h;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/aD;->e:Lcom/google/googlenav/login/h;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/googlenav/ui/aF;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/aF;-><init>(Lcom/google/googlenav/ui/aD;Lcom/google/googlenav/ui/aE;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/aD;->e:Lcom/google/googlenav/login/h;

    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/aD;->e:Lcom/google/googlenav/login/h;

    return-object v0
.end method

.method public b()V
    .registers 4

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/ui/aD;->a:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->h()V

    :goto_f
    return-void

    :cond_10
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlenav/ui/aD;->c:Lcom/google/googlenav/android/ac;

    new-instance v2, Lcom/google/googlenav/ui/aE;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/aE;-><init>(Lcom/google/googlenav/ui/aD;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    goto :goto_f
.end method
