.class Lcom/google/android/apps/plus/phone/SettingsActivity$5;
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
    .line 309
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$5;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preference"

    .prologue
    .line 312
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$5;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/Intents;->getLicenseActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 314
    .local v0, licenseIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$5;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 316
    const/4 v1, 0x1

    return v1
.end method
