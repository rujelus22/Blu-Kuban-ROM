.class public LaaO;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/view/ThumbnailView;)V
    .registers 2
    .parameter

    .prologue
    .line 212
    invoke-static {}, LaaQ;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LaaB;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labq;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/ThumbnailView;->a:Labq;

    .line 218
    invoke-static {}, LZp;->a()LanD;

    move-result-object v0

    invoke-static {v0}, LaaB;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/ThumbnailView;->a:LanD;

    .line 224
    return-void
.end method
