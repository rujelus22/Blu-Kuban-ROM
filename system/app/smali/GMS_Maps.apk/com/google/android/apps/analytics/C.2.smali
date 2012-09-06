.class public Lcom/google/android/apps/analytics/C;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:D

.field private final d:D

.field private final e:D


# direct methods
.method private constructor <init>(Lcom/google/android/apps/analytics/E;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/apps/analytics/E;->a(Lcom/google/android/apps/analytics/E;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/C;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/E;->b(Lcom/google/android/apps/analytics/E;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/C;->c:D

    invoke-static {p1}, Lcom/google/android/apps/analytics/E;->c(Lcom/google/android/apps/analytics/E;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/C;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/apps/analytics/E;->d(Lcom/google/android/apps/analytics/E;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/C;->d:D

    invoke-static {p1}, Lcom/google/android/apps/analytics/E;->e(Lcom/google/android/apps/analytics/E;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/analytics/C;->e:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/analytics/E;Lcom/google/android/apps/analytics/D;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/C;-><init>(Lcom/google/android/apps/analytics/E;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/C;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/C;->b:Ljava/lang/String;

    return-object v0
.end method

.method c()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/C;->c:D

    return-wide v0
.end method

.method d()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/C;->d:D

    return-wide v0
.end method

.method e()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/C;->e:D

    return-wide v0
.end method
