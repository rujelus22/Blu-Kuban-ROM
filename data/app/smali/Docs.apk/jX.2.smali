.class public LjX;
.super Ljava/lang/Object;
.source "TabletDocListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, LjX;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 503
    iget-object v0, p0, LjX;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a()Lx;

    move-result-object v0

    iget-object v1, p0, LjX;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v1, v1, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()LsO;

    move-result-object v1

    iget-object v2, p0, LjX;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v2, v2, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a()Ljava/util/EnumSet;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;->a(Lx;LsO;Ljava/util/EnumSet;)V

    .line 505
    return-void
.end method
