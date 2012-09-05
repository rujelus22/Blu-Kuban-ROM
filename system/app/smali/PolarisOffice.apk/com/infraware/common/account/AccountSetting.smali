.class public Lcom/infraware/common/account/AccountSetting;
.super Landroid/app/ListActivity;
.source "AccountSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;,
        Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;,
        Lcom/infraware/common/account/AccountSetting$CloseReceiver;
    }
.end annotation


# static fields
.field private static final DIALOG_ADD_ACCOUNT:I = 0xc8

.field private static final DIALOG_EDIT_ACCOUNT:I = 0x64

.field private static final YES_NO_POPUP_MSG:I = 0x190


# instance fields
.field private mAddAccountDialog:Landroid/app/AlertDialog;

.field private mAddBtn:Landroid/widget/Button;

.field private mCloseReceiver:Lcom/infraware/common/account/AccountSetting$CloseReceiver;

.field private mPopupDialog:Landroid/app/AlertDialog;

.field private m_Accounts:Lcom/infraware/common/account/ListAccountInfo;

.field private m_nLocaleCode:I

.field private m_nOrientation:I

.field private m_oSelectItem:Lcom/infraware/common/account/AccountInfo;

.field private m_oTitle:Landroid/widget/TextView;

.field private m_oToastMsg:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/infraware/common/account/AccountSetting;->m_Accounts:Lcom/infraware/common/account/ListAccountInfo;

    .line 42
    iput-object v0, p0, Lcom/infraware/common/account/AccountSetting;->mAddBtn:Landroid/widget/Button;

    .line 44
    iput-object v0, p0, Lcom/infraware/common/account/AccountSetting;->mPopupDialog:Landroid/app/AlertDialog;

    .line 45
    iput-object v0, p0, Lcom/infraware/common/account/AccountSetting;->mAddAccountDialog:Landroid/app/AlertDialog;

    .line 49
    iput-object v0, p0, Lcom/infraware/common/account/AccountSetting;->m_oTitle:Landroid/widget/TextView;

    .line 52
    iput v1, p0, Lcom/infraware/common/account/AccountSetting;->m_nOrientation:I

    .line 53
    iput v1, p0, Lcom/infraware/common/account/AccountSetting;->m_nLocaleCode:I

    .line 55
    iput-object v0, p0, Lcom/infraware/common/account/AccountSetting;->m_oToastMsg:Landroid/widget/Toast;

    .line 57
    iput-object v0, p0, Lcom/infraware/common/account/AccountSetting;->m_oSelectItem:Lcom/infraware/common/account/AccountInfo;

    .line 34
    return-void
.end method

.method private AddAccountOpen()V
    .registers 3

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/common/account/AddAccount;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/infraware/common/account/AccountSetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 109
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/common/account/AccountSetting;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting;->mPopupDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/common/account/AccountSetting;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting;->mAddAccountDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/common/account/AccountSetting;)V
    .registers 1
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/infraware/common/account/AccountSetting;->AddAccountOpen()V

    return-void
.end method

