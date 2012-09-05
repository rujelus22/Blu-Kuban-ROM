.class Lcom/google/android/maps/driveabout/vector/by;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cd;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/bx;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/bx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/by;->a:Lcom/google/android/maps/driveabout/vector/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/cd;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public a()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/by;->a:Lcom/google/android/maps/driveabout/vector/bx;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bx;->a(Lcom/google/android/maps/driveabout/vector/bx;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 3

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;Lt/L;)V
    .registers 5

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/maps/driveabout/vector/cd;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/by;->a(Lcom/google/android/maps/driveabout/vector/cd;)I

    move-result v0

    return v0
.end method
