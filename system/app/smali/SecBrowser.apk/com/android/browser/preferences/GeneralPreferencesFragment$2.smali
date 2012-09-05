.class Lcom/android/browser/preferences/GeneralPreferencesFragment$2;
.super Ljava/lang/Object;
.source "GeneralPreferencesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/preferences/GeneralPreferencesFragment;->promptForHomepage(Landroid/preference/ListPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$pref:Landroid/preference/ListPreference;

.field final synthetic val$settings:Lcom/android/browser/BrowserSettings;


# direct methods
.method constructor <init>(Lcom/android/browser/preferences/GeneralPreferencesFragment;Landroid/widget/EditText;Lcom/android/browser/BrowserSettings;Landroid/preference/ListPreference;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    iput-object p2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;->val$settings:Lcom/android/browser/BrowserSettings;

    iput-object p4, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;->val$pref:Landroid/preference/ListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, homepage:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;->val$settings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserSettings;->setHomePage(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;->val$pref:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    invoke-virtual {v2}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getHomepageValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;->val$pref:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;->this$0:Lcom/android/browser/preferences/GeneralPreferencesFragment;

    invoke-virtual {v2}, Lcom/android/browser/preferences/GeneralPreferencesFragment;->getHomepageSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/android/browser/preferences/GeneralPreferencesFragment$2;->val$settings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "homepage_picker"

    const-string v3, "other"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    return-void
.end method
