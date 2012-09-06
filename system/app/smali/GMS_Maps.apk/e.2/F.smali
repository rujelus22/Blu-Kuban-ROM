.class public LE/f;
.super LE/k;
.source "SourceFile"


# static fields
.field public static final a:LE/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, LE/f;

    invoke-direct {v0}, LE/f;-><init>()V

    sput-object v0, LE/f;->a:LE/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, LE/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LC/z;)V
    .registers 4
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, LE/f;->b:LE/h;

    sget-object v1, LE/n;->a:LE/n;

    invoke-virtual {v0, v1}, LE/h;->a(LE/n;)LE/k;

    move-result-object v0

    invoke-virtual {v0, p1}, LE/k;->a(LC/z;)V

    .line 43
    return-void
.end method

.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0}, LE/f;->m()Lcom/google/android/maps/rideabout/view/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/rideabout/view/h;->a()V

    .line 53
    sget-object v0, LC/B;->c:LC/B;

    .line 54
    iget-object v0, p0, LE/f;->c:LE/j;

    invoke-virtual {v0}, LE/j;->a()LC/z;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_13

    .line 56
    iget-object v0, v0, LC/z;->f:LC/B;

    .line 58
    :cond_13
    invoke-virtual {p0}, LE/f;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    iget-object v1, p0, LE/f;->d:LE/g;

    invoke-virtual {v1}, LE/g;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/i;->b(Z)V

    .line 59
    return-void
.end method

.method public b(LC/z;)V
    .registers 4
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0}, LE/f;->l()Lcom/google/android/maps/rideabout/view/i;

    move-result-object v0

    iget-object v1, p0, LE/f;->d:LE/g;

    invoke-virtual {v1}, LE/g;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/i;->b(Z)V

    .line 37
    return-void
.end method

.method public c(LC/z;)V
    .registers 4
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, LE/f;->b:LE/h;

    sget-object v1, LE/n;->b:LE/n;

    invoke-virtual {v0, v1}, LE/h;->a(LE/n;)LE/k;

    .line 48
    return-void
.end method

.method protected e()V
    .registers 3

    .prologue
    .line 25
    invoke-virtual {p0}, LE/f;->k()Lcom/google/android/maps/rideabout/view/j;

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LE/f;->a(Z)V

    .line 27
    iget-object v0, p0, LE/f;->c:LE/j;

    invoke-virtual {v0}, LE/j;->a()LC/z;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_14

    .line 29
    iget-object v1, p0, LE/f;->c:LE/j;

    invoke-virtual {v1, v0}, LE/j;->c(LC/z;)V

    .line 31
    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LE/f;->b(Z)V

    .line 32
    return-void
.end method
