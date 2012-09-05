.class Lcom/google/android/maps/driveabout/app/cx;
.super Lcom/google/android/maps/driveabout/vector/l;


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/app/bT;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/app/bT;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cx;->b:Lcom/google/android/maps/driveabout/app/bT;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cx;->b:Lcom/google/android/maps/driveabout/app/bT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bT;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/t;)Lcom/google/android/maps/driveabout/vector/v;
    .registers 8

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cx;->b:Lcom/google/android/maps/driveabout/app/bT;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bT;->c()Lcom/google/android/maps/driveabout/vector/bS;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cx;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cx;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/cx;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/cx;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cx;->a:Lcom/google/android/maps/driveabout/vector/u;

    return-object p0
.end method
