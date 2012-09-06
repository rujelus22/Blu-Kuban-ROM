.class public LjJ;
.super LcI;
.source "TabletDocListActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, LjJ;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 558
    iget-object v0, p0, LjJ;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)LhB;

    move-result-object v0

    invoke-interface {v0}, LhB;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LjJ;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/fragment/DocsUpgradedToDriveDialogFragment;->a(Ljava/lang/String;Lx;)V

    .line 560
    return-void
.end method
