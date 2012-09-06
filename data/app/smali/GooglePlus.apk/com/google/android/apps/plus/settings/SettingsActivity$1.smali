.class Lcom/google/android/apps/plus/settings/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/settings/SettingsActivity;->checkInstantUploadSyncCapability()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/SettingsActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SYNC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 185
    const/4 v0, 0x1

    return v0
.end method
