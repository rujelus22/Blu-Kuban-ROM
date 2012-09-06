.class public Lgt;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1535
    invoke-static {p0}, Lgl;->a(Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;)V

    .line 1537
    invoke-static {}, LZd;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->bB(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXP;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;->b:LXP;

    .line 1543
    return-void
.end method
