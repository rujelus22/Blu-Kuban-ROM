.class public LOd;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 132
    invoke-static {}, Llr;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LNX;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llu;

    iput-object v0, p0, Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;->a:Llu;

    .line 138
    invoke-static {}, LOf;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LNX;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNW;

    iput-object v0, p0, Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;->a:LNW;

    .line 144
    invoke-static {}, LIf;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LNX;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHW;

    iput-object v0, p0, Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;->a:LHW;

    .line 150
    return-void
.end method
