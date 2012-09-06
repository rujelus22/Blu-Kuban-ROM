.class Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$2;
.super Ljava/lang/Object;
.source "InstantUploadSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$2;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$2;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mIsUploading:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$000(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$2;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->showDialog(I)V

    .line 168
    :goto_f
    const/4 v0, 0x1

    return v0

    .line 162
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$2;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #setter for: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mIsUploading:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$002(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;Z)Z

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$2;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$2;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$100(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$2;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$2;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    #calls: Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getUploadUriWithAccount()Landroid/net/Uri;
    invoke-static {v1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->access$400(Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$2;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    const v1, 0x7f0800f1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity$2;->this$0:Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/settings/InstantUploadSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method
