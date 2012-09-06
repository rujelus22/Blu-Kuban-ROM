.class Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsStatsSyncPreferenceChangeListener;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsStatsSyncPreferenceChangeListener"
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic this$0:Lcom/google/android/apps/plus/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/SettingsActivity;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter
    .parameter "account"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsStatsSyncPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p2, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsStatsSyncPreferenceChangeListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 301
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 8
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 305
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 306
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsStatsSyncPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/SettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsStatsSyncPreferenceChangeListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsStatsSyncPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 308
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsStatsSyncPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/SettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsStatsSyncPreferenceChangeListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-wide/16 v3, -0x1

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->saveLastContactedTimestamp(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 310
    if-eqz v0, :cond_21

    .line 312
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsStatsSyncPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/SettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsStatsSyncPreferenceChangeListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/service/EsService;->disableWipeoutStats(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    .line 317
    :goto_1f
    const/4 v1, 0x1

    return v1

    .line 315
    :cond_21
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsStatsSyncPreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/SettingsActivity;

    iget-object v2, p0, Lcom/google/android/apps/plus/settings/SettingsActivity$ContactsStatsSyncPreferenceChangeListener;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/service/EsService;->enableAndPerformWipeoutStats(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    goto :goto_1f
.end method
