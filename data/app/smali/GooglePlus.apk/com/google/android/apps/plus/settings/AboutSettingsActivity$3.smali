.class Lcom/google/android/apps/plus/settings/AboutSettingsActivity$3;
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
    .line 93
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$3;->this$0:Lcom/google/android/apps/plus/settings/AboutSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preference"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$3;->this$0:Lcom/google/android/apps/plus/settings/AboutSettingsActivity;

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/Intents;->getLicenseActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    .local v0, licenseIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/AboutSettingsActivity$3;->this$0:Lcom/google/android/apps/plus/settings/AboutSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/settings/AboutSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 100
    const/4 v1, 0x1

    return v1
.end method
