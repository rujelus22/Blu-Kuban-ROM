.class LBu;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements LWZ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LWZ",
        "<",
        "Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LBs;


# direct methods
.method constructor <init>(LBs;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, LBu;->a:LBs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;
    .registers 2

    .prologue
    .line 97
    invoke-static {}, LBv;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;

    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 94
    invoke-virtual {p0}, LBu;->a()Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 117
    invoke-static {}, LBv;->a()V

    .line 118
    return-void
.end method

.method public a(LanD;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Lcom/google/android/apps/docs/editors/net/ConnectivityChangeReceiver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p1}, LBv;->a(LanD;)V

    .line 113
    return-void
.end method

.method public a(LanG;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    invoke-static {p1}, LBv;->a(LanG;)V

    .line 103
    return-void
.end method
