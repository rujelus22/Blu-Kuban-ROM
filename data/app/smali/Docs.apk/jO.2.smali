.class public LjO;
.super Landroid/database/ContentObserver;
.source "TabletDocListActivity.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 937
    iput-object p1, p0, LjO;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter

    .prologue
    .line 940
    iget-object v0, p0, LjO;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lck;

    iget-object v1, p0, LjO;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 941
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 942
    iget-object v0, p0, LjO;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->b(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    .line 943
    iget-object v0, p0, LjO;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:Lkc;

    invoke-interface {v0}, Lkc;->b()V

    .line 944
    return-void
.end method
