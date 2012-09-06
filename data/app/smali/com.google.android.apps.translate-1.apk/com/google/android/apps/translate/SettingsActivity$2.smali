.class Lcom/google/android/apps/translate/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/SettingsActivity;->setupVoiceInputPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/apps/translate/SettingsActivity$2;->this$0:Lcom/google/android/apps/translate/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preference"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/translate/SettingsActivity$2;->this$0:Lcom/google/android/apps/translate/SettingsActivity;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/apps/translate/SettingsActivity;->showVoiceInputLanguagesListDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/SettingsActivity;->access$100(Lcom/google/android/apps/translate/SettingsActivity;Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x1

    return v0
.end method
