.class public Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;
.super Ljava/lang/Object;
.source "ConsumptionUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConsumptionAppRequiredString(I)I
    .registers 2
    .parameter "docBackend"

    .prologue
    .line 32
    packed-switch p0, :pswitch_data_16

    .line 42
    :pswitch_3
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 34
    :pswitch_5
    const v0, 0x7f0701e6

    goto :goto_4

    .line 36
    :pswitch_9
    const v0, 0x7f0701e7

    goto :goto_4

    .line 38
    :pswitch_d
    const v0, 0x7f0701e8

    goto :goto_4

    .line 40
    :pswitch_11
    const v0, 0x7f0701e9

    goto :goto_4

    .line 32
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_5
        :pswitch_d
        :pswitch_3
        :pswitch_9
        :pswitch_3
        :pswitch_11
    .end packed-switch
.end method

.method private static getConsumptionIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/content/Intent;
    .registers 8
    .parameter "context"
    .parameter "doc"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 51
    if-nez p1, :cond_4

    .line 69
    :cond_3
    :goto_3
    return-object v2

    .line 57
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    .line 58
    .local v0, contentType:I
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackendDocId()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 63
    packed-switch v0, :pswitch_data_36

    .line 72
    :pswitch_11
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open an item from the corpus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :pswitch_2a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2, p1, v3}, Lcom/google/android/finsky/utils/IntentUtils;->buildConsumptionAppViewItemIntent(Landroid/content/pm/PackageManager;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_3

    .line 63
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_11
        :pswitch_2a
    .end packed-switch
.end method

.method private static isConsumptionAppNeeded(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z
    .registers 12
    .parameter "context"
    .parameter "doc"
    .parameter "account"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 78
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/finsky/utils/IntentUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, packageName:Ljava/lang/String;
    if-nez v2, :cond_e

    move v5, v6

    .line 104
    :cond_d
    :goto_d
    return v5

    .line 85
    :cond_e
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v3

    .line 87
    .local v3, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    if-eqz v3, :cond_d

    .line 92
    const-string v7, "com.google.android.videos"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    iget v7, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    invoke-static {}, Lcom/google/android/finsky/utils/IntentUtils;->getMinimumRequiredVideosAppVersion()I

    move-result v8

    if-lt v7, v8, :cond_d

    .line 98
    :cond_30
    invoke-static {p0, p1, p2}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->getConsumptionIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/content/Intent;

    move-result-object v1

    .line 99
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_d

    .line 102
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 103
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-static {v4, v1}, Lcom/google/android/finsky/utils/IntentUtils;->canResolveIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v0

    .line 104
    .local v0, installed:Z
    if-eqz v0, :cond_d

    move v5, v6

    goto :goto_d
.end method

.method public static openItem(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManager;Landroid/accounts/Account;Lcom/google/android/finsky/api/model/Document;)V
    .registers 10
    .parameter "context"
    .parameter "targetFragment"
    .parameter "fragmentManager"
    .parameter "account"
    .parameter "doc"

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-static {p0, p4, p3}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->isConsumptionAppNeeded(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 141
    invoke-virtual {p4}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-static {p0, p1, p2, v3}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->showAppNeededDialog(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManager;I)V

    .line 165
    :goto_e
    return-void

    .line 145
    :cond_f
    invoke-static {p0, p4, p3}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->getConsumptionIntent(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Landroid/accounts/Account;)Landroid/content/Intent;

    move-result-object v0

    .line 146
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 147
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_40

    if-eqz v2, :cond_40

    .line 148
    invoke-virtual {p4}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 151
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v1

    .line 152
    .local v1, notifier:Lcom/google/android/finsky/utils/Notifier;
    invoke-virtual {p4}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/finsky/utils/Notifier;->hideAllMessagesForPackage(Ljava/lang/String;)V

    .line 154
    .end local v1           #notifier:Lcom/google/android/finsky/utils/Notifier;
    :cond_3c
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 159
    :cond_40
    const v3, 0x7f07012e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_e
.end method

.method public static showAppNeededDialog(Landroid/content/Context;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManager;I)V
    .registers 10
    .parameter "context"
    .parameter "targetFragment"
    .parameter "fragmentManager"
    .parameter "docBackend"

    .prologue
    .line 110
    invoke-static {p3}, Lcom/google/android/finsky/utils/IntentUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, appDocId:Ljava/lang/String;
    if-nez v0, :cond_16

    .line 113
    const v4, 0x7f07012e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 131
    :cond_15
    :goto_15
    return-void

    .line 119
    :cond_16
    const-string v4, "app_needed_dialog"

    invoke-virtual {p2, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_15

    .line 123
    invoke-static {p3}, Lcom/google/android/finsky/navigationmanager/ConsumptionUtils;->getConsumptionAppRequiredString(I)I

    move-result v3

    .line 125
    .local v3, messageId:I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v2, extraArgs:Landroid/os/Bundle;
    const-string v4, "dialog_details_url"

    invoke-static {v0}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const v4, 0x7f070197

    const v5, 0x7f070059

    invoke-static {v3, v4, v5}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v1

    .line 129
    .local v1, df:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v1, p1, v4, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 130
    const-string v4, "app_needed_dialog"

    invoke-virtual {v1, p2, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_15
.end method
