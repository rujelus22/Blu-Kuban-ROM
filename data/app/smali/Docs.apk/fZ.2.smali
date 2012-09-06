.class public LfZ;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/app/BaseDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1585
    invoke-static {p0}, LfY;->a(Lcom/google/android/apps/docs/app/BaseActivity;)V

    .line 1587
    invoke-static {}, Lpd;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->bH(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loj;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogActivity;->a:Loj;

    .line 1593
    return-void
.end method
