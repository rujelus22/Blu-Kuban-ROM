.class Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$5;
.super Landroid/os/AsyncTask;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;

.field final synthetic val$wifiOnly:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;Ljava/lang/Boolean;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$5;->this$1:Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$5;->val$wifiOnly:Ljava/lang/Boolean;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 696
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter "params"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$5;->this$1:Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$PhotoPreferenceChangeListener$5;->val$wifiOnly:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/InstantUpload;->setVideoWiFiOnlySetting(Landroid/content/Context;Z)V

    .line 700
    const/4 v0, 0x0

    return-object v0
.end method
