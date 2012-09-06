.class public LjH;
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
    .line 347
    iput-object p1, p0, LjH;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, LjH;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LjI;

    invoke-direct {v1, p0}, LjI;-><init>(LjH;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 356
    return-void
.end method
