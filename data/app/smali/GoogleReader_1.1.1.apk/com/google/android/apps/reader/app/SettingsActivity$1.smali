.class Lcom/google/android/apps/reader/app/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/reader/app/SettingsActivity;->setupSyncPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/app/SettingsActivity;

.field final synthetic val$account:Lcom/google/android/accounts/Account;

.field final synthetic val$preference:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/google/android/apps/reader/app/SettingsActivity;Lcom/google/android/accounts/Account;Landroid/preference/CheckBoxPreference;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/apps/reader/app/SettingsActivity$1;->this$0:Lcom/google/android/apps/reader/app/SettingsActivity;

    iput-object p2, p0, Lcom/google/android/apps/reader/app/SettingsActivity$1;->val$account:Lcom/google/android/accounts/Account;

    iput-object p3, p0, Lcom/google/android/apps/reader/app/SettingsActivity$1;->val$preference:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "p"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SettingsActivity$1;->this$0:Lcom/google/android/apps/reader/app/SettingsActivity;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/SettingsActivity$1;->val$account:Lcom/google/android/accounts/Account;

    iget-object v2, p0, Lcom/google/android/apps/reader/app/SettingsActivity$1;->val$preference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    #calls: Lcom/google/android/apps/reader/app/SettingsActivity;->setSyncAutomatically(Lcom/google/android/accounts/Account;Z)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/reader/app/SettingsActivity;->access$000(Lcom/google/android/apps/reader/app/SettingsActivity;Lcom/google/android/accounts/Account;Z)V

    .line 92
    const/4 v0, 0x1

    return v0
.end method
