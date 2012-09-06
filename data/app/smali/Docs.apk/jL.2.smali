.class public LjL;
.super Ljava/lang/Object;
.source "TabletDocListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, LjL;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iput-object p2, p0, LjL;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 624
    iget-object v0, p0, LjL;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lck;

    iget-object v1, p0, LjL;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 625
    iget-object v0, p0, LjL;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 626
    const/4 v0, 0x1

    return v0
.end method
