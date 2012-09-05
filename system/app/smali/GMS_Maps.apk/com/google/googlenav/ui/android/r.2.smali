.class public Lcom/google/googlenav/ui/android/r;
.super Lcom/google/googlenav/ui/bQ;


# instance fields
.field private d:Lcom/google/googlenav/ui/android/q;


# direct methods
.method public constructor <init>(LaJ/p;Lcom/google/googlenav/ui/android/q;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/bQ;-><init>(LaJ/p;)V

    iput-object p2, p0, Lcom/google/googlenav/ui/android/r;->d:Lcom/google/googlenav/ui/android/q;

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->d:Lcom/google/googlenav/ui/android/q;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/q;->a(I)I

    move-result v0

    return v0
.end method

.method protected a()V
    .registers 1

    return-void
.end method

.method public a(Landroid/graphics/Point;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->d:Lcom/google/googlenav/ui/android/q;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/q;->a(Landroid/graphics/Point;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bR;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->d:Lcom/google/googlenav/ui/android/q;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/android/q;->a(Lcom/google/googlenav/ui/bR;)V

    return-void
.end method

.method protected b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/android/r;->c:Z

    return-void
.end method

.method protected b(LaJ/Y;II)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/android/r;->d:Lcom/google/googlenav/ui/android/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/android/q;->a(LaJ/Y;II)V

    return-void
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
