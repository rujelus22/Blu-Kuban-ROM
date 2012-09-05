.class final Lcom/google/android/apps/analytics/e;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lcom/google/android/apps/analytics/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/apps/analytics/d;

    iput-object v0, p0, Lcom/google/android/apps/analytics/e;->a:[Lcom/google/android/apps/analytics/d;

    return-void
.end method

.method private static d(I)V
    .registers 3

    if-lez p0, :cond_5

    const/4 v0, 0x5

    if-le p0, v0, :cond_d

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index must be between 1 and 5 inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/apps/analytics/d;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/d;->d()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/e;->d(I)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/e;->a:[Lcom/google/android/apps/analytics/d;

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/d;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public final a(I)Z
    .registers 4

    invoke-static {p1}, Lcom/google/android/apps/analytics/e;->d(I)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/e;->a:[Lcom/google/android/apps/analytics/d;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final a()[Lcom/google/android/apps/analytics/d;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/e;->a:[Lcom/google/android/apps/analytics/d;

    invoke-virtual {v0}, [Lcom/google/android/apps/analytics/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/analytics/d;

    return-object v0
.end method

.method public final b(I)Lcom/google/android/apps/analytics/d;
    .registers 4

    invoke-static {p1}, Lcom/google/android/apps/analytics/e;->d(I)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/e;->a:[Lcom/google/android/apps/analytics/d;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final b()Z
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/apps/analytics/e;->a:[Lcom/google/android/apps/analytics/d;

    array-length v2, v2

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Lcom/google/android/apps/analytics/e;->a:[Lcom/google/android/apps/analytics/d;

    aget-object v2, v2, v0

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    :cond_e
    return v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final c(I)V
    .registers 5

    invoke-static {p1}, Lcom/google/android/apps/analytics/e;->d(I)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/e;->a:[Lcom/google/android/apps/analytics/d;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method
