.class Lcom/google/android/apps/analytics/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/analytics/k;


# direct methods
.method constructor <init>(Lcom/google/android/apps/analytics/k;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/l;->a:Lcom/google/android/apps/analytics/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/l;->a:Lcom/google/android/apps/analytics/k;

    iget-object v0, v0, Lcom/google/android/apps/analytics/k;->a:Lcom/google/android/apps/analytics/i;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/i;->c()V

    return-void
.end method
