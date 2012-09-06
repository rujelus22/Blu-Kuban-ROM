.class public Lcom/android/email/activity/ShortcutPicker;
.super Landroid/app/Activity;
.source "ShortcutPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setupShortcut(Lcom/android/emailcommon/provider/Account;JLjava/lang/String;)V
    .registers 16
    .parameter "account"
    .parameter "mailboxId"
    .parameter "shortcutName"

    .prologue
    .line 136
    move-object v0, p0

    .line 144
    .local v0, myActivity:Landroid/app/Activity;
    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    const-wide/high16 v3, 0x1000

    cmp-long v1, v1, v3

    if-nez v1, :cond_31

    .line 145
    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    const-wide/16 v5, -0x1

    move-wide v3, p2

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/Welcome;->createOpenMessageIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v9

    .line 154
    .local v9, shortcutIntent:Landroid/content/Intent;
    :goto_12
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v8, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v8, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v8, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const/high16 v1, 0x7f03

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v7

    .line 159
    .local v7, iconResource:Landroid/os/Parcelable;
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v8, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 162
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v8}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 163
    return-void

    .line 148
    .end local v7           #iconResource:Landroid/os/Parcelable;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #shortcutIntent:Landroid/content/Intent;
    :cond_31
    iget-object v10, p1, Lcom/android/emailcommon/provider/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 149
    .local v10, uuid:Ljava/lang/String;
    invoke-static {v0, v10, p2, p3}, Lcom/android/email/activity/Welcome;->createAccountShortcutIntent(Landroid/content/Context;Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v9

    .restart local v9       #shortcutIntent:Landroid/content/Intent;
    goto :goto_12
.end method


# virtual methods
.method public buildFilter(Lcom/android/emailcommon/provider/Account;)Ljava/lang/Integer;
    .registers 4
    .parameter "account"

    .prologue
    .line 81
    iget-wide v0, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/Account;->isNormalAccount(J)Z

    move-result v0

    if-nez v0, :cond_f

    .line 83
    sget v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->FILTER_INBOX_ONLY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 86
    :goto_e
    return-object v0

    :cond_f
    sget v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->FILTER_ALLOW_ALL:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_e
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 77
    :goto_7
    return-void

    .line 74
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPicker;->finish()V

    goto :goto_7

    .line 72
    :pswitch_data_c
    .packed-switch 0x7f0e0001
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const v3, 0x7f0e003f

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 54
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPicker;->finish()V

    .line 68
    :cond_19
    :goto_19
    return-void

    .line 59
    :cond_1a
    const v1, 0x7f040014

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ShortcutPicker;->setContentView(I)V

    .line 60
    const v1, 0x7f0e0001

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ShortcutPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPicker;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_19

    .line 65
    new-instance v0, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;

    invoke-direct {v0}, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;-><init>()V

    .line 66
    .local v0, fragment:Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPicker;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_19
.end method

.method public onMissingData(ZZ)V
    .registers 3
    .parameter "missingAccount"
    .parameter "missingMailbox"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPicker;->finish()V

    .line 106
    return-void
.end method

.method public onSelected(Lcom/android/emailcommon/provider/Account;J)V
    .registers 7
    .parameter "account"
    .parameter "mailboxId"

    .prologue
    .line 92
    iget-wide v1, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v1, v2}, Lcom/android/emailcommon/provider/Account;->isNormalAccount(J)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {p0, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    if-eqz v1, :cond_19

    .line 94
    invoke-static {p0, p2, p3}, Lcom/android/emailcommon/provider/Mailbox;->getDisplayName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, shortcutName:Ljava/lang/String;
    :goto_12
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/email/activity/ShortcutPicker;->setupShortcut(Lcom/android/emailcommon/provider/Account;JLjava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPicker;->finish()V

    .line 100
    return-void

    .line 96
    .end local v0           #shortcutName:Ljava/lang/String;
    :cond_19
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #shortcutName:Ljava/lang/String;
    goto :goto_12
.end method
