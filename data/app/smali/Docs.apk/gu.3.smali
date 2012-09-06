.class public Lgu;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1251
    invoke-static {p0}, Lgl;->a(Lcom/google/android/apps/docs/app/LocalFileOpenerActivity;)V

    .line 1253
    invoke-static {}, LZd;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->aR(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXP;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;->b:LXP;

    .line 1259
    invoke-static {}, LGz;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->aS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFX;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/ZippedTrixOpenActivity;->a:LFX;

    .line 1265
    return-void
.end method
