.class final Lcom/google/android/maps/driveabout/vector/bc;
.super Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/google/android/maps/driveabout/vector/bb;
    .registers 3

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bb;-><init>(Lcom/google/android/maps/driveabout/vector/bc;)V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bc;->a()Lcom/google/android/maps/driveabout/vector/bb;

    move-result-object v0

    return-object v0
.end method
