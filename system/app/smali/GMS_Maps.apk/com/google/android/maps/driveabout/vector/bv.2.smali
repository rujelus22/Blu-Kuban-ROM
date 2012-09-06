.class Lcom/google/android/maps/driveabout/vector/bV;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/googlenav/intersectionexplorer/c;

.field b:Lcom/google/googlenav/intersectionexplorer/c;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/intersectionexplorer/c;Lcom/google/googlenav/intersectionexplorer/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bV;->a:Lcom/google/googlenav/intersectionexplorer/c;

    .line 217
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/bV;->b:Lcom/google/googlenav/intersectionexplorer/c;

    .line 218
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 222
    instance-of v1, p1, Lcom/google/android/maps/driveabout/vector/bV;

    if-nez v1, :cond_6

    .line 228
    :cond_5
    :goto_5
    return v0

    .line 226
    :cond_6
    check-cast p1, Lcom/google/android/maps/driveabout/vector/bV;

    .line 228
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bV;->a:Lcom/google/googlenav/intersectionexplorer/c;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/bV;->a:Lcom/google/googlenav/intersectionexplorer/c;

    if-ne v1, v2, :cond_14

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bV;->b:Lcom/google/googlenav/intersectionexplorer/c;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/bV;->b:Lcom/google/googlenav/intersectionexplorer/c;

    if-eq v1, v2, :cond_20

    :cond_14
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bV;->a:Lcom/google/googlenav/intersectionexplorer/c;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/bV;->b:Lcom/google/googlenav/intersectionexplorer/c;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bV;->b:Lcom/google/googlenav/intersectionexplorer/c;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/bV;->a:Lcom/google/googlenav/intersectionexplorer/c;

    if-ne v1, v2, :cond_5

    :cond_20
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->a:Lcom/google/googlenav/intersectionexplorer/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bV;->b:Lcom/google/googlenav/intersectionexplorer/c;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
