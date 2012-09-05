.class public Lcom/google/android/maps/driveabout/vector/N;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/m;

.field private final b:Lcom/google/android/maps/driveabout/vector/n;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/n;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/N;->a:Lcom/google/android/maps/driveabout/vector/m;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/N;->b:Lcom/google/android/maps/driveabout/vector/n;

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/N;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/N;->c:I

    return v0
.end method

.method public a(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/N;->a:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/m;->a(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/N;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/N;->c:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_2c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/N;->b:Lcom/google/android/maps/driveabout/vector/n;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/n;->l()I

    move-result v0

    if-lez v0, :cond_2c

    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v0

    const/high16 v1, 0x40a0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/N;->c:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/N;->b:Lcom/google/android/maps/driveabout/vector/n;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/n;->l()I

    move-result v2

    float-to-int v0, v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/N;->c:I

    :cond_2c
    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/N;->d:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/N;->d:Z

    return v0
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/N;->b:Lcom/google/android/maps/driveabout/vector/n;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/N;->a:Lcom/google/android/maps/driveabout/vector/m;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/n;->a(Lcom/google/android/maps/driveabout/vector/m;)V

    return-void
.end method
