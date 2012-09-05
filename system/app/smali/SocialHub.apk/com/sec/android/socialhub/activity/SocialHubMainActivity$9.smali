.class Lcom/sec/android/socialhub/activity/SocialHubMainActivity$9;
.super Ljava/lang/Object;
.source "SocialHubMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->updateBadge(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1180
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$9;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    iput p2, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$9;->val$count:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1183
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$9;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->indicatorTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->access$500(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_3d

    .line 1185
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$9;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    const v6, 0x7f080006

    invoke-virtual {v5, v6}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1186
    .local v4, str:Ljava/lang/String;
    iget v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$9;->val$count:I

    if-lez v5, :cond_34

    .line 1188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$9;->val$count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1192
    :cond_34
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$9;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->indicatorTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->access$500(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    .end local v4           #str:Ljava/lang/String;
    :cond_3d
    :try_start_3d
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$9;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v5

    if-eqz v5, :cond_68

    .line 1199
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$9;->this$0:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    #getter for: Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->mStateMgr:Lcom/sec/android/socialhub/state/SocialHubStateManager;
    invoke-static {v5}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->access$000(Lcom/sec/android/socialhub/activity/SocialHubMainActivity;)Lcom/sec/android/socialhub/state/SocialHubStateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/socialhub/state/SocialHubStateManager;->getMessageTab()Lcom/sec/android/socialhub/state/tab/MessageTabState;

    move-result-object v0

    .line 1200
    .local v0, current:Lcom/sec/android/socialhub/state/tab/TabState;
    if-eqz v0, :cond_68

    .line 1202
    invoke-virtual {v0}, Lcom/sec/android/socialhub/state/tab/MessageTabState;->getFlipper()Lcom/sec/android/socialhub/flipper/AbsViewFlipper;

    move-result-object v2

    .line 1204
    .local v2, flipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;
    if-eqz v2, :cond_68

    .line 1206
    invoke-virtual {v2}, Lcom/sec/android/socialhub/flipper/AbsViewFlipper;->getGatewayView()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 1208
    .local v3, gateway:Landroid/view/View;
    if-eqz v3, :cond_68

    instance-of v5, v3, Lcom/sec/android/socialhub/badge/IBadgeHandler;

    if-eqz v5, :cond_68

    .line 1210
    check-cast v3, Lcom/sec/android/socialhub/badge/IBadgeHandler;

    .end local v3           #gateway:Landroid/view/View;
    iget v5, p0, Lcom/sec/android/socialhub/activity/SocialHubMainActivity$9;->val$count:I

    invoke-interface {v3, v5}, Lcom/sec/android/socialhub/badge/IBadgeHandler;->updateBadge(I)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_68} :catch_69

    .line 1220
    .end local v0           #current:Lcom/sec/android/socialhub/state/tab/TabState;
    .end local v2           #flipper:Lcom/sec/android/socialhub/flipper/AbsViewFlipper;
    :cond_68
    :goto_68
    return-void

    .line 1216
    :catch_69
    move-exception v1

    .line 1218
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_68
.end method
