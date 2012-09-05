.class Lcom/google/android/apps/plus/phone/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$3;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$3;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mIsUploading:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$000(Lcom/google/android/apps/plus/phone/SettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$3;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->showDialog(I)V

    .line 293
    :goto_f
    const/4 v0, 0x1

    return v0

    .line 287
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$3;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mIsUploading:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$002(Lcom/google/android/apps/plus/phone/SettingsActivity;Z)Z

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$3;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$3;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mUploadsProgressReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$100(Lcom/google/android/apps/plus/phone/SettingsActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$3;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$3;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #calls: Lcom/google/android/apps/plus/phone/SettingsActivity;->getUploadUriWithAccount()Landroid/net/Uri;
    invoke-static {v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$600(Lcom/google/android/apps/plus/phone/SettingsActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$3;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const v1, 0x7f0700b5

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$3;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    const v1, 0x7f0700b7

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method
