.class public Lcom/google/android/maps/driveabout/vector/cl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/J;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/I;

.field private b:I

.field private c:Lcom/google/android/maps/driveabout/vector/cb;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/I;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cl;->a:Lcom/google/android/maps/driveabout/vector/I;

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/cl;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 4

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;-><init>(Lcom/google/android/maps/driveabout/vector/I;I)V

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/J;->c()Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/cl;->a(Lcom/google/android/maps/driveabout/vector/cb;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/vector/I;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->a:Lcom/google/android/maps/driveabout/vector/I;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cl;->b:I

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cl;->c:Lcom/google/android/maps/driveabout/vector/cb;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->b:I

    return v0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/cb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->c:Lcom/google/android/maps/driveabout/vector/cb;

    return-object v0
.end method
