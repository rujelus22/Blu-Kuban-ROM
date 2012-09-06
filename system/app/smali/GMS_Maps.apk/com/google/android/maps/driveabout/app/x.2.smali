.class final Lcom/google/android/maps/driveabout/app/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/W;Lcom/google/android/maps/driveabout/app/W;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/W;->i()F

    move-result v0

    .line 214
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/app/W;->i()F

    move-result v1

    .line 215
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 210
    check-cast p1, Lcom/google/android/maps/driveabout/app/W;

    check-cast p2, Lcom/google/android/maps/driveabout/app/W;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/X;->a(Lcom/google/android/maps/driveabout/app/W;Lcom/google/android/maps/driveabout/app/W;)I

    move-result v0

    return v0
.end method
