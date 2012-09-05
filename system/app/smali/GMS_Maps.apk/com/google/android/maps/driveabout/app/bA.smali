.class Lcom/google/android/maps/driveabout/app/bA;
.super Lat/a;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bv;

.field private final b:Lam/b;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bv;Lam/b;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bA;->a:Lcom/google/android/maps/driveabout/app/bv;

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bA;->b:Lam/b;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x39

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6

    const/4 v2, 0x3

    new-instance v0, Lam/b;

    sget-object v1, LbD/da;->n:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const-string v1, "__LAYERS"

    invoke-virtual {v0, v2, v1}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bA;->b:Lam/b;

    if-eqz v1, :cond_33

    const/4 v1, 0x2

    :try_start_12
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bA;->b:Lam/b;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lam/b;->d(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bA;->b:Lam/b;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bA;->b:Lam/b;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lam/b;->e(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_33} :catch_40

    :cond_33
    :goto_33
    invoke-virtual {v0}, Lam/b;->d()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->b(Ljava/io/OutputStream;)V

    return-void

    :catch_40
    move-exception v1

    goto :goto_33
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6

    const/4 v3, 0x1

    sget-object v0, LbD/da;->o:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lam/b;->d(I)I

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bA;->a:Lcom/google/android/maps/driveabout/app/bv;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/bv;->c(Lcom/google/android/maps/driveabout/app/bv;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "DA_LayerInfo"

    invoke-static {v1, v0, v2}, Ln/b;->a(Landroid/content/Context;Lam/b;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bA;->a:Lcom/google/android/maps/driveabout/app/bv;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/bv;->a(Lcom/google/android/maps/driveabout/app/bv;Lam/b;)V

    :cond_1d
    return v3
.end method
