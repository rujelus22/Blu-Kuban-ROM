.class public LfW;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/app/AccountsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1332
    invoke-static {p0}, LfY;->a(Lcom/google/android/apps/docs/app/BaseActivity;)V

    .line 1334
    invoke-static {}, LZa;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->bb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXJ;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:LXJ;

    .line 1340
    invoke-static {}, LIf;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->bc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHW;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:LHW;

    .line 1346
    invoke-static {}, LdD;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->bd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdE;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:LdE;

    .line 1352
    invoke-static {}, Lgx;->a()LanD;

    move-result-object v0

    invoke-static {v0}, Lfe;->be(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:LanD;

    .line 1358
    return-void
.end method
