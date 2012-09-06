.class Lcom/google/android/maps/driveabout/app/bI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aA;


# instance fields
.field final a:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Ljava/util/HashSet;)V
    .registers 2
    .parameter

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bI;->a:Ljava/util/HashSet;

    .line 197
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/ay;)Z
    .registers 4
    .parameter

    .prologue
    .line 201
    instance-of v0, p1, Lcom/google/android/maps/driveabout/app/bG;

    if-eqz v0, :cond_11

    .line 202
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bI;->a:Ljava/util/HashSet;

    check-cast p1, Lcom/google/android/maps/driveabout/app/bG;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/app/bG;->a(Lcom/google/android/maps/driveabout/app/bG;)Lr/V;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 204
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
