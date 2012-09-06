.class public Lgp;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/app/RetriesExceededActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1117
    invoke-static {p0}, LfY;->a(Lcom/google/android/apps/docs/app/BaseActivity;)V

    .line 1119
    invoke-static {}, LLe;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->az(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLh;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/RetriesExceededActivity;->a:LLh;

    .line 1125
    invoke-static {}, LlL;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->aA(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmi;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/RetriesExceededActivity;->a:Lmi;

    .line 1131
    return-void
.end method
