.class Lcom/google/android/maps/driveabout/app/bG;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aC;


# instance fields
.field final a:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Ljava/util/HashSet;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bG;->a:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aA;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/android/maps/driveabout/app/bF;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bG;->a:Ljava/util/HashSet;

    check-cast p1, Lcom/google/android/maps/driveabout/app/bF;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/app/bF;->a(Lcom/google/android/maps/driveabout/app/bF;)Lx/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
