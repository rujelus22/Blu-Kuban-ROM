.class public Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AccountSettingsSecurityOptionsFragment.java"


# instance fields
.field private encryptAlgorithm:I

.field private isEncryptChecked:Ljava/lang/Boolean;

.field private isSignChecked:Ljava/lang/Boolean;

.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAccountId:J

.field private mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

.field private mSmimeEncryptAllPolicyApplied:Z

.field private mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

.field private mSmimeEncryptionAlgorithmPolicyApplied:Z

.field private mSmimeOwnCertificateAlias:Ljava/lang/String;

.field private mSmimeSignAlgorithm:Landroid/preference/ListPreference;

.field private mSmimeSignAlgorithmPolicyApplied:Z

.field private mSmimeSignAll:Landroid/preference/CheckBoxPreference;

.field private mSmimeSignAllPolicyApplied:Z

.field private policiesList:Landroid/preference/PreferenceScreen;

.field private signAlgorithm:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    .line 99
    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->signAlgorithm:I

    .line 100
    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->encryptAlgorithm:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    return-wide v0
.end method

.method private setCertificateSummary()V
    .registers 3

    .prologue
    .line 386
    const-string v1, "account_own_certificate"

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 387
    .local v0, ownCertificatePref:Landroid/preference/Preference;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    .line 388
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 392
    :goto_17
    return-void

    .line 390
    :cond_18
    const v1, 0x7f0804ec

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_17
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 396
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 398
    const/4 v3, 0x2

    if-ne p1, v3, :cond_21

    .line 399
    const/4 v3, -0x1

    if-ne p2, v3, :cond_22

    .line 400
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "inside on activity result*********"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 402
    .local v1, result:Landroid/os/Bundle;
    const-string v3, "CERTIFICATE_ALIAS"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, alias:Ljava/lang/String;
    if-eqz v0, :cond_21

    .line 404
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    .line 405
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->setCertificateSummary()V

    .line 419
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #result:Landroid/os/Bundle;
    :cond_21
    :goto_21
    return-void

    .line 408
    :cond_22
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 409
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v3, :cond_21

    .line 411
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeOwnCertificate()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, tmpSmimeCertAlias:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 414
    iput-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    .line 415
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->setCertificateSummary()V

    goto :goto_21
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    if-eqz p1, :cond_32

    .line 112
    const-string v5, "SmimeSignAll"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->isSignChecked:Ljava/lang/Boolean;

    .line 113
    const-string v5, "SmimeSignAlgorithm"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->signAlgorithm:I

    .line 114
    const-string v5, "SmimeEncryptAll"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->isEncryptChecked:Ljava/lang/Boolean;

    .line 115
    const-string v5, "SmimeEncryptionAlgorithm"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->encryptAlgorithm:I

    .line 118
    :cond_32
    const v5, 0x7f06000f

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->addPreferencesFromResource(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "account_id"

    invoke-virtual {v5, v6, v11, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    .line 121
    iget-wide v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    cmp-long v5, v5, v11

    if-nez v5, :cond_53

    .line 122
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 123
    .local v1, pa:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1, p0, v8, v10}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 126
    .end local v1           #pa:Landroid/preference/PreferenceActivity;
    :cond_53
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 128
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-nez v5, :cond_6c

    .line 129
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 130
    .restart local v1       #pa:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1, p0, v8, v10}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 133
    .end local v1           #pa:Landroid/preference/PreferenceActivity;
    :cond_6c
    const-string v5, "account_own_certificate"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 134
    .local v0, ownCertificatePref:Landroid/preference/Preference;
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSmimeOwnCertificate()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->setCertificateSummary()V

    .line 136
    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$1;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)V

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 164
    const-string v5, "account_smime_encrypt_all"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    .line 165
    const-string v5, "account_smime_sign_all"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    .line 167
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v3

    .line 170
    .local v3, sp:Lcom/android/email/SecurityPolicy;
    iget-wide v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v2

    .line 172
    .local v2, ps:Lcom/android/emailcommon/service/PolicySet;
    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAllPolicyApplied:Z

    .line 173
    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    iput-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAllPolicyApplied:Z

    .line 175
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAllPolicyApplied:Z

    if-eqz v5, :cond_153

    .line 176
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 177
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 185
    :goto_c1
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAllPolicyApplied:Z

    if-eqz v5, :cond_16d

    .line 186
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 187
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 196
    :goto_cf
    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    if-nez v5, :cond_e9

    .line 197
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080509

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 201
    .end local v4           #text:Ljava/lang/String;
    :cond_e9
    const-string v5, "account_smime_sign_algorithm"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    .line 202
    const-string v5, "account_smime_encryption_algorithm"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    .line 203
    const-string v5, "security_policy_list"

    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->policiesList:Landroid/preference/PreferenceScreen;

    .line 229
    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    if-eqz v5, :cond_187

    .line 230
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    iget v6, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 231
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 246
    :goto_11b
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    iget-boolean v5, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    if-eqz v5, :cond_1a5

    .line 266
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    iget v6, v2, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 267
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 284
    :goto_13a
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->policiesList:Landroid/preference/PreferenceScreen;

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$4;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$4;-><init>(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)V

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 298
    invoke-virtual {p0, v9}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->setHasOptionsMenu(Z)V

    .line 299
    return-void

    .line 179
    :cond_153
    if-eqz p1, :cond_162

    .line 180
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    const-string v6, "com.android.email.securitypreference.encrypt"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_c1

    .line 182
    :cond_162
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptAll:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_c1

    .line 189
    :cond_16d
    if-eqz p1, :cond_17c

    .line 190
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    const-string v6, "com.android.email.securitypreference.sign"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_cf

    .line 192
    :cond_17c
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAll:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_cf

    .line 233
    :cond_187
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 234
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeSignAlgorithm:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 235
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$2;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_11b

    .line 269
    :cond_1a5
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 270
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 271
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    new-instance v6, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$3;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;)V

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_13a
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 308
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 309
    const v0, 0x7f0f0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 310
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 350
    .local v1, pa:Landroid/preference/PreferenceActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_6e

    .line 378
    :goto_d
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 352
    :pswitch_12
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 353
    .local v0, data:Landroid/content/Intent;
    const-string v2, "SmimeOwnCertificateAlias"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAllPolicyApplied:Z

    if-nez v2, :cond_2d

    .line 355
    const-string v2, "SmimeEncryptAll"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    :cond_2d
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAllPolicyApplied:Z

    if-nez v2, :cond_3c

    .line 358
    const-string v2, "SmimeSignAll"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    :cond_3c
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithmPolicyApplied:Z

    if-nez v2, :cond_4f

    .line 362
    const-string v2, "SmimeSignAlgorithm"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    :cond_4f
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithmPolicyApplied:Z

    if-nez v2, :cond_62

    .line 367
    const-string v2, "SmimeEncryptionAlgorithm"

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptionAlgorithm:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 371
    :cond_62
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_d

    .line 374
    .end local v0           #data:Landroid/content/Intent;
    :pswitch_67
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_d

    .line 350
    nop

    :pswitch_data_6e
    .packed-switch 0x7f1002e3
        :pswitch_12
        :pswitch_67
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 10
    .parameter "menu"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 314
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    .line 316
    .local v3, mOrientation:I
    const v5, 0x7f1002e3

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 317
    .local v1, doneItem:Landroid/view/MenuItem;
    const v5, 0x7f1002e4

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 319
    .local v0, cancelItem:Landroid/view/MenuItem;
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 320
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 322
    if-ne v3, v6, :cond_42

    .line 323
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    .line 324
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_27
    if-ge v2, v4, :cond_58

    .line 325
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v5, :cond_3f

    .line 326
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 327
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 324
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 334
    .end local v2           #i:I
    .end local v4           #size:I
    :cond_42
    if-eqz v1, :cond_4d

    .line 335
    const v5, 0x7f02022c

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 336
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 339
    :cond_4d
    if-eqz v0, :cond_58

    .line 340
    const v5, 0x7f02021f

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 341
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 345
    :cond_58
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 303
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 304
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 423
    const-string v0, "com.android.email.securitypreference.sign"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeSignAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 424
    const-string v0, "com.android.email.securitypreference.encrypt"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSecurityOptionsFragment;->mSmimeEncryptAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 425
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 426
    return-void
.end method
