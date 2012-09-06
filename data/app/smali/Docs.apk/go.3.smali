.class public Lgo;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/app/OcrCameraActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 963
    invoke-static {p0}, LfY;->a(Lcom/google/android/apps/docs/app/BaseActivity;)V

    .line 965
    invoke-static {}, LdD;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->ad(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdE;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/OcrCameraActivity;->a:LdE;

    .line 971
    return-void
.end method
