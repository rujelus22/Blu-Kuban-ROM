.class Lcom/google/android/apps/plus/settings/AboutSettingsActivity$4;
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
    .line 105
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$4;->this$0:Lcom/google/android/apps/plus/settings/AboutSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preference"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$4;->this$0:Lcom/google/android/apps/plus/settings/AboutSettingsActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->access$000()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->startExternalActivity(Landroid/content/Intent;)V

    .line 109
    const/4 v0, 0x1

    return v0
.end method
