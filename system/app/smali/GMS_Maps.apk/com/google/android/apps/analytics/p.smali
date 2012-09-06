.class public Lcom/google/android/apps/analytics/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:D

.field private final f:J


# direct methods
.method private constructor <init>(Lcom/google/android/apps/analytics/r;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/apps/analytics/r;->a(Lcom/google/android/apps/analytics/r;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/p;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/r;->b(Lcom/google/android/apps/analytics/r;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/p;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/r;->c(Lcom/google/android/apps/analytics/r;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/p;->e:D

    invoke-static {p1}, Lcom/google/android/apps/analytics/r;->d(Lcom/google/android/apps/analytics/r;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/p;->f:J

    invoke-static {p1}, Lcom/google/android/apps/analytics/r;->e(Lcom/google/android/apps/analytics/r;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/p;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/r;->f(Lcom/google/android/apps/analytics/r;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/p;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/analytics/r;Lcom/google/android/apps/analytics/q;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/p;-><init>(Lcom/google/android/apps/analytics/r;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/p;->d:Ljava/lang/String;

    return-object v0
.end method

.method e()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/p;->e:D

    return-wide v0
.end method

.method f()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/p;->f:J

    return-wide v0
.end method
