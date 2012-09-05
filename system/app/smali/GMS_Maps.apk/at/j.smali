.class public Lat/j;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/Boolean;

.field private m:Ljava/lang/Boolean;

.field private n:Ljava/lang/Boolean;

.field private o:Lat/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lat/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lat/j;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/j;->f:Z

    return-void
.end method


# virtual methods
.method public a()Lat/h;
    .registers 6

    sget-boolean v0, Lat/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lat/j;->o:Lat/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    iget-object v0, p0, Lat/j;->b:Ljava/lang/String;

    iget-object v1, p0, Lat/j;->c:Ljava/lang/String;

    iget-object v2, p0, Lat/j;->d:Ljava/lang/String;

    iget-object v3, p0, Lat/j;->e:Ljava/lang/String;

    iget-boolean v4, p0, Lat/j;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, Lat/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lat/h;

    move-result-object v0

    iput-object v0, p0, Lat/j;->o:Lat/h;

    iget-object v0, p0, Lat/j;->o:Lat/h;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0, v1}, Lat/h;->a(Lat/h;Ljava/lang/String;)V

    iget-object v0, p0, Lat/j;->o:Lat/h;

    const-string v1, "SYSTEM"

    invoke-static {v0, v1}, Lat/h;->b(Lat/h;Ljava/lang/String;)V

    iget-object v0, p0, Lat/j;->o:Lat/h;

    iget-object v1, p0, Lat/j;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lat/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lat/j;->o:Lat/h;

    iget v1, p0, Lat/j;->g:I

    invoke-static {v0, v1}, Lat/h;->a(Lat/h;I)V

    iget-object v0, p0, Lat/j;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lat/j;->o:Lat/h;

    iget-object v1, p0, Lat/j;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lat/h;->a(Lat/h;Z)V

    :cond_49
    iget-object v0, p0, Lat/j;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lat/j;->o:Lat/h;

    iget-object v1, p0, Lat/j;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lat/h;->b(Lat/h;Z)V

    :cond_58
    iget-object v0, p0, Lat/j;->l:Ljava/lang/Boolean;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lat/j;->o:Lat/h;

    iget-object v1, p0, Lat/j;->l:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lat/h;->c(Lat/h;Z)V

    :cond_67
    iget-object v0, p0, Lat/j;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lat/j;->o:Lat/h;

    iget-object v1, p0, Lat/j;->m:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lat/h;->d(Lat/h;Z)V

    :cond_76
    iget-object v0, p0, Lat/j;->o:Lat/h;

    iget-object v0, v0, Lat/h;->f:Lat/n;

    iget-object v1, p0, Lat/j;->n:Ljava/lang/Boolean;

    if-eqz v1, :cond_87

    iget-object v1, p0, Lat/j;->n:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lat/n;->a(Lat/n;Z)V

    :cond_87
    iget-object v1, p0, Lat/j;->i:Ljava/lang/String;

    if-eqz v1, :cond_90

    iget-object v1, p0, Lat/j;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lat/n;->a(Lat/n;Ljava/lang/String;)V

    :cond_90
    iget-object v0, p0, Lat/j;->o:Lat/h;

    return-object v0
.end method

.method public a(I)Lat/j;
    .registers 3

    sget-boolean v0, Lat/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lat/j;->o:Lat/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    iput p1, p0, Lat/j;->g:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lat/j;
    .registers 3

    sget-boolean v0, Lat/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lat/j;->o:Lat/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    iput-object p1, p0, Lat/j;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lat/j;
    .registers 3

    sget-boolean v0, Lat/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lat/j;->o:Lat/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    iput-boolean p1, p0, Lat/j;->f:Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lat/j;
    .registers 3

    sget-boolean v0, Lat/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lat/j;->o:Lat/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    iput-object p1, p0, Lat/j;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lat/j;
    .registers 3

    sget-boolean v0, Lat/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lat/j;->o:Lat/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lat/j;->j:Ljava/lang/Boolean;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lat/j;
    .registers 3

    sget-boolean v0, Lat/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lat/j;->o:Lat/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    iput-object p1, p0, Lat/j;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lat/j;
    .registers 3

    sget-boolean v0, Lat/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lat/j;->o:Lat/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lat/j;->k:Ljava/lang/Boolean;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lat/j;
    .registers 3

    sget-boolean v0, Lat/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lat/j;->o:Lat/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    iput-object p1, p0, Lat/j;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lat/j;
    .registers 3

    sget-boolean v0, Lat/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lat/j;->o:Lat/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lat/j;->m:Ljava/lang/Boolean;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lat/j;
    .registers 3

    sget-boolean v0, Lat/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lat/j;->o:Lat/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    iput-object p1, p0, Lat/j;->h:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)Lat/j;
    .registers 3

    sget-boolean v0, Lat/j;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lat/j;->o:Lat/h;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lat/j;->l:Ljava/lang/Boolean;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lat/j;
    .registers 2

    iput-object p1, p0, Lat/j;->i:Ljava/lang/String;

    return-object p0
.end method

.method public f(Z)Lat/j;
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lat/j;->n:Ljava/lang/Boolean;

    return-object p0
.end method
