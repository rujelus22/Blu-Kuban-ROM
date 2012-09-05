.class public Lcom/infraware/common/account/AddAccount;
.super Landroid/app/ListActivity;
.source "AddAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/account/AddAccount$AccountAdapter;,
        Lcom/infraware/common/account/AddAccount$AccountListItem;,
        Lcom/infraware/common/account/AddAccount$CloseReceiver;
    }
.end annotation


# static fields
.field private static final DIALOG_ADD_BOXNET:I = 0xc8

.field private static final DIALOG_ADD_GOOGLE:I = 0x64


# instance fields
.field private mAddAccountDialog:Landroid/app/AlertDialog;

.field private mButtonBar:Landroid/widget/LinearLayout;

.field private mCloseReceiver:Lcom/infraware/common/account/AddAccount$CloseReceiver;

.field private mPopupDialog:Landroid/app/AlertDialog;

.field private m_nLocaleCode:I

.field private m_nOrientation:I

.field private m_oTitle:Landroid/widget/TextView;

.field private m_oToastMsg:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/infraware/common/account/AddAccount;->mButtonBar:Landroid/widget/LinearLayout;

    .line 48
    iput-object v0, p0, Lcom/infraware/common/account/AddAccount;->mPopupDialog:Landroid/app/AlertDialog;

    .line 49
    iput-object v0, p0, Lcom/infraware/common/account/AddAccount;->mAddAccountDialog:Landroid/app/AlertDialog;

    .line 54
    iput v1, p0, Lcom/infraware/common/account/AddAccount;->m_nOrientation:I

    .line 55
    iput v1, p0, Lcom/infraware/common/account/AddAccount;->m_nLocaleCode:I

    .line 57
    iput-object v0, p0, Lcom/infraware/common/account/AddAccount;->m_oToastMsg:Landroid/widget/Toast;

    .line 59
    iput-object v0, p0, Lcom/infraware/common/account/AddAccount;->m_oTitle:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/common/account/AddAccount;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/infraware/common/account/AddAccount;->mPopupDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/common/account/AddAccount;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infraware/common/account/AddAccount;->mAddAccountDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private setAccountList()V
    .registers 11

    .prologue
    .line 88
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/infraware/common/account/AddAccount;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 89
    .local v4, inflater:Landroid/view/LayoutInflater;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, SrcListItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/common/account/AddAccount$AccountListItem;>;"
    new-instance v3, Lcom/infraware/common/account/AccountInfo;

    const/4 v6, 0x1

    const/4 v7, 0x2

    const-string v8, "Box.net"

    const-string v9, ""

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/infraware/common/account/AccountInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v3, boxnetInfo:Lcom/infraware/common/account/AccountInfo;
    new-instance v2, Lcom/infraware/common/account/AccountPreference;

    invoke-direct {v2, p0, v3}, Lcom/infraware/common/account/AccountPreference;-><init>(Landroid/content/Context;Lcom/infraware/common/account/AccountInfo;)V

    .line 103
    .local v2, boxnetAccount:Lcom/infraware/common/account/AccountPreference;
    new-instance v5, Lcom/infraware/common/account/AddAccount$AccountListItem;

    const-string v6, "Box.net"

    const v7, 0x7f0200ad

    invoke-direct {v5, p0, v6, v7}, Lcom/infraware/common/account/AddAccount$AccountListItem;-><init>(Lcom/infraware/common/account/AddAccount;Ljava/lang/String;I)V

    .line 104
    .local v5, item:Lcom/infraware/common/account/AddAccount$AccountListItem;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lcom/infraware/common/account/AddAccount$AccountAdapter;

    invoke-direct {v1, p0, p0, v0}, Lcom/infraware/common/account/AddAccount$AccountAdapter;-><init>(Lcom/infraware/common/account/AddAccount;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 107
    .local v1, adapter:Lcom/infraware/common/account/AddAccount$AccountAdapter;
    invoke-virtual {p0, v1}, Lcom/infraware/common/account/AddAccount;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 137
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 139
    sparse-switch p1, :sswitch_data_18

    .line 150
    :cond_7
    :goto_7
    return-void

    .line 142
    :sswitch_8
    if-ne p2, v2, :cond_7

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, result:Landroid/content/Intent;
    invoke-virtual {p0, v2, v0}, Lcom/infraware/common/account/AddAccount;->setResult(ILandroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lcom/infraware/common/account/AddAccount;->finish()V

    goto :goto_7

    .line 139
    :sswitch_data_18
    .sparse-switch
        0x64 -> :sswitch_8
        0xc8 -> :sswitch_8
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "_newConfig"

    .prologue
    .line 182
    iget v1, p0, Lcom/infraware/common/account/AddAccount;->m_nOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_13

    .line 183
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/infraware/common/account/AddAccount;->m_nOrientation:I

    .line 184
    invoke-virtual {p0}, Lcom/infraware/common/account/AddAccount;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lcom/infraware/common/account/AddAccount;->m_nOrientation:I

    invoke-static {v1, v2}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 187
    :cond_13
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v0

    .line 188
    .local v0, nlocale:I
    iget v1, p0, Lcom/infraware/common/account/AddAccount;->m_nLocaleCode:I

    if-eq v1, v0, :cond_67

    .line 189
    iput v0, p0, Lcom/infraware/common/account/AddAccount;->m_nLocaleCode:I

    .line 191
    const v1, 0x7f080031

    invoke-virtual {p0, v1}, Lcom/infraware/common/account/AddAccount;->setTitle(I)V

    .line 193
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount;->m_oTitle:Landroid/widget/TextView;

    const v2, 0x7f080037

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 196
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount;->mAddAccountDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_67

    .line 197
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount;->mAddAccountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 198
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount;->mAddAccountDialog:Landroid/app/AlertDialog;

    const v2, 0x7f08003a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 199
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount;->mAddAccountDialog:Landroid/app/AlertDialog;

    .line 200
    const v2, 0x7f08005a

    invoke-virtual {p0, v2}, Lcom/infraware/common/account/AddAccount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount;->mAddAccountDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 202
    const v2, 0x7f080043

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 203
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount;->mAddAccountDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 204
    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 208
    :cond_67
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 209
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f03000e

    invoke-virtual {p0, v1}, Lcom/infraware/common/account/AddAccount;->setContentView(I)V

    .line 66
    const v1, 0x7f0c0065

    invoke-virtual {p0, v1}, Lcom/infraware/common/account/AddAccount;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/infraware/common/account/AddAccount;->m_oTitle:Landroid/widget/TextView;

    .line 67
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount;->m_oTitle:Landroid/widget/TextView;

    const v2, 0x7f080037

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v0, closeFilter:Landroid/content/IntentFilter;
    const-string v1, "com.infraware.polarisoffice.CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcom/infraware/common/account/AddAccount$CloseReceiver;

    invoke-direct {v1, p0}, Lcom/infraware/common/account/AddAccount$CloseReceiver;-><init>(Lcom/infraware/common/account/AddAccount;)V

    iput-object v1, p0, Lcom/infraware/common/account/AddAccount;->mCloseReceiver:Lcom/infraware/common/account/AddAccount$CloseReceiver;

    .line 73
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount;->mCloseReceiver:Lcom/infraware/common/account/AddAccount$CloseReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/infraware/common/account/AddAccount;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    invoke-direct {p0}, Lcom/infraware/common/account/AddAccount;->setAccountList()V

    .line 77
    const v1, 0x7f0c0066

    invoke-virtual {p0, v1}, Lcom/infraware/common/account/AddAccount;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/infraware/common/account/AddAccount;->mButtonBar:Landroid/widget/LinearLayout;

    .line 78
    iget-object v1, p0, Lcom/infraware/common/account/AddAccount;->mButtonBar:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    invoke-virtual {p0}, Lcom/infraware/common/account/AddAccount;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/infraware/common/account/AddAccount;->m_nLocaleCode:I

    .line 81
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/infraware/common/account/AddAccount;->m_nOrientation:I

    .line 82
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 83
    invoke-virtual {p0}, Lcom/infraware/common/account/AddAccount;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lcom/infraware/common/account/AddAccount;->m_nOrientation:I

    invoke-static {v1, v2}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 84
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/infraware/common/account/AddAccount;->mCloseReceiver:Lcom/infraware/common/account/AddAccount$CloseReceiver;

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/AddAccount;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 157
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 118
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/common/account/AddAccount$AccountListItem;

    .line 120
    .local v1, item:Lcom/infraware/common/account/AddAccount$AccountListItem;
    invoke-virtual {v1}, Lcom/infraware/common/account/AddAccount$AccountListItem;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Google docs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/infraware/common/account/AddAccountEdit;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "key_account_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Lcom/infraware/common/account/AddAccount;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
    :goto_24
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 134
    return-void

    .line 128
    .end local v0           #intent:Landroid/content/Intent;
    :cond_28
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/infraware/common/account/AddAccountEdit;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "key_account_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const/16 v2, 0xc8

    invoke-virtual {p0, v0, v2}, Lcom/infraware/common/account/AddAccount;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_24
.end method

.method public onToastMessage(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/infraware/common/account/AddAccount;->m_oToastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_11

    .line 214
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/account/AddAccount;->m_oToastMsg:Landroid/widget/Toast;

    .line 218
    :goto_b
    iget-object v0, p0, Lcom/infraware/common/account/AddAccount;->m_oToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    return-void

    .line 216
    :cond_11
    iget-object v0, p0, Lcom/infraware/common/account/AddAccount;->m_oToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b
.end method
