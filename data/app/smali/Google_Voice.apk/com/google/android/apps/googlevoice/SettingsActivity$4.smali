.class Lcom/google/android/apps/googlevoice/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/SettingsActivity;->addPreferenceListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$4;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .parameter "pref"

    .prologue
    .line 354
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 356
    .local v1, vvmEnabled:Z
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$4;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    const-class v3, Lcom/google/android/apps/googlevoice/vvm/service/GvVvmService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 357
    .local v0, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1d

    const-string v2, "com.google.android.apps.googlevoice.vvm.service.START"

    :goto_13
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$4;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 362
    const/4 v2, 0x0

    return v2

    .line 357
    :cond_1d
    const-string v2, "com.google.android.apps.googlevoice.vvm.service.STOP"

    goto :goto_13
.end method
