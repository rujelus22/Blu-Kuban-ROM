.class Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$4;
.super Ljava/lang/Object;
.source "AbstractServiceProvider.java"

# interfaces
.implements Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 836
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$4;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showAccount(Landroid/content/Context;I)V
    .registers 9
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    .line 839
    if-nez p1, :cond_4

    .line 864
    .end local p1
    :cond_3
    :goto_3
    return-void

    .line 842
    .restart local p1
    :cond_4
    const/4 v1, 0x0

    .line 844
    .local v1, action:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$4;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;

    invoke-virtual {v4}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSnsAction()Ljava/lang/String;

    move-result-object v1

    .line 846
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    .local v3, intent:Landroid/content/Intent;
    const/16 v4, 0xf

    if-ne p2, v4, :cond_19

    .line 849
    const-string v4, "ViaAccountAndSync"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 851
    :cond_19
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_3

    .line 853
    new-instance v2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 855
    .local v2, activity:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v2, :cond_3

    .line 857
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 858
    .local v0, act:Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 860
    invoke-virtual {v0, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3
.end method
