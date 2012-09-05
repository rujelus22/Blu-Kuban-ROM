.class final Lcom/google/android/maps/driveabout/vector/R;
.super Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()[Lt/L;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Lt/L;

    const/4 v1, 0x0

    new-instance v2, Lt/L;

    invoke-direct {v2}, Lt/L;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lt/L;

    invoke-direct {v2}, Lt/L;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lt/L;

    invoke-direct {v2}, Lt/L;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/R;->a()[Lt/L;

    move-result-object v0

    return-object v0
.end method
