.class public LMu;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/providers/DocListProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    invoke-static {}, LMv;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LMq;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMb;

    iput-object v0, p0, Lcom/google/android/apps/docs/providers/DocListProvider;->a:LMb;

    .line 94
    return-void
.end method
