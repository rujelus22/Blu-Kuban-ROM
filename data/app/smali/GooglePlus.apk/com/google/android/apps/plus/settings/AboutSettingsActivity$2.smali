.class Lcom/google/android/apps/plus/settings/AboutSettingsActivity$2;
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

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/AboutSettingsActivity;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$2;->this$0:Lcom/google/android/apps/plus/settings/AboutSettingsActivity;

    iput-object p2, p0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    .line 83
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$2;->this$0:Lcom/google/android/apps/plus/settings/AboutSettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$2;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getNetworkStatisticsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, netStatsIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$2;->this$0:Lcom/google/android/apps/plus/settings/AboutSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    const/4 v1, 0x1

    return v1
.end method
