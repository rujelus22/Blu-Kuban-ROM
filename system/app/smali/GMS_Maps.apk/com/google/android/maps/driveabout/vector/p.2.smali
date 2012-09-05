.class public Lcom/google/android/maps/driveabout/vector/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/view/View;

.field private volatile b:Z

.field private volatile c:Lcom/google/android/maps/driveabout/vector/r;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/p;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/vector/q;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(FF)V
    .registers 3

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/r;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/p;->c:Lcom/google/android/maps/driveabout/vector/r;

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/p;->b:Z

    return-void
.end method

.method public b(FF)V
    .registers 3

    return-void
.end method

.method public c(FF)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/p;->b:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/p;->b:Z

    return v0
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public d(FF)V
    .registers 3

    return-void
.end method

.method public e()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->a:Landroid/view/View;

    return-object v0
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/p;->c:Lcom/google/android/maps/driveabout/vector/r;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/r;->a()V

    :cond_7
    return-void
.end method
