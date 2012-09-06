.class Lcom/google/android/apps/analytics/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/analytics/A;


# instance fields
.field final synthetic a:Lcom/google/android/apps/analytics/u;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/analytics/u;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/w;->a:Lcom/google/android/apps/analytics/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/analytics/u;Lcom/google/android/apps/analytics/t;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/w;-><init>(Lcom/google/android/apps/analytics/u;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/apps/analytics/w;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v0}, Lcom/google/android/apps/analytics/u;->i(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/v;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/analytics/w;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v0}, Lcom/google/android/apps/analytics/u;->i(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/v;->a()Lcom/google/android/apps/analytics/m;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/google/android/apps/analytics/w;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v1}, Lcom/google/android/apps/analytics/u;->e(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/g;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/apps/analytics/m;->b:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/analytics/g;->a(J)V

    goto :goto_8
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/apps/analytics/w;->a:Lcom/google/android/apps/analytics/u;

    invoke-static {v0, p1}, Lcom/google/android/apps/analytics/u;->b(Lcom/google/android/apps/analytics/u;I)I

    return-void
.end method

.method public a(Z)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/apps/analytics/w;->a:Lcom/google/android/apps/analytics/u;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/google/android/apps/analytics/u;->a(Lcom/google/android/apps/analytics/u;I)I

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/analytics/w;->a:Lcom/google/android/apps/analytics/u;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/analytics/u;->a(Lcom/google/android/apps/analytics/u;I)I

    goto :goto_9
.end method
