.class Lcom/google/android/maps/driveabout/vector/bB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cB;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/android/maps/driveabout/vector/cB;

.field private c:I

.field private d:Lx/T;

.field private e:Lr/b;

.field private f:Lr/l;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/cB;ILandroid/content/Context;Lr/l;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/bB;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bB;->b:Lcom/google/android/maps/driveabout/vector/cB;

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/bB;->c:I

    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/bB;->f:Lr/l;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/cU;Z)Lcom/google/android/maps/driveabout/vector/cn;
    .registers 4

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cn;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cn;-><init>(Lcom/google/android/maps/driveabout/vector/cU;)V

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cU;IZ)Lcom/google/android/maps/driveabout/vector/cz;
    .registers 10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bB;->b:Lcom/google/android/maps/driveabout/vector/cB;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cB;->a(Lcom/google/android/maps/driveabout/vector/cU;IZ)Lcom/google/android/maps/driveabout/vector/cz;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bB;->d:Lx/T;

    if-nez v0, :cond_10

    invoke-static {}, Lx/T;->b()Lx/T;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bB;->d:Lx/T;

    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bB;->e:Lr/b;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bB;->f:Lr/l;

    invoke-virtual {v0}, Lr/l;->i()Lr/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bB;->e:Lr/b;

    :cond_1c
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bw;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bB;->e:Lr/b;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bB;->d:Lx/T;

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bB;->c:I

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bB;->f:Lr/l;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bw;-><init>(Lcom/google/android/maps/driveabout/vector/cz;Lr/b;Lx/T;ILr/l;)V

    return-object v0
.end method
