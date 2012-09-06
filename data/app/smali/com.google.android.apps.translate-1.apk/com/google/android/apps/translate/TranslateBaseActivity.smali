.class public Lcom/google/android/apps/translate/TranslateBaseActivity;
.super Landroid/app/Activity;
.source "TranslateBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static afterSetContentView(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 62
    invoke-static {}, Lcom/google/android/apps/translate/Util;->isHoneycombCompatible()Z

    move-result v1

    if-nez v1, :cond_20

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x7

    sget v3, Lcom/google/android/apps/translate/R$layout;->translate_title:I

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 66
    sget v1, Lcom/google/android/apps/translate/R$id;->translate_title:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    .local v0, translateTitleText:Landroid/widget/TextView;
    invoke-static {p0}, Lcom/google/android/apps/translate/TranslateBaseActivity;->getTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .end local v0           #translateTitleText:Landroid/widget/TextView;
    :goto_1f
    return-void

    .line 69
    :cond_20
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->setActionBarTitle(Landroid/app/Activity;Lcom/google/android/apps/translate/ActionBarSpinnerAdapter;)V

    goto :goto_1f
.end method

.method public static beforeSetContentView(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 52
    invoke-static {}, Lcom/google/android/apps/translate/Util;->isHoneycombCompatible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 53
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 55
    :cond_a
    return-void
.end method

.method public static getTitle(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2
    .parameter "activity"

    .prologue
    .line 77
    instance-of v0, p0, Lcom/google/android/apps/translate/SettingsActivity;

    if-eqz v0, :cond_b

    .line 78
    sget v0, Lcom/google/android/apps/translate/R$string;->menu_settings:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_a
    return-object v0

    .line 79
    :cond_b
    instance-of v0, p0, Lcom/google/android/apps/translate/conversation/ConversationActivity;

    if-eqz v0, :cond_16

    .line 80
    sget v0, Lcom/google/android/apps/translate/R$string;->menu_conversation_mode:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 81
    :cond_16
    instance-of v0, p0, Lcom/google/android/apps/translate/history/HistoryActivity;

    if-eqz v0, :cond_31

    move-object v0, p0

    .line 82
    check-cast v0, Lcom/google/android/apps/translate/history/HistoryActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/HistoryActivity;->isHistoryMode()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 83
    sget v0, Lcom/google/android/apps/translate/R$string;->label_history:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 85
    :cond_2a
    sget v0, Lcom/google/android/apps/translate/R$string;->label_favorites:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 87
    :cond_31
    instance-of v0, p0, Lcom/google/android/apps/translate/SmsPickerActivity;

    if-eqz v0, :cond_3c

    .line 88
    sget v0, Lcom/google/android/apps/translate/R$string;->menu_translate_sms:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 89
    :cond_3c
    instance-of v0, p0, Lcom/google/android/apps/translate/HomeActivity;

    if-nez v0, :cond_44

    instance-of v0, p0, Lcom/google/android/apps/translate/translation/TranslateActivity;

    if-eqz v0, :cond_4b

    .line 91
    :cond_44
    sget v0, Lcom/google/android/apps/translate/R$string;->btn_translate:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 93
    :cond_4b
    const-string v0, ""

    goto :goto_a
.end method

.method public static getTitle(Landroid/app/Activity;Landroid/app/Fragment;)Ljava/lang/String;
    .registers 3
    .parameter "activity"
    .parameter "frag"

    .prologue
    .line 100
    if-eqz p0, :cond_3f

    if-eqz p1, :cond_3f

    .line 101
    instance-of v0, p1, Lcom/google/android/apps/translate/conversation/ConversationFragment;

    if-eqz v0, :cond_f

    .line 102
    sget v0, Lcom/google/android/apps/translate/R$string;->menu_conversation_mode:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .end local p1
    :goto_e
    return-object v0

    .line 103
    .restart local p1
    :cond_f
    instance-of v0, p1, Lcom/google/android/apps/translate/history/HistoryFragment;

    if-eqz v0, :cond_29

    .line 104
    check-cast p1, Lcom/google/android/apps/translate/history/HistoryFragment;

    .end local p1
    invoke-virtual {p1}, Lcom/google/android/apps/translate/history/HistoryFragment;->isHistoryMode()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 105
    sget v0, Lcom/google/android/apps/translate/R$string;->label_history:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 107
    :cond_22
    sget v0, Lcom/google/android/apps/translate/R$string;->label_favorites:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 109
    .restart local p1
    :cond_29
    instance-of v0, p1, Lcom/google/android/apps/translate/SmsPickerFragment;

    if-eqz v0, :cond_34

    .line 110
    sget v0, Lcom/google/android/apps/translate/R$string;->menu_translate_sms:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 111
    :cond_34
    instance-of v0, p1, Lcom/google/android/apps/translate/translation/TranslateFragment;

    if-eqz v0, :cond_3f

    .line 112
    sget v0, Lcom/google/android/apps/translate/R$string;->btn_translate:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 115
    :cond_3f
    invoke-static {p0}, Lcom/google/android/apps/translate/TranslateBaseActivity;->getTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 122
    :pswitch_c
    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->openHomeActivity(Landroid/app/Activity;)V

    .line 123
    const/4 v0, 0x1

    goto :goto_b

    .line 120
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public setContentView(I)V
    .registers 2
    .parameter "layoutResID"

    .prologue
    .line 28
    invoke-static {p0}, Lcom/google/android/apps/translate/TranslateBaseActivity;->beforeSetContentView(Landroid/app/Activity;)V

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 30
    invoke-static {p0}, Lcom/google/android/apps/translate/TranslateBaseActivity;->afterSetContentView(Landroid/app/Activity;)V

    .line 31
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/android/apps/translate/TranslateBaseActivity;->beforeSetContentView(Landroid/app/Activity;)V

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 37
    invoke-static {p0}, Lcom/google/android/apps/translate/TranslateBaseActivity;->afterSetContentView(Landroid/app/Activity;)V

    .line 38
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter "view"
    .parameter "params"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/google/android/apps/translate/TranslateBaseActivity;->beforeSetContentView(Landroid/app/Activity;)V

    .line 43
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-static {p0}, Lcom/google/android/apps/translate/TranslateBaseActivity;->afterSetContentView(Landroid/app/Activity;)V

    .line 45
    return-void
.end method
