.class public Lcom/google/android/maps/driveabout/vector/de;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/u;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/u;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/de;->a:Lcom/google/android/maps/driveabout/vector/u;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/google/android/maps/driveabout/vector/de;
    .registers 3

    if-eqz p0, :cond_b

    const-string v0, "vector.version"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    :cond_b
    const-string v0, "VectorMapSavedState"

    const-string v1, "Couldn\'t load from bundle"

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Lcom/google/android/maps/driveabout/vector/de;

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/u;->b(Landroid/os/Bundle;)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/de;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    goto :goto_13
.end method


# virtual methods
.method public b(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "vector.version"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/de;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/u;->a(Landroid/os/Bundle;)V

    return-void
.end method
