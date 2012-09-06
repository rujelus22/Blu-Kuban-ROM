.class public Lcom/google/android/maps/driveabout/vector/dU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/l;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/l;)V
    .registers 2
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dU;->a:Lcom/google/android/maps/driveabout/vector/l;

    .line 19
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/google/android/maps/driveabout/vector/dU;
    .registers 3
    .parameter

    .prologue
    .line 22
    if-eqz p0, :cond_b

    const-string v0, "vector.version"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    .line 23
    :cond_b
    const-string v0, "VectorMapSavedState"

    const-string v1, "Couldn\'t load from bundle"

    invoke-static {v0, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    .line 26
    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dU;

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/l;->b(Landroid/os/Bundle;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dU;-><init>(Lcom/google/android/maps/driveabout/vector/l;)V

    goto :goto_13
.end method


# virtual methods
.method public b(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 32
    const-string v0, "vector.version"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dU;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/l;->a(Landroid/os/Bundle;)V

    .line 34
    return-void
.end method
