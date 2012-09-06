.class Lcom/google/android/apps/plus/settings/AboutSettingsActivity$5;
.super Ljava/lang/Object;
.source "AboutSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/settings/AboutSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/AboutSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$5;->this$0:Lcom/google/android/apps/plus/settings/AboutSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preference"

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$5;->this$0:Lcom/google/android/apps/plus/settings/AboutSettingsActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 118
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_13

    .line 119
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$5;->this$0:Lcom/google/android/apps/plus/settings/AboutSettingsActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->SETTINGS_TOS:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v1, v0, v2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 122
    :cond_13
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$5;->this$0:Lcom/google/android/apps/plus/settings/AboutSettingsActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->access$100()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->startExternalActivity(Landroid/content/Intent;)V

    .line 123
    const/4 v1, 0x1

    return v1
.end method
