.class Lcom/google/android/maps/driveabout/app/bC;
.super Lat/a;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bv;

.field private final b:Lcom/google/android/maps/driveabout/app/bx;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/bv;Lcom/google/android/maps/driveabout/app/bx;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bC;->a:Lcom/google/android/maps/driveabout/app/bv;

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bC;->b:Lcom/google/android/maps/driveabout/app/bx;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x2e

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lam/b;

    sget-object v1, LbD/eL;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bC;->b:Lcom/google/android/maps/driveabout/app/bx;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/bx;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Lam/b;->h(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Lam/b;->h(II)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Lam/b;->h(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bC;->a:Lcom/google/android/maps/driveabout/app/bv;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/bv;->a(Lcom/google/android/maps/driveabout/app/bv;)Lt/au;

    move-result-object v1

    if-eqz v1, :cond_34

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bC;->a:Lcom/google/android/maps/driveabout/app/bv;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/bv;->a(Lcom/google/android/maps/driveabout/app/bv;)Lt/au;

    move-result-object v2

    invoke-static {v2}, Lz/f;->a(Lt/au;)Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    :cond_34
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Lam/b;->b(IZ)V

    const/16 v1, 0x15

    invoke-virtual {v0, v1, v4}, Lam/b;->h(II)V

    invoke-virtual {v0}, Lam/b;->d()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/4 v3, 0x2

    const/4 v4, 0x1

    sget-object v0, LbD/fo;->a:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-virtual {v1, v4}, Lam/b;->d(I)I

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0, v3}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bC;->b:Lcom/google/android/maps/driveabout/app/bx;

    invoke-virtual {v0, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/bx;->a(Lcom/google/android/maps/driveabout/app/bx;Lam/b;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->a:Lcom/google/android/maps/driveabout/app/bv;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bv;->b(Lcom/google/android/maps/driveabout/app/bv;)V

    :goto_26
    return v4

    :cond_27
    const-string v0, "LayerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/bC;->b:Lcom/google/android/maps/driveabout/app/bx;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/app/bx;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is missing LayerInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method
