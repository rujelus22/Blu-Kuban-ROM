.class public Luk;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    invoke-static {}, LZc;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Luf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXO;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->a:LXO;

    .line 39
    return-void
.end method
