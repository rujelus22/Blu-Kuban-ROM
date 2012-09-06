.class public Lcom/google/android/maps/driveabout/vector/cW;
.super Lt/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lt/f;-><init>(I)V

    .line 684
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/google/android/maps/driveabout/vector/cV;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 688
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 689
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 681
    check-cast p2, Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cW;->a(Ljava/lang/Object;Lcom/google/android/maps/driveabout/vector/cV;)V

    return-void
.end method
