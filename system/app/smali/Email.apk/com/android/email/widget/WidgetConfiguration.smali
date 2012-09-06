.class public Lcom/android/email/widget/WidgetConfiguration;
.super Landroid/app/Activity;
.source "WidgetConfiguration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;


# instance fields
.field private mAppWidgetId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setupWidget(Lcom/android/emailcommon/provider/Account;J)V
    .registers 11
    .parameter "account"
    .parameter "mailboxId"

    .prologue
    .line 117
    iget v1, p0, Lcom/android/email/widget/WidgetConfiguration;->mAppWidgetId:I

    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    move-object v0, p0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/email/widget/WidgetManager;->saveWidgetPrefs(Landroid/content/Context;IJJ)V

    .line 118
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/android/email/widget/WidgetConfiguration;->mAppWidgetId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/email/widget/WidgetManager;->getOrCreateWidget(Landroid/content/Context;I)Lcom/android/email/widget/EmailWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/widget/EmailWidget;->start()V

    .line 121
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v6, resultValue:Landroid/content/Intent;
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/android/email/widget/WidgetConfiguration;->mAppWidgetId:I

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v6}, Lcom/android/email/widget/WidgetConfiguration;->setResult(ILandroid/content/Intent;)V

    .line 124
    return-void
.end method


# virtual methods
.method public buildFilter(Lcom/android/emailcommon/provider/Account;)Ljava/lang/Integer;
    .registers 4
    .parameter "account"

    .prologue
    .line 88
    iget-wide v0, p1, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/Account;->isNormalAccount(J)Z

    move-result v0

    if-nez v0, :cond_12

    .line 89
    sget v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->FILTER_INBOX_ONLY:I

    sget v1, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->FILTER_ALLOW_UNREAD:I

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 95
    :goto_11
    return-object v0

    :cond_12
    const-string v0, "eas"

    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->FILTER_ALLOW_ALL:I

    :goto_20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_11

    :cond_25
    sget v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->FILTER_INBOX_ONLY:I

    goto :goto_20
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 84
    :goto_7
    return-void

    .line 81
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/email/widget/WidgetConfiguration;->finish()V

    goto :goto_7

    .line 79
    :pswitch_data_c
    .packed-switch 0x7f0e0001
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f0e003f

    const/4 v5, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0, v5}, Lcom/android/email/widget/WidgetConfiguration;->setResult(I)V

    .line 48
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_15

    .line 49
    const-string v3, "Email"

    const-string v4, "WidgetConfiguration initiated"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_15
    const-string v3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-virtual {p0}, Lcom/android/email/widget/WidgetConfiguration;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 53
    invoke-virtual {p0}, Lcom/android/email/widget/WidgetConfiguration;->finish()V

    .line 75
    :cond_28
    :goto_28
    return-void

    .line 57
    :cond_29
    invoke-virtual {p0}, Lcom/android/email/widget/WidgetConfiguration;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 58
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_3b

    .line 60
    const-string v3, "appWidgetId"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/email/widget/WidgetConfiguration;->mAppWidgetId:I

    .line 66
    :cond_3b
    const v3, 0x7f040014

    invoke-virtual {p0, v3}, Lcom/android/email/widget/WidgetConfiguration;->setContentView(I)V

    .line 67
    const v3, 0x7f0e0001

    invoke-virtual {p0, v3}, Lcom/android/email/widget/WidgetConfiguration;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/email/widget/WidgetConfiguration;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_28

    .line 72
    new-instance v1, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;

    invoke-direct {v1}, Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;-><init>()V

    .line 73
    .local v1, fragment:Lcom/android/email/activity/ShortcutPickerFragment$AccountShortcutPickerFragment;
    invoke-virtual {p0}, Lcom/android/email/widget/WidgetConfiguration;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_28
.end method

.method public onMissingData(ZZ)V
    .registers 5
    .parameter "missingAccount"
    .parameter "missingMailbox"

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 109
    const-string v0, "Email"

    const-string v1, "WidgetConfiguration exited abnormally. Probably no accounts."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_b
    const v0, 0x7f080188

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/email/widget/WidgetConfiguration;->finish()V

    .line 113
    return-void
.end method

.method public onSelected(Lcom/android/emailcommon/provider/Account;J)V
    .registers 4
    .parameter "account"
    .parameter "mailboxId"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/widget/WidgetConfiguration;->setupWidget(Lcom/android/emailcommon/provider/Account;J)V

    .line 103
    invoke-virtual {p0}, Lcom/android/email/widget/WidgetConfiguration;->finish()V

    .line 104
    return-void
.end method
