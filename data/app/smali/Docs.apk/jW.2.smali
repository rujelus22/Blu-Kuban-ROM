.class public LjW;
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
    .line 491
    iput-object p1, p0, LjW;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 494
    iget-object v0, p0, LjW;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v1, p0, LjW;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)LhB;

    move-result-object v1

    invoke-interface {v1}, LhB;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 496
    return-void
.end method