.method private setManageAccounts()I
    .registers 10

    .prologue
    .line 113
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/infraware/common/account/AccountSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 114
    .local v4, inflater:Landroid/view/LayoutInflater;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, SrcListItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;>;"
    iget-object v8, p0, Lcom/infraware/common/account/AccountSetting;->m_Accounts:Lcom/infraware/common/account/ListAccountInfo;

    invoke-virtual {v8}, Lcom/infraware/common/account/ListAccountInfo;->getAccountValue()Ljava/util/List;

    move-result-object v1

    .line 117
    .local v1, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/common/account/AccountInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 119
    .local v6, nCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_18
    if-lt v3, v6, :cond_3d

    .line 126
    new-instance v2, Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;

    invoke-direct {v2, p0, p0, v0}, Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;-><init>(Lcom/infraware/common/account/AccountSetting;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 127
    .local v2, adapter:Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;
    invoke-virtual {p0, v2}, Lcom/infraware/common/account/AccountSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    if-nez v6, :cond_3c

    .line 130
    const v8, 0x7f08030e

    invoke-virtual {p0, v8}, Lcom/infraware/common/account/AccountSetting;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, strVendor:Ljava/lang/String;
    const-string v8, "- FV09"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3c

    .line 132
    const/16 v8, 0x190

    invoke-virtual {p0, v8}, Lcom/infraware/common/account/AccountSetting;->showDialog(I)V

    .line 135
    .end local v7           #strVendor:Ljava/lang/String;
    :cond_3c
    return v6

    .line 122
    .end local v2           #adapter:Lcom/infraware/common/account/AccountSetting$AccountInfoAdapter;
    :cond_3d
    new-instance v5, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/infraware/common/account/AccountInfo;

    invoke-direct {v5, p0, v8}, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;-><init>(Lcom/infraware/common/account/AccountSetting;Lcom/infraware/common/account/AccountInfo;)V

    .line 123
    .local v5, item:Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_18
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 154
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 156
    sparse-switch p1, :sswitch_data_48

    .line 182
    :cond_7
    :goto_7
    return-void

    .line 158
    :sswitch_8
    if-ne p2, v4, :cond_7

    .line 159
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 161
    .local v2, bundle:Landroid/os/Bundle;
    const-string v4, "DeleteAccount"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 162
    .local v1, bDeleteAccount:Z
    const-string v4, "ChangePassword"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 163
    .local v0, bChangepassword:Z
    const-string v4, "Password"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, password:Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 166
    iget-object v4, p0, Lcom/infraware/common/account/AccountSetting;->m_Accounts:Lcom/infraware/common/account/ListAccountInfo;

    iget-object v5, p0, Lcom/infraware/common/account/AccountSetting;->m_oSelectItem:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v5}, Lcom/infraware/common/account/AccountInfo;->getIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/infraware/common/account/ListAccountInfo;->deleteAccount(I)Z

    .line 167
    invoke-direct {p0}, Lcom/infraware/common/account/AccountSetting;->setManageAccounts()I

    goto :goto_7

    .line 171
    :cond_33
    if-eqz v0, :cond_7

    .line 172
    iget-object v4, p0, Lcom/infraware/common/account/AccountSetting;->m_Accounts:Lcom/infraware/common/account/ListAccountInfo;

    iget-object v5, p0, Lcom/infraware/common/account/AccountSetting;->m_oSelectItem:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v5}, Lcom/infraware/common/account/AccountInfo;->getIndex()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/infraware/common/account/ListAccountInfo;->editAccountPassword(ILjava/lang/String;)Z

    goto :goto_7

    .line 177
    .end local v0           #bChangepassword:Z
    .end local v1           #bDeleteAccount:Z
    .end local v2           #bundle:Landroid/os/Bundle;
    .end local v3           #password:Ljava/lang/String;
    :sswitch_41
    if-ne p2, v4, :cond_7

    .line 178
    invoke-direct {p0}, Lcom/infraware/common/account/AccountSetting;->setManageAccounts()I

    goto :goto_7

    .line 156
    nop

    :sswitch_data_48
    .sparse-switch
        0x64 -> :sswitch_8
        0xc8 -> :sswitch_41
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "_newConfig"

    .prologue
    .line 276
    iget v1, p0, Lcom/infraware/common/account/AccountSetting;->m_nOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_13

    .line 277
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/infraware/common/account/AccountSetting;->m_nOrientation:I

    .line 278
    invoke-virtual {p0}, Lcom/infraware/common/account/AccountSetting;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lcom/infraware/common/account/AccountSetting;->m_nOrientation:I

    invoke-static {v1, v2}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 281
    :cond_13
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v0

    .line 282
    .local v0, nlocale:I
    iget v1, p0, Lcom/infraware/common/account/AccountSetting;->m_nLocaleCode:I

    if-eq v1, v0, :cond_6f

    .line 283
    iput v0, p0, Lcom/infraware/common/account/AccountSetting;->m_nLocaleCode:I

    .line 285
    const v1, 0x7f080031

    invoke-virtual {p0, v1}, Lcom/infraware/common/account/AccountSetting;->setTitle(I)V

    .line 287
    iget-object v1, p0, Lcom/infraware/common/account/AccountSetting;->m_oTitle:Landroid/widget/TextView;

    const v2, 0x7f080032

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 290
    iget-object v1, p0, Lcom/infraware/common/account/AccountSetting;->mAddBtn:Landroid/widget/Button;

    const v2, 0x7f080033

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 292
    iget-object v1, p0, Lcom/infraware/common/account/AccountSetting;->mAddAccountDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_6f

    .line 293
    iget-object v1, p0, Lcom/infraware/common/account/AccountSetting;->mAddAccountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 294
    iget-object v1, p0, Lcom/infraware/common/account/AccountSetting;->mAddAccountDialog:Landroid/app/AlertDialog;

    const v2, 0x7f08003a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 295
    iget-object v1, p0, Lcom/infraware/common/account/AccountSetting;->mAddAccountDialog:Landroid/app/AlertDialog;

    .line 296
    const v2, 0x7f08005a

    invoke-virtual {p0, v2}, Lcom/infraware/common/account/AccountSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v1, p0, Lcom/infraware/common/account/AccountSetting;->mAddAccountDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 298
    const v2, 0x7f080046

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 299
    iget-object v1, p0, Lcom/infraware/common/account/AccountSetting;->mAddAccountDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 300
    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 304
    :cond_6f
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 305
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v3, 0x7f03000e

    invoke-virtual {p0, v3}, Lcom/infraware/common/account/AccountSetting;->setContentView(I)V

    .line 63
    const v3, 0x7f0c0065

    invoke-virtual {p0, v3}, Lcom/infraware/common/account/AccountSetting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/infraware/common/account/AccountSetting;->m_oTitle:Landroid/widget/TextView;

    .line 64
    iget-object v3, p0, Lcom/infraware/common/account/AccountSetting;->m_oTitle:Landroid/widget/TextView;

    const v4, 0x7f080032

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v0, closeFilter:Landroid/content/IntentFilter;
    const-string v3, "com.infraware.polarisoffice.CLOSE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    new-instance v3, Lcom/infraware/common/account/AccountSetting$CloseReceiver;

    invoke-direct {v3, p0}, Lcom/infraware/common/account/AccountSetting$CloseReceiver;-><init>(Lcom/infraware/common/account/AccountSetting;)V

    iput-object v3, p0, Lcom/infraware/common/account/AccountSetting;->mCloseReceiver:Lcom/infraware/common/account/AccountSetting$CloseReceiver;

    .line 70
    iget-object v3, p0, Lcom/infraware/common/account/AccountSetting;->mCloseReceiver:Lcom/infraware/common/account/AccountSetting$CloseReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/infraware/common/account/AccountSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    new-instance v3, Lcom/infraware/common/account/ListAccountInfo;

    invoke-direct {v3, v5}, Lcom/infraware/common/account/ListAccountInfo;-><init>(Z)V

    iput-object v3, p0, Lcom/infraware/common/account/AccountSetting;->m_Accounts:Lcom/infraware/common/account/ListAccountInfo;

    .line 74
    iget-object v3, p0, Lcom/infraware/common/account/AccountSetting;->m_Accounts:Lcom/infraware/common/account/ListAccountInfo;

    invoke-virtual {v3, v5}, Lcom/infraware/common/account/ListAccountInfo;->setUseGoogleDocs(Z)V

    .line 77
    const v3, 0x7f0c0067

    invoke-virtual {p0, v3}, Lcom/infraware/common/account/AccountSetting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/infraware/common/account/AccountSetting;->mAddBtn:Landroid/widget/Button;

    .line 78
    iget-object v3, p0, Lcom/infraware/common/account/AccountSetting;->mAddBtn:Landroid/widget/Button;

    const v4, 0x7f080033

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 79
    iget-object v3, p0, Lcom/infraware/common/account/AccountSetting;->mAddBtn:Landroid/widget/Button;

    new-instance v4, Lcom/infraware/common/account/AccountSetting$1;

    invoke-direct {v4, p0}, Lcom/infraware/common/account/AccountSetting$1;-><init>(Lcom/infraware/common/account/AccountSetting;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-direct {p0}, Lcom/infraware/common/account/AccountSetting;->setManageAccounts()I

    move-result v1

    .line 87
    .local v1, nCount:I
    if-nez v1, :cond_78

    .line 88
    const v3, 0x7f08030e

    invoke-virtual {p0, v3}, Lcom/infraware/common/account/AccountSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, strVendor:Ljava/lang/String;
    const-string v3, "- FV09"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_78

    .line 90
    invoke-direct {p0}, Lcom/infraware/common/account/AccountSetting;->AddAccountOpen()V

    .line 93
    .end local v2           #strVendor:Ljava/lang/String;
    :cond_78
    invoke-virtual {p0}, Lcom/infraware/common/account/AccountSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v3

    iput v3, p0, Lcom/infraware/common/account/AccountSetting;->m_nLocaleCode:I

    .line 94
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/infraware/common/account/AccountSetting;->m_nOrientation:I

    .line 95
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 97
    invoke-virtual {p0}, Lcom/infraware/common/account/AccountSetting;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget v4, p0, Lcom/infraware/common/account/AccountSetting;->m_nOrientation:I

    invoke-static {v3, v4}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 98
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 185
    packed-switch p1, :pswitch_data_50

    .line 225
    const/4 v0, 0x0

    :goto_5
    return-object v0

    .line 187
    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    const v1, 0x7f08003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 190
    const v1, 0x7f08005a

    invoke-virtual {p0, v1}, Lcom/infraware/common/account/AccountSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 192
    const v1, 0x7f080046

    new-instance v2, Lcom/infraware/common/account/AccountSetting$2;

    invoke-direct {v2, p0}, Lcom/infraware/common/account/AccountSetting$2;-><init>(Lcom/infraware/common/account/AccountSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 197
    const v1, 0x7f080047

    new-instance v2, Lcom/infraware/common/account/AccountSetting$3;

    invoke-direct {v2, p0}, Lcom/infraware/common/account/AccountSetting$3;-><init>(Lcom/infraware/common/account/AccountSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 203
    new-instance v1, Lcom/infraware/common/account/AccountSetting$4;

    invoke-direct {v1, p0}, Lcom/infraware/common/account/AccountSetting$4;-><init>(Lcom/infraware/common/account/AccountSetting;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 187
    iput-object v0, p0, Lcom/infraware/common/account/AccountSetting;->mAddAccountDialog:Landroid/app/AlertDialog;

    .line 221
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting;->mAddAccountDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 223
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting;->mAddAccountDialog:Landroid/app/AlertDialog;

    goto :goto_5

    .line 185
    :pswitch_data_50
    .packed-switch 0x190
        :pswitch_6
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting;->mCloseReceiver:Lcom/infraware/common/account/AccountSetting$CloseReceiver;

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/AccountSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 251
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 140
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;

    .line 142
    .local v1, item:Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;
    invoke-virtual {v1}, Lcom/infraware/common/account/AccountSetting$AccountInfoListItem;->getInfo()Lcom/infraware/common/account/AccountInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/common/account/AccountSetting;->m_oSelectItem:Lcom/infraware/common/account/AccountInfo;

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/infraware/common/account/EditAccount;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "key_account_type"

    iget-object v3, p0, Lcom/infraware/common/account/AccountSetting;->m_oSelectItem:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v3}, Lcom/infraware/common/account/AccountInfo;->getService()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    const-string v2, "key_account_email"

    iget-object v3, p0, Lcom/infraware/common/account/AccountSetting;->m_oSelectItem:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v3}, Lcom/infraware/common/account/AccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v2, "key_account_password"

    iget-object v3, p0, Lcom/infraware/common/account/AccountSetting;->m_oSelectItem:Lcom/infraware/common/account/AccountInfo;

    invoke-virtual {v3}, Lcom/infraware/common/account/AccountInfo;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2}, Lcom/infraware/common/account/AccountSetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 150
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 151
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 230
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 232
    packed-switch p1, :pswitch_data_e

    .line 237
    :goto_6
    return-void

    .line 234
    :pswitch_7
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/infraware/common/account/AccountSetting;->removeDialog(I)V

    goto :goto_6

    .line 232
    nop

    :pswitch_data_e
    .packed-switch 0x190
        :pswitch_7
    .end packed-switch
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 244
    return-void
.end method

.method public onToastMessage(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting;->m_oToastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_11

    .line 310
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/account/AccountSetting;->m_oToastMsg:Landroid/widget/Toast;

    .line 314
    :goto_b
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting;->m_oToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 315
    return-void

    .line 312
    :cond_11
    iget-object v0, p0, Lcom/infraware/common/account/AccountSetting;->m_oToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b
.end method
