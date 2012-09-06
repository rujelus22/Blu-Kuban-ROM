.class Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$1;
.super Landroid/os/AsyncTask;
.source "InstantUploadSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
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
.field final synthetic this$1:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$boolValue:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Boolean;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$1;->this$1:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;

    iput-object p2, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$1;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iput-object p3, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$1;->val$boolValue:Ljava/lang/Boolean;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 360
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5
    .parameter "params"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$1;->this$1:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;

    iget-object v0, v0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$1;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$PhotoPreferenceChangeListener$1;->val$boolValue:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/phone/InstantUpload;->enableInstantUpload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 365
    const/4 v0, 0x0

    return-object v0
.end method
