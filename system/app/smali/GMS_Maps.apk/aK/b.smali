.class LaK/b;
.super Lcom/google/android/maps/driveabout/vector/cV;


# instance fields
.field final synthetic b:LaK/a;


# direct methods
.method constructor <init>(LaK/a;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, LaK/b;->b:LaK/a;

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public b(FFFFFZ)F
    .registers 8

    sget-object v0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-virtual {v0}, Lcom/google/googlenav/android/D;->h()V

    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->e()Lcom/google/googlenav/android/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aw()Lcom/google/googlenav/ui/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->v()V

    invoke-super/range {p0 .. p6}, Lcom/google/android/maps/driveabout/vector/cV;->b(FFFFFZ)F

    move-result v0

    return v0
.end method

.method public b(FI)V
    .registers 4

    sget-object v0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-virtual {v0}, Lcom/google/googlenav/android/D;->h()V

    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cV;->b(FI)V

    return-void
.end method
