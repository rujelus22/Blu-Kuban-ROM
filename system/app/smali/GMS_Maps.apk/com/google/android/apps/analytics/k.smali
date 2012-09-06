.class final Lcom/google/android/apps/analytics/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/analytics/g;


# instance fields
.field final synthetic a:Lcom/google/android/apps/analytics/i;


# direct methods
.method constructor <init>(Lcom/google/android/apps/analytics/i;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/k;->a:Lcom/google/android/apps/analytics/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/apps/analytics/k;->a:Lcom/google/android/apps/analytics/i;

    invoke-static {v0}, Lcom/google/android/apps/analytics/i;->a(Lcom/google/android/apps/analytics/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/analytics/l;

    invoke-direct {v1, p0}, Lcom/google/android/apps/analytics/l;-><init>(Lcom/google/android/apps/analytics/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/apps/analytics/k;->a:Lcom/google/android/apps/analytics/i;

    invoke-static {v0}, Lcom/google/android/apps/analytics/i;->b(Lcom/google/android/apps/analytics/i;)Lcom/google/android/apps/analytics/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/analytics/o;->a(J)V

    return-void
.end method
