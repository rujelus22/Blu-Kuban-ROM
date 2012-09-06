.class Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;->esLoadInBackground()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;

.field final synthetic val$instantUploadEnabled:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader$1;->this$1:Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;

    iput-boolean p2, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader$1;->val$instantUploadEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 252
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader$1;->this$1:Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;

    iget-object v1, v1, Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;->this$0:Lcom/google/android/apps/plus/settings/SettingsActivity;

    invoke-static {}, Lcom/google/android/apps/plus/settings/SettingsActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/settings/LabelPreference;

    .line 254
    .local v0, pref:Lcom/google/android/apps/plus/settings/LabelPreference;
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader$1;->this$1:Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;

    iget-object v1, v1, Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader;->this$0:Lcom/google/android/apps/plus/settings/SettingsActivity;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$InstantUploadSettingsLoader$1;->val$instantUploadEnabled:Z

    #calls: Lcom/google/android/apps/plus/settings/SettingsActivity;->setOnOffLabel(Lcom/google/android/apps/plus/settings/LabelPreference;Z)V
    invoke-static {v1, v0, v2}, Lcom/google/android/apps/plus/settings/SettingsActivity;->access$100(Lcom/google/android/apps/plus/settings/SettingsActivity;Lcom/google/android/apps/plus/settings/LabelPreference;Z)V

    .line 255
    return-void
.end method
