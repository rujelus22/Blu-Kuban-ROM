.class public Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;
.super Lcom/coremobility/integration/app/CM_PreferenceForm;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private a:Landroid/preference/CheckBoxPreference;

.field private b:Lcom/coremobility/app/customui/CM_NotificationDialogPreference;

.field private c:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    const/4 v8, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_82

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07000b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v0, v4, v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f07000c

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    move v0, v1

    :goto_2e
    array-length v7, v4

    if-ge v0, v7, :cond_5f

    aget-object v7, v4, v0

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    aget v0, v6, v0

    :goto_3b
    if-eq v0, v2, :cond_61

    move v2, v0

    :goto_3e
    if-ne v2, v8, :cond_67

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->m()Ljava/util/Vector;

    move-result-object v4

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->n()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    move v0, v1

    :goto_4d
    if-ge v0, v6, :cond_64

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_5f
    move v0, v2

    goto :goto_3b

    :cond_61
    const/4 v0, 0x2

    move v2, v0

    goto :goto_3e

    :cond_64
    invoke-static {v1, v8, v1}, Lcom/coremobility/app/vnotes/cf;->a(ZZZ)V

    :cond_67
    invoke-static {p0, v2}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->b:Lcom/coremobility/app/customui/CM_NotificationDialogPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->b:Lcom/coremobility/app/customui/CM_NotificationDialogPreference;

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_NotificationDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    nop

    :pswitch_data_82
    .packed-switch -0x1
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_70

    :cond_b
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->addPreferencesFromResource(I)V

    const-string v0, "preference_vtt_notification_mode"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_NotificationDialogPreference;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->b:Lcom/coremobility/app/customui/CM_NotificationDialogPreference;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->b:Lcom/coremobility/app/customui/CM_NotificationDialogPreference;

    if-eqz v0, :cond_57

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->g(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    const/4 v0, 0x0

    :goto_2f
    array-length v3, v2

    if-ge v0, v3, :cond_6e

    aget v3, v2, v0

    if-ne v3, v1, :cond_6b

    :goto_36
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->b:Lcom/coremobility/app/customui/CM_NotificationDialogPreference;

    invoke-virtual {v1, p0}, Lcom/coremobility/app/customui/CM_NotificationDialogPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->b:Lcom/coremobility/app/customui/CM_NotificationDialogPreference;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/customui/CM_NotificationDialogPreference;->a(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->b:Lcom/coremobility/app/customui/CM_NotificationDialogPreference;

    invoke-virtual {v1, p0}, Lcom/coremobility/app/customui/CM_NotificationDialogPreference;->a(Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->b:Lcom/coremobility/app/customui/CM_NotificationDialogPreference;

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/coremobility/app/customui/CM_NotificationDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_57
    :goto_57
    const-string v0, "preference_vibration"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->a:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->a:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_6a
    return-void

    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_6e
    const/4 v0, -0x1

    goto :goto_36

    :cond_70
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->addPreferencesFromResource(I)V

    const-string v0, "preference_voicemail_notify"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->c:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->c:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_57
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onPause()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->c:Landroid/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1e

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteNotificationSettingsForm;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_18

    move v0, v1

    :goto_f
    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;I)V

    if-eqz v3, :cond_1a

    invoke-static {v2, v1, v2}, Lcom/coremobility/app/vnotes/cf;->a(ZZZ)V

    :goto_17
    return v1

    :cond_18
    move v0, v2

    goto :goto_f

    :cond_1a
    invoke-static {v1}, Lcom/coremobility/app/vnotes/cf;->c(I)V

    goto :goto_17

    :cond_1e
    move v1, v2

    goto :goto_17
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_PreferenceForm;->onResume()V

    return-void
.end method
