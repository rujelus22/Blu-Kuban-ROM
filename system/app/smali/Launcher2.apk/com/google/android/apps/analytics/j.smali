.class final Lcom/google/android/apps/analytics/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/analytics/i;


# direct methods
.method constructor <init>(Lcom/google/android/apps/analytics/i;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/j;->a:Lcom/google/android/apps/analytics/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/j;->a:Lcom/google/android/apps/analytics/i;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/i;->b()Z

    return-void
.end method
