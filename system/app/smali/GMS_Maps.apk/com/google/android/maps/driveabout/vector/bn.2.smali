.class Lcom/google/android/maps/driveabout/vector/bN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cx;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/bM;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/bM;)V
    .registers 2
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bN;->a:Lcom/google/android/maps/driveabout/vector/bM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/cx;)I
    .registers 3
    .parameter

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bN;->a:Lcom/google/android/maps/driveabout/vector/bM;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bM;->a(Lcom/google/android/maps/driveabout/vector/bM;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 302
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;Ln/Q;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 290
    check-cast p1, Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bN;->a(Lcom/google/android/maps/driveabout/vector/cx;)I

    move-result v0

    return v0
.end method
