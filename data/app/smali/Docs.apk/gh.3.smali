.class public Lgh;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/app/ErrorNotificationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1147
    invoke-static {p0}, LfY;->a(Lcom/google/android/apps/docs/app/BaseActivity;)V

    .line 1149
    invoke-static {}, Lgz;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->aC(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdQ;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->b:LdQ;

    .line 1155
    invoke-static {}, LZc;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lfe;->aD(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXO;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a:LXO;

    .line 1161
    return-void
.end method
