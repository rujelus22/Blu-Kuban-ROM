.class Lcom/vlingo/client/settings/SettingsScreen$1;
.super Ljava/lang/Object;
.source "SettingsScreen.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/settings/SettingsScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/settings/SettingsScreen;


# direct methods
.method constructor <init>(Lcom/vlingo/client/settings/SettingsScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/vlingo/client/settings/SettingsScreen$1;->this$0:Lcom/vlingo/client/settings/SettingsScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preference"

    .prologue
    .line 166
    iget-object v3, p0, Lcom/vlingo/client/settings/SettingsScreen$1;->this$0:Lcom/vlingo/client/settings/SettingsScreen;

    #getter for: Lcom/vlingo/client/settings/SettingsScreen;->m_carModeTtsPrompt:Landroid/preference/EditTextPreference;
    invoke-static {v3}, Lcom/vlingo/client/settings/SettingsScreen;->access$000(Lcom/vlingo/client/settings/SettingsScreen;)Landroid/preference/EditTextPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 167
    .local v1, editText:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 168
    .local v2, text:Ljava/lang/CharSequence;
    if-eqz v2, :cond_25

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_25

    .line 169
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x7d0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 170
    .local v0, cursorPos:I
    invoke-virtual {v1, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 171
    const/4 v3, 0x1

    .line 173
    .end local v0           #cursorPos:I
    :goto_24
    return v3

    :cond_25
    const/4 v3, 0x0

    goto :goto_24
.end method
