.class public LOe;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/receivers/NetworkChangeReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    invoke-static {}, LOg;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LNX;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOh;

    iput-object v0, p0, Lcom/google/android/apps/docs/receivers/NetworkChangeReceiver;->a:LOh;

    .line 127
    return-void
.end method
