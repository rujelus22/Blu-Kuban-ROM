.class Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "NotificationSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeNotificationsRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    const v1, 0x7f0800d9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 44
    :cond_1f
    return-void
.end method

.method public onGetNotificationSettings(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "result"
    .parameter "notificationSettings"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mGetNotificationsRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->access$000(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mGetNotificationsRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->access$000(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mGetNotificationsRequestId:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->access$002(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    #setter for: Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mNotificationSettings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;
    invoke-static {v0, p4}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->access$102(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    .line 53
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    if-eqz p4, :cond_45

    const/4 v0, 0x1

    :goto_34
    #setter for: Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mSettingsFromServer:Z
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->access$202(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;Z)Z

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    #calls: Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->setupPreferences()V
    invoke-static {v0}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->access$300(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->dismissDialog(I)V

    .line 57
    :cond_44
    return-void

    .line 53
    :cond_45
    const/4 v0, 0x0

    goto :goto_34
.end method
