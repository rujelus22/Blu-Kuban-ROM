.class public Lcom/google/android/maps/driveabout/vector/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/d;

.field private final b:Lcom/google/android/maps/driveabout/vector/e;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/e;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/H;->a:Lcom/google/android/maps/driveabout/vector/d;

    .line 39
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/H;->b:Lcom/google/android/maps/driveabout/vector/e;

    .line 40
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/H;->c:I

    .line 41
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/H;->c:I

    return v0
.end method

.method public a(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/H;->a:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/d;->a(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/H;->c:I

    .line 45
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/H;->c:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_2c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/H;->b:Lcom/google/android/maps/driveabout/vector/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/e;->m()I

    move-result v0

    if-lez v0, :cond_2c

    .line 46
    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v0

    const/high16 v1, 0x40a0

    mul-float/2addr v0, v1

    .line 47
    mul-float/2addr v0, v0

    .line 51
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/H;->c:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/H;->b:Lcom/google/android/maps/driveabout/vector/e;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/e;->m()I

    move-result v2

    float-to-int v0, v0

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/H;->c:I

    .line 53
    :cond_2c
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/H;->d:Z

    .line 61
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/H;->d:Z

    return v0
.end method

.method public c()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/H;->b:Lcom/google/android/maps/driveabout/vector/e;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/H;->a:Lcom/google/android/maps/driveabout/vector/d;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/e;->a(Lcom/google/android/maps/driveabout/vector/d;)V

    .line 74
    return-void
.end method
