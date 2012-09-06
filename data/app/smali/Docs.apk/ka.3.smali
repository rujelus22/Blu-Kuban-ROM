.class public Lka;
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
    .line 541
    iput-object p1, p0, Lka;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 544
    iget-object v0, p0, Lka;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->a:LdE;

    const-string v1, "tabletDoclist"

    const-string v2, "feedBackEvent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, LdE;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 546
    new-instance v0, LXM;

    iget-object v1, p0, Lka;->a:Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    const-string v2, "android_docs"

    invoke-direct {v0, v1, v2}, LXM;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 548
    invoke-virtual {v0}, LXM;->a()V

    .line 549
    return-void
.end method
