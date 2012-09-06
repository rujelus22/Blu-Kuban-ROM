.class public LjP;
.super LcI;
.source "TabletDocListActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 983
    iput-object p1, p0, LjP;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 986
    const-string v0, "TabletDocListActivity"

    const-string v1, "Polling working status"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v0, p0, LjP;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 989
    iget-object v0, p0, LjP;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 990
    iget-object v0, p0, LjP;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    .line 992
    :cond_1a
    return-void
.end method
