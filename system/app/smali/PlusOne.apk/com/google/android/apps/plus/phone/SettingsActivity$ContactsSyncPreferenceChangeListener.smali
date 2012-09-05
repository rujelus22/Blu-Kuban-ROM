.class Lcom/google/android/apps/plus/phone/SettingsActivity$ContactsSyncPreferenceChangeListener;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactsSyncPreferenceChangeListener"
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/SettingsActivity;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter
    .parameter "account"

    .prologue
    .line 715
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$ContactsSyncPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$ContactsSyncPreferenceChangeListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 717
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 721
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 722
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$ContactsSyncPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$ContactsSyncPreferenceChangeListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->isContactsSyncEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-eq v1, v0, :cond_1d

    .line 723
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$ContactsSyncPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$ContactsSyncPreferenceChangeListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsSyncPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 727
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$ContactsSyncPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->requestSync(Landroid/content/Context;Z)V

    .line 729
    :cond_1d
    return v3
.end method
