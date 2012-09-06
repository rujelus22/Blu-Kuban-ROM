.class public Lcom/google/googlenav/ui/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/ju;

.field private final b:LaM/am;

.field private final c:Lcom/google/googlenav/android/Y;

.field private d:Z

.field private e:Las/g;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;LaM/am;Lcom/google/googlenav/android/Y;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/ay;->d:Z

    .line 30
    iput-object p1, p0, Lcom/google/googlenav/ui/ay;->a:Lcom/google/googlenav/ui/wizard/ju;

    .line 31
    iput-object p2, p0, Lcom/google/googlenav/ui/ay;->b:LaM/am;

    .line 32
    iput-object p3, p0, Lcom/google/googlenav/ui/ay;->c:Lcom/google/googlenav/android/Y;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/ay;)Lcom/google/googlenav/ui/wizard/ju;
    .registers 2
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/googlenav/ui/ay;->a:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/ay;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/google/googlenav/ui/ay;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/ay;)LaM/am;
    .registers 2
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/googlenav/ui/ay;->b:LaM/am;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/ay;)Z
    .registers 2
    .parameter

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/google/googlenav/ui/ay;->d:Z

    return v0
.end method


# virtual methods
.method public a()Las/g;
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/googlenav/ui/ay;->e:Las/g;

    if-nez v0, :cond_c

    .line 42
    new-instance v0, Lcom/google/googlenav/ui/aA;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/aA;-><init>(Lcom/google/googlenav/ui/ay;Lcom/google/googlenav/ui/az;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/ay;->e:Las/g;

    .line 44
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/ay;->e:Las/g;

    return-object v0
.end method

.method public b()V
    .registers 4

    .prologue
    .line 51
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->k()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 52
    iget-object v0, p0, Lcom/google/googlenav/ui/ay;->a:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->h()V

    .line 62
    :goto_f
    return-void

    .line 54
    :cond_10
    const/4 v0, 0x1

    .line 55
    iget-object v1, p0, Lcom/google/googlenav/ui/ay;->c:Lcom/google/googlenav/android/Y;

    new-instance v2, Lcom/google/googlenav/ui/az;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/az;-><init>(Lcom/google/googlenav/ui/ay;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    goto :goto_f
.end method
