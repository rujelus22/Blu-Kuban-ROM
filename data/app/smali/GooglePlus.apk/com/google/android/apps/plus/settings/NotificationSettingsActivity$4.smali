.class Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$4;
.super Ljava/lang/Object;
.source "NotificationSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->setupPreferences()V
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
    .line 242
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$4;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$4;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$4;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$4;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/service/EsService;->getNotificationSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Ljava/lang/Integer;

    move-result-object v1

    #setter for: Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->mGetNotificationsRequestId:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->access$002(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$4;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->showDialog(I)V

    .line 248
    const/4 v0, 0x1

    return v0
.end method
