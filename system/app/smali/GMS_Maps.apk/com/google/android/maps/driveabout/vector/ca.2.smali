.class final Lcom/google/android/maps/driveabout/vector/cA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aD;Lcom/google/android/maps/driveabout/vector/aD;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aD;->u_()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/aD;->u_()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 131
    check-cast p1, Lcom/google/android/maps/driveabout/vector/aD;

    check-cast p2, Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cA;->a(Lcom/google/android/maps/driveabout/vector/aD;Lcom/google/android/maps/driveabout/vector/aD;)I

    move-result v0

    return v0
.end method
