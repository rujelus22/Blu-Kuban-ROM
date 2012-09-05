.class Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity$1;
.super Ljava/lang/Object;
.source "SocialHubNotificationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;

    .line 150
    .local v1, wrapper:Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;
    if-eqz v1, :cond_1e

    iget-object v2, v1, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrRelHref:Ljava/lang/String;

    if-eqz v2, :cond_1e

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, v1, Lcom/sec/android/socialhub/adapter/SocialhubNotificationAdapter$NotificationViewWrapper;->mstrRelHref:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity$1;->this$0:Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;

    invoke-virtual {v2, v0}, Lcom/sec/android/socialhub/activity/SocialHubNotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 155
    .end local v0           #i:Landroid/content/Intent;
    :cond_1e
    return-void
.end method
