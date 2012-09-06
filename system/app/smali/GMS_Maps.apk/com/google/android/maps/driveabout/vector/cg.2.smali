.class public Lcom/google/android/maps/driveabout/vector/cG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/E;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/D;

.field private b:I

.field private c:Lcom/google/android/maps/driveabout/vector/cv;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/D;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cG;->a:Lcom/google/android/maps/driveabout/vector/D;

    .line 32
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/cG;->b:I

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 4
    .parameter

    .prologue
    .line 39
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cG;-><init>(Lcom/google/android/maps/driveabout/vector/D;I)V

    .line 40
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/E;->c()Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/cG;->a(Lcom/google/android/maps/driveabout/vector/cv;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/vector/D;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cG;->a:Lcom/google/android/maps/driveabout/vector/D;

    return-object v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cG;->b:I

    .line 80
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cv;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cG;->c:Lcom/google/android/maps/driveabout/vector/cv;

    .line 92
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cG;->b:I

    return v0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/cv;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cG;->c:Lcom/google/android/maps/driveabout/vector/cv;

    return-object v0
.end method
