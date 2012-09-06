.class Lcom/google/android/apps/reader/app/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/reader/app/SettingsActivity;->setupReaderPreference(Lcom/google/android/apps/reader/preference/ReaderPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/app/SettingsActivity;

.field final synthetic val$pref:Lcom/google/android/apps/reader/preference/ReaderPreference;

.field final synthetic val$preference:Landroid/preference/CheckBoxPreference;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/google/android/apps/reader/app/SettingsActivity;Lcom/google/android/apps/reader/preference/ReaderPreference;Landroid/content/SharedPreferences;Landroid/preference/CheckBoxPreference;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/apps/reader/app/SettingsActivity$2;->this$0:Lcom/google/android/apps/reader/app/SettingsActivity;

    iput-object p2, p0, Lcom/google/android/apps/reader/app/SettingsActivity$2;->val$pref:Lcom/google/android/apps/reader/preference/ReaderPreference;

    iput-object p3, p0, Lcom/google/android/apps/reader/app/SettingsActivity$2;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p4, p0, Lcom/google/android/apps/reader/app/SettingsActivity$2;->val$preference:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SettingsActivity$2;->val$pref:Lcom/google/android/apps/reader/preference/ReaderPreference;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/SettingsActivity$2;->val$preferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/google/android/apps/reader/app/SettingsActivity$2;->val$preference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/reader/preference/ReaderPreference;->putBoolean(Landroid/content/SharedPreferences;Z)Z

    .line 113
    const/4 v0, 0x1

    return v0
.end method
