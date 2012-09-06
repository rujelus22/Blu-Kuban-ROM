.class Lcom/google/android/maps/driveabout/vector/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/ba;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/ba;)V
    .registers 2
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bb;->a:Lcom/google/android/maps/driveabout/vector/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/ca;Lcom/google/android/maps/driveabout/vector/ca;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 789
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ca;->a()Ln/l;

    move-result-object v0

    invoke-interface {v0}, Ln/l;->i()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ca;->a()Ln/l;

    move-result-object v1

    invoke-interface {v1}, Ln/l;->i()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 786
    check-cast p1, Lcom/google/android/maps/driveabout/vector/ca;

    check-cast p2, Lcom/google/android/maps/driveabout/vector/ca;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bb;->a(Lcom/google/android/maps/driveabout/vector/ca;Lcom/google/android/maps/driveabout/vector/ca;)I

    move-result v0

    return v0
.end method
