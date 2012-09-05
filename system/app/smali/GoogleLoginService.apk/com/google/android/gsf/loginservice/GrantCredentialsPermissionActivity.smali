.class public Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;
.super Lcom/google/android/gsf/loginservice/BaseActivity;
.source "GrantCredentialsPermissionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;-><init>()V

    return-void
.end method

.method private newPackageView(Ljava/lang/String;)Landroid/view/View;
    .registers 6
    .parameter "packageLabel"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    return-object v0
.end method

.method private newScopeView(Ljava/lang/String;)Landroid/view/View;
    .registers 6
    .parameter "packageLabel"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030013

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0c003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mPermission:Ljava/util/ArrayList;

    .line 123
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 124
    .local v0, am:Landroid/accounts/AccountManager;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_5a

    .line 144
    :goto_10
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->finish()V

    .line 145
    return-void

    .line 126
    :pswitch_14
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mService:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget v3, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCallingUID:I

    const-string v4, "1"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v5, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gsf/loginservice/GLSUser;->setStoredPermission(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 129
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCallingUID:I

    invoke-static {p0, v1, v2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->cancelPermissionNotification(Landroid/content/Context;Ljava/lang/String;I)V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->accountAuthenticatorRetryResult()V

    .line 132
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->setResult(I)V

    goto :goto_10

    .line 136
    :pswitch_38
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mService:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget v3, v3, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCallingUID:I

    const-string v4, "0"

    iget-object v5, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v5, v5, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mAccountManagerOptions:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gsf/loginservice/GLSUser;->setStoredPermission(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 139
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v1, v1, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget v2, v2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCallingUID:I

    invoke-static {p0, v1, v2}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->cancelPermissionNotification(Landroid/content/Context;Ljava/lang/String;I)V

    .line 141
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->setResult(I)V

    goto :goto_10

    .line 124
    nop

    :pswitch_data_5a
    .packed-switch 0x7f0c0029
        :pswitch_38
        :pswitch_14
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 17
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super/range {p0 .. p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v13, 0x7f080134

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->setTitle(I)V

    .line 58
    const v13, 0x7f03000c

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->setContentView(I)V

    .line 60
    const-string v13, "layout_inflater"

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    iput-object v13, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 63
    .local v9, pm:Landroid/content/pm/PackageManager;
    iget-object v13, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget v13, v13, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mCallingUID:I

    invoke-virtual {v9, v13}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, packages:[Ljava/lang/String;
    iget-object v13, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v13, v13, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    if-eqz v13, :cond_31

    iget-object v13, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mService:Ljava/lang/String;

    if-eqz v13, :cond_31

    if-nez v6, :cond_39

    .line 67
    :cond_31
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->setResult(I)V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->finish()V

    .line 107
    :goto_38
    return-void

    .line 72
    :cond_39
    const v13, 0x7f080009

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, accountTypeLabel:Ljava/lang/String;
    iget-object v13, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    if-nez v13, :cond_80

    const/4 v11, 0x0

    .line 76
    .local v11, scopes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_45
    if-eqz v11, :cond_4d

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_5f

    .line 78
    :cond_4d
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #scopes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .restart local v11       #scopes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v13, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mService:Ljava/lang/String;

    invoke-static {p0, v13}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->getAuthTokenLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 80
    .local v10, scope:Ljava/lang/String;
    if-nez v10, :cond_5c

    .line 81
    iget-object v10, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mService:Ljava/lang/String;

    .line 83
    :cond_5c
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v10           #scope:Ljava/lang/String;
    :cond_5f
    const v13, 0x7f0c0028

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 87
    .local v12, scopesListView:Landroid/widget/LinearLayout;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 88
    .restart local v10       #scope:Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->newScopeView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6c

    .line 75
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v10           #scope:Ljava/lang/String;
    .end local v11           #scopes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v12           #scopesListView:Landroid/widget/LinearLayout;
    :cond_80
    iget-object v13, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v11, v13, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mPermission:Ljava/util/ArrayList;

    goto :goto_45

    .line 91
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v11       #scopes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12       #scopesListView:Landroid/widget/LinearLayout;
    :cond_85
    const v13, 0x7f0c0026

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 93
    .local v7, packagesListView:Landroid/widget/LinearLayout;
    move-object v1, v6

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_91
    if-ge v3, v4, :cond_af

    aget-object v8, v1, v3

    .line 96
    .local v8, pkg:Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_96
    invoke-virtual {v9, v8, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_a1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_96 .. :try_end_a1} :catch_ac

    move-result-object v5

    .line 100
    .local v5, packageLabel:Ljava/lang/String;
    :goto_a2
    invoke-direct {p0, v5}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->newPackageView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    .line 97
    .end local v5           #packageLabel:Ljava/lang/String;
    :catch_ac
    move-exception v2

    .line 98
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v5, v8

    .restart local v5       #packageLabel:Ljava/lang/String;
    goto :goto_a2

    .line 103
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #packageLabel:Ljava/lang/String;
    .end local v8           #pkg:Ljava/lang/String;
    :cond_af
    const v13, 0x7f0c0024

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-object v14, p0, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    iget-object v14, v14, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const v13, 0x7f0c002a

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v13, 0x7f0c0029

    invoke-virtual {p0, v13}, Lcom/google/android/gsf/loginservice/GrantCredentialsPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_38
.end method
