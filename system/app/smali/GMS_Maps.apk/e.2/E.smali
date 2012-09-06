.class public LE/e;
.super LE/k;
.source "SourceFile"


# static fields
.field public static final a:LE/e;


# instance fields
.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, LE/e;

    invoke-direct {v0}, LE/e;-><init>()V

    sput-object v0, LE/e;->a:LE/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, LE/k;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, LE/e;->h:Z

    .line 25
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, LE/e;->h:Z

    .line 30
    return-void
.end method

.method public a(LC/z;)V
    .registers 4
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, LE/e;->b:LE/h;

    sget-object v1, LE/n;->a:LE/n;

    invoke-virtual {v0, v1}, LE/h;->a(LE/n;)LE/k;

    move-result-object v0

    invoke-virtual {v0, p1}, LE/k;->a(LC/z;)V

    .line 60
    return-void
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, LE/e;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    iget-object v1, p0, LE/e;->d:LE/g;

    invoke-virtual {v1}, LE/g;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/i;->a(Z)V

    .line 70
    invoke-virtual {p0}, LE/e;->m()Lcom/google/android/maps/rideabout/view/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/h;->b()V

    .line 71
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 34
    invoke-super {p0}, LE/k;->b()V

    .line 35
    iget-boolean v0, p0, LE/e;->h:Z

    if-eqz v0, :cond_15

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, LE/e;->h:Z

    .line 37
    iget-object v0, p0, LE/e;->g:LaP/d;

    invoke-virtual {v0}, LaP/d;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 38
    invoke-virtual {p0}, LE/e;->n()V

    .line 43
    :cond_15
    :goto_15
    return-void

    .line 40
    :cond_16
    invoke-virtual {p0}, LE/e;->o()V

    goto :goto_15
.end method

.method public b(LC/z;)V
    .registers 4
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, LE/e;->b:LE/h;

    sget-object v1, LE/n;->c:LE/n;

    invoke-virtual {v0, v1}, LE/h;->a(LE/n;)LE/k;

    .line 65
    return-void
.end method

.method protected e()V
    .registers 3

    .prologue
    .line 47
    invoke-virtual {p0}, LE/e;->k()Lcom/google/android/maps/rideabout/view/j;

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LE/e;->a(Z)V

    .line 49
    iget-object v0, p0, LE/e;->c:LE/j;

    invoke-virtual {v0}, LE/j;->a()LC/z;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_14

    .line 51
    iget-object v1, p0, LE/e;->c:LE/j;

    invoke-virtual {v1, v0}, LE/j;->c(LC/z;)V

    .line 53
    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LE/e;->b(Z)V

    .line 54
    return-void
.end method
