.class public Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;
.super Landroid/support/v4/app/Fragment;
.source "AddCarrierBillingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$1;,
        Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;,
        Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;,
        Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    }
.end annotation


# instance fields
.field private mAcceptButton:Landroid/widget/Button;

.field private mDeclineButton:Landroid/widget/Button;

.field private mEditAddressButton:Landroid/widget/ImageButton;

.field mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

.field private mTosUrl:Ljava/lang/String;

.field private mTosVersion:Ljava/lang/String;

.field private mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 367
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;

    return-object v0
.end method

.method private forceFinishLoadingTos(Landroid/view/View;)V
    .registers 4
    .parameter "parent"

    .prologue
    .line 302
    const v0, 0x7f080065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 304
    const v0, 0x7f08006e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    return-void
.end method

.method public static newInstance(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;)Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;
    .registers 7
    .parameter "type"
    .parameter "editedAddress"
    .parameter "uiMode"

    .prologue
    .line 67
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;-><init>()V

    .line 68
    .local v1, fragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "type"

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v2, "prefill_address"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 71
    const-string v2, "ui_mode"

    invoke-virtual {p2}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    return-object v1
.end method

.method private setAddressToFull(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .registers 13
    .parameter "view"
    .parameter "editedAddress"

    .prologue
    .line 216
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v2

    .line 217
    .local v2, billingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    const v8, 0x7f070057

    invoke-virtual {p0, v8}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, description:Ljava/lang/String;
    const v8, 0x7f08006a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 220
    .local v7, textView:Landroid/widget/TextView;
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    if-eqz p2, :cond_e2

    .line 225
    move-object v6, p2

    .line 230
    .local v6, subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    :goto_1a
    new-instance v8, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v8}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setRecipient(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress1()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine1(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getAddress2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine2(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLocality(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAdminArea(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setPostalCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 240
    .local v0, addressData:Lcom/android/i18n/addressinput/AddressData;
    const v8, 0x7f08006b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 241
    .local v1, addressView:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_ec

    .line 248
    :cond_aa
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getFullEnvelopeAddress(Lcom/android/i18n/addressinput/AddressData;Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 251
    .local v4, formattedAddress:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "\n"

    invoke-static {v8, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    .end local v4           #formattedAddress:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_c3
    invoke-virtual {v6}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, phoneNumber:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d5

    .line 258
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getLine1NumberFromTelephony()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    :cond_d5
    const v8, 0x7f08006d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-direct {p0, v8, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showPhoneNumber(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 262
    return-void

    .line 227
    .end local v0           #addressData:Lcom/android/i18n/addressinput/AddressData;
    .end local v1           #addressView:Landroid/widget/TextView;
    .end local v5           #phoneNumber:Ljava/lang/String;
    .end local v6           #subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    :cond_e2
    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getSubscriberInfo()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v6

    .restart local v6       #subscriberInfo:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    goto/16 :goto_1a

    .line 253
    .restart local v0       #addressData:Lcom/android/i18n/addressinput/AddressData;
    .restart local v1       #addressView:Landroid/widget/TextView;
    :cond_ec
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c3
.end method

.method private setAddressToMinimalAddress(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .registers 7
    .parameter "view"
    .parameter "subscriberInfo"

    .prologue
    .line 206
    const v3, 0x7f070057

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, description:Ljava/lang/String;
    const v3, 0x7f08006a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 209
    .local v2, textView:Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {p2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, phoneNumber:Ljava/lang/String;
    const v3, 0x7f08006d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-direct {p0, v3, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showPhoneNumber(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method private setAddressToSnippet(Landroid/view/View;)V
    .registers 14
    .parameter "view"

    .prologue
    const v11, 0x7f08006d

    .line 180
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    .line 181
    .local v1, billingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getAddressSnippet()Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, snippet:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, carrierName:Ljava/lang/String;
    const v8, 0x7f070056

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, description:Ljava/lang/String;
    const v8, 0x7f08006a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 189
    .local v4, descriptionView:Landroid/widget/TextView;
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const v8, 0x7f08006b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 192
    .local v0, addressView:Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    invoke-static {}, Lcom/google/android/finsky/billing/carrierbilling/CarrierBillingUtils;->isDcb30()Z

    move-result v8

    if-eqz v8, :cond_50

    .line 196
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getLine1NumberFromTelephony()Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, phoneNumber:Ljava/lang/String;
    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-direct {p0, v8, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showPhoneNumber(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 203
    .end local v5           #phoneNumber:Ljava/lang/String;
    :goto_4f
    return-void

    .line 200
    :cond_50
    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 201
    .local v6, phoneNumberView:Landroid/widget/TextView;
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4f
.end method

.method private setUpTos()V
    .registers 5

    .prologue
    .line 111
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getProvisioning()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;

    move-result-object v1

    .line 113
    .local v1, provisioning:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mTosVersion:Ljava/lang/String;

    .line 114
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingProvisioning;->getTosUrl()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, tosUrl:Ljava/lang/String;
    const v3, 0x7f070055

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, localeReplacement:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 117
    const-string v3, "%locale%"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 119
    :cond_25
    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->replaceLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mTosUrl:Ljava/lang/String;

    .line 120
    return-void
.end method

.method private setUpViewForType(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;)V
    .registers 12
    .parameter "view"
    .parameter "type"
    .parameter "prefillAddress"
    .parameter "uiMode"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 131
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$1;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$fragment$AddCarrierBillingFragment$Type:[I

    invoke-virtual {p2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_96

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :goto_25
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v0

    .line 174
    .local v0, billingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    invoke-virtual {v0}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, carrierName:Ljava/lang/String;
    const v3, 0x7f080069

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 176
    .local v2, header:Landroid/widget/TextView;
    const v3, 0x7f07002e

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    return-void

    .line 133
    .end local v0           #billingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    .end local v1           #carrierName:Ljava/lang/String;
    .end local v2           #header:Landroid/widget/TextView;
    :pswitch_49
    invoke-direct {p0, p1, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showTosSection(Landroid/view/View;Z)V

    .line 134
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->forceFinishLoadingTos(Landroid/view/View;)V

    .line 135
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    .line 136
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToSnippet(Landroid/view/View;)V

    goto :goto_25

    .line 139
    :pswitch_56
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showTosSection(Landroid/view/View;Z)V

    .line 140
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    .line 141
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToSnippet(Landroid/view/View;)V

    goto :goto_25

    .line 144
    :pswitch_60
    invoke-direct {p0, p1, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showTosSection(Landroid/view/View;Z)V

    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->forceFinishLoadingTos(Landroid/view/View;)V

    .line 146
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    .line 147
    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToFull(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    goto :goto_25

    .line 150
    :pswitch_6d
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showTosSection(Landroid/view/View;Z)V

    .line 151
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    .line 152
    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToFull(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    goto :goto_25

    .line 155
    :pswitch_77
    invoke-direct {p0, p1, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showTosSection(Landroid/view/View;Z)V

    .line 156
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->forceFinishLoadingTos(Landroid/view/View;)V

    .line 157
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    .line 158
    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToMinimalAddress(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    goto :goto_25

    .line 161
    :pswitch_84
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showTosSection(Landroid/view/View;Z)V

    .line 162
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    .line 163
    invoke-direct {p0, p1, p3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setAddressToMinimalAddress(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    goto :goto_25

    .line 166
    :pswitch_8e
    invoke-direct {p0, p1, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showTosSection(Landroid/view/View;Z)V

    .line 167
    invoke-direct {p0, p1, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->showAddressSection(Landroid/view/View;Z)V

    goto :goto_25

    .line 131
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_49
        :pswitch_56
        :pswitch_60
        :pswitch_6d
        :pswitch_77
        :pswitch_84
        :pswitch_8e
    .end packed-switch
.end method

.method private showAddressSection(Landroid/view/View;Z)V
    .registers 6
    .parameter "parent"
    .parameter "visible"

    .prologue
    .line 277
    if-eqz p2, :cond_33

    const/4 v1, 0x0

    .line 278
    .local v1, visibility:I
    :goto_3
    const v2, 0x7f080068

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, view:Landroid/view/View;
    const v2, 0x7f08006a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    const v2, 0x7f08006c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    const v2, 0x7f08006b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const v2, 0x7f08006d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    return-void

    .line 277
    .end local v0           #view:Landroid/view/View;
    .end local v1           #visibility:I
    :cond_33
    const/16 v1, 0x8

    goto :goto_3
.end method

.method private showPhoneNumber(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4
    .parameter "phoneNumberView"
    .parameter "phoneNumber"

    .prologue
    .line 268
    invoke-static {p2}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :goto_d
    return-void

    .line 272
    :cond_e
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d
.end method

.method private showTosSection(Landroid/view/View;Z)V
    .registers 10
    .parameter "view"
    .parameter "visible"

    .prologue
    const v6, 0x7f080066

    const/4 v3, 0x0

    .line 286
    if-eqz p2, :cond_3a

    move v1, v3

    .line 287
    .local v1, visibility:I
    :goto_7
    if-eqz p2, :cond_32

    .line 288
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 289
    .local v2, webView:Landroid/webkit/WebView;
    const v4, 0x7f08006e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getCarrierTosWebViewClient(Landroid/view/View;Landroid/view/View;)Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;

    move-result-object v0

    .line 292
    .local v0, tosWebViewclient:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 293
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mTosUrl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 296
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 298
    .end local v0           #tosWebViewclient:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;
    .end local v2           #webView:Landroid/webkit/WebView;
    :cond_32
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    return-void

    .line 286
    .end local v1           #visibility:I
    :cond_3a
    const/16 v1, 0x8

    goto :goto_7
.end method


# virtual methods
.method public enableUi(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;

    if-nez v0, :cond_5

    .line 318
    :goto_4
    return-void

    .line 315
    :cond_5
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 316
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mEditAddressButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_4
.end method

.method getCarrierTosWebViewClient(Landroid/view/View;Landroid/view/View;)Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;
    .registers 4
    .parameter "progress"
    .parameter "tosDisplayView"

    .prologue
    .line 364
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$CarrierTosWebViewClient;-><init>(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method

.method onClick(I)V
    .registers 4
    .parameter "viewId"

    .prologue
    .line 341
    sparse-switch p1, :sswitch_data_2c

    .line 353
    const-string v0, "Unexpected button press. do nothing."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    :goto_b
    return-void

    .line 343
    :sswitch_c
    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mTosVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;->onAddCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;)V

    goto :goto_b

    .line 347
    :sswitch_1b
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;->onAddCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;)V

    goto :goto_b

    .line 350
    :sswitch_23
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;->EDIT_ADDRESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;->onAddCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener$AddResult;)V

    goto :goto_b

    .line 341
    nop

    :sswitch_data_2c
    .sparse-switch
        0x7f080038 -> :sswitch_c
        0x7f080039 -> :sswitch_1b
        0x7f08006c -> :sswitch_23
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->onClick(I)V

    .line 323
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "ui_mode"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 85
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setUpTos()V

    .line 87
    const v4, 0x7f04001f

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 89
    .local v3, v:Landroid/view/View;
    const v4, 0x7f080038

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;

    .line 90
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mAcceptButton:Landroid/widget/Button;

    const v5, 0x7f0700c7

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 92
    const v4, 0x7f080039

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mDeclineButton:Landroid/widget/Button;

    .line 93
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    sget-object v5, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->REMINDER:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    if-ne v4, v5, :cond_79

    .line 94
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mDeclineButton:Landroid/widget/Button;

    const v5, 0x7f0700cd

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 98
    :goto_4c
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v4, 0x7f08006c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mEditAddressButton:Landroid/widget/ImageButton;

    .line 101
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mEditAddressButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const-string v4, "type"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;

    move-result-object v2

    .line 104
    .local v2, type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    const-string v4, "prefill_address"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    .line 105
    .local v1, prefillAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-direct {p0, v3, v2, v1, v4}, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->setUpViewForType(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;)V

    .line 106
    return-object v3

    .line 96
    .end local v1           #prefillAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .end local v2           #type:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$Type;
    :cond_79
    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mDeclineButton:Landroid/widget/Button;

    const v5, 0x7f0700c9

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_4c
.end method

.method public setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/AddCarrierBillingFragment$AddCarrierBillingResultListener;

    .line 127
    return-void
.end method
