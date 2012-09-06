.class public final Lcom/google/android/apps/analytics/ab;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final c:D

.field private d:D

.field private e:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .registers 7

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/analytics/ab;->b:Ljava/lang/String;

    iput-wide v1, p0, Lcom/google/android/apps/analytics/ab;->d:D

    iput-wide v1, p0, Lcom/google/android/apps/analytics/ab;->e:D

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_20

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "orderId must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iput-object p1, p0, Lcom/google/android/apps/analytics/ab;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/apps/analytics/ab;->c:D

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/ab;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/ab;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/apps/analytics/ab;)D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/ab;->c:D

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/apps/analytics/ab;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/ab;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/apps/analytics/ab;)D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/ab;->d:D

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/apps/analytics/ab;)D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/ab;->e:D

    return-wide v0
.end method


# virtual methods
.method public final a(D)Lcom/google/android/apps/analytics/ab;
    .registers 3

    iput-wide p1, p0, Lcom/google/android/apps/analytics/ab;->d:D

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/apps/analytics/ab;
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/ab;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b(D)Lcom/google/android/apps/analytics/ab;
    .registers 3

    iput-wide p1, p0, Lcom/google/android/apps/analytics/ab;->e:D

    return-object p0
.end method
