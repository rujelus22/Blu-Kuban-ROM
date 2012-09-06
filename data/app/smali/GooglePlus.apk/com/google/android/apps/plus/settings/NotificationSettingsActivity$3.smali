.class Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$3;
.super Ljava/lang/Object;
.source "NotificationSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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

.field final synthetic val$setting:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$3;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    iput-object p2, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$3;->val$setting:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 219
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    move-result-object v1

    .line 221
    .local v1, newSettings:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;
    iget-object v2, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$3;->val$setting:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;->setEnabled(Z)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;

    move-result-object v0

    .line 223
    .local v0, newSetting:Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;->addSettings(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Setting$Builder;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->addCategories(Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Category$Builder;)Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;

    .line 225
    iget-object v2, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$3;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    iget-object v3, p0, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity$3;->this$0:Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/settings/NotificationSettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->changeNotificationSettings(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$NotificationSettings;)Ljava/lang/Integer;

    .line 227
    const/4 v2, 0x1

    return v2
.end method
