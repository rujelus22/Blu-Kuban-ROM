.class public Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;
.super Landroid/support/v4/app/Fragment;
.source "EditCarrierBillingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$1;,
        Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;
    }
.end annotation


# instance fields
.field private mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

.field private mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

.field private mEditSection:Landroid/view/ViewGroup;

.field private mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;

.field private mNameView:Landroid/widget/TextView;

.field private mPhoneNumberEditView:Landroid/widget/EditText;

.field private mPhoneNumberLabel:Landroid/view/View;

.field private mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 354
    return-void
.end method

.method private displayErrorToast()V
    .registers 4

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f07005b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 328
    return-void
.end method

.method private displayErrors(Ljava/util/Collection;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, errorFields:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;>;"
    const v9, 0x7f07004b

    .line 241
    const/4 v6, 0x0

    .line 242
    .local v6, topMostView:Landroid/view/View;
    const/4 v5, 0x0

    .line 243
    .local v5, topMostTop:I
    const/4 v3, 0x0

    .line 244
    .local v3, foundError:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_bb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    .line 245
    .local v2, errorField:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;
    const/4 v1, 0x0

    .line 246
    .local v1, currentView:Landroid/view/View;
    sget-object v7, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$1;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$PhoneCarrierBillingUtils$AddressInputField:[I

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_c4

    goto :goto_a

    .line 249
    :pswitch_23
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_34

    move-object v7, v1

    .line 251
    check-cast v7, Landroid/widget/TextView;

    invoke-direct {p0, v7, v9}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setTextViewError(Landroid/widget/TextView;I)V

    .line 252
    const/4 v3, 0x1

    .line 301
    :cond_34
    :goto_34
    if-nez v6, :cond_ad

    .line 302
    move-object v6, v1

    .line 303
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mEditSection:Landroid/view/ViewGroup;

    invoke-static {v7, v1}, Lcom/google/android/finsky/billing/BillingUtils;->getViewOffsetToChild(Landroid/view/ViewGroup;Landroid/view/View;)I

    move-result v5

    goto :goto_a

    .line 256
    :pswitch_3e
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_34

    move-object v7, v1

    .line 258
    check-cast v7, Landroid/widget/TextView;

    invoke-direct {p0, v7, v9}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setTextViewError(Landroid/widget/TextView;I)V

    .line 259
    const/4 v3, 0x1

    goto :goto_34

    .line 263
    :pswitch_50
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    .line 264
    if-eqz v1, :cond_34

    move-object v7, v1

    .line 265
    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f07004d

    invoke-direct {p0, v7, v8}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setTextViewError(Landroid/widget/TextView;I)V

    .line 266
    const/4 v3, 0x1

    goto :goto_34

    .line 270
    :pswitch_65
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mNameView:Landroid/widget/TextView;

    move-object v7, v1

    .line 271
    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f07004a

    invoke-direct {p0, v7, v8}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setTextViewError(Landroid/widget/TextView;I)V

    .line 272
    const/4 v3, 0x1

    .line 273
    goto :goto_34

    .line 275
    :pswitch_72
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    .line 276
    if-eqz v1, :cond_34

    .line 277
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->displayErrorMessageForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)Landroid/widget/TextView;

    .line 279
    const/4 v3, 0x1

    goto :goto_34

    .line 283
    :pswitch_85
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    .line 284
    if-eqz v1, :cond_34

    .line 285
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->displayErrorMessageForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)Landroid/widget/TextView;

    .line 287
    const/4 v3, 0x1

    goto :goto_34

    .line 291
    :pswitch_98
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getVisibility()I

    move-result v7

    if-nez v7, :cond_34

    .line 292
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    move-object v7, v1

    .line 293
    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f07004f

    invoke-direct {p0, v7, v8}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setTextViewError(Landroid/widget/TextView;I)V

    .line 294
    const/4 v3, 0x1

    goto :goto_34

    .line 304
    :cond_ad
    if-eqz v1, :cond_a

    .line 305
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mEditSection:Landroid/view/ViewGroup;

    invoke-static {v7, v1}, Lcom/google/android/finsky/billing/BillingUtils;->getViewOffsetToChild(Landroid/view/ViewGroup;Landroid/view/View;)I

    move-result v0

    .line 306
    .local v0, currentTop:I
    if-ge v0, v5, :cond_a

    .line 307
    move-object v6, v1

    .line 308
    move v5, v0

    goto/16 :goto_a

    .line 313
    .end local v0           #currentTop:I
    .end local v1           #currentView:Landroid/view/View;
    .end local v2           #errorField:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;
    :cond_bb
    if-eqz v3, :cond_c0

    .line 314
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->displayErrorToast()V

    .line 316
    :cond_c0
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 317
    return-void

    .line 246
    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_23
        :pswitch_23
        :pswitch_3e
        :pswitch_50
        :pswitch_65
        :pswitch_72
        :pswitch_85
        :pswitch_98
    .end packed-switch
.end method

.method private getFormErrors(Ljava/util/ArrayList;)Ljava/util/Collection;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, highlightField:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, errors:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 150
    .local v0, error:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_60

    .line 179
    :pswitch_1d
    const-string v3, "InputValidationError that can\'t be displayed: type=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 152
    :pswitch_28
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->PERSON_NAME:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 155
    :pswitch_2e
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_PHONE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 158
    :pswitch_34
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_STATE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 161
    :pswitch_3a
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_CITY:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 164
    :pswitch_40
    const-string v3, "Input error ADDR_WHOLE_ADDRESS. Displaying at ADDRESS_LINE_1."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :pswitch_47
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_ADDRESS1:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 170
    :pswitch_4d
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_ADDRESS2:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 173
    :pswitch_53
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_POSTAL_CODE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 176
    :pswitch_59
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_COUNTRY_CODE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 183
    .end local v0           #error:Ljava/lang/Integer;
    :cond_5f
    return-object v1

    .line 150
    :pswitch_data_60
    .packed-switch 0x4
        :pswitch_28
        :pswitch_47
        :pswitch_4d
        :pswitch_3a
        :pswitch_34
        :pswitch_53
        :pswitch_59
        :pswitch_1d
        :pswitch_2e
        :pswitch_40
    .end packed-switch
.end method

.method private getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getReturnAddress()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    .registers 5

    .prologue
    .line 331
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v2}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 332
    .local v0, addressData:Lcom/android/i18n/addressinput/AddressData;
    new-instance v2, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    invoke-direct {v2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;-><init>()V

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setName(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setPostalCode(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setCountry(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v1

    .line 337
    .local v1, builder:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v2}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->isPhoneNumberRequired(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 338
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    .line 341
    :cond_38
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    sget-object v3, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    if-ne v2, v3, :cond_5d

    .line 342
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setAddress1(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setAddress2(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setCity(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setState(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    .line 347
    :cond_5d
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v2

    return-object v2
.end method

.method private initViews(Landroid/view/ViewGroup;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mEditSection:Landroid/view/ViewGroup;

    .line 135
    const v0, 0x7f080049

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mNameView:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f08004d

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    .line 137
    const v0, 0x7f08004c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberLabel:Landroid/view/View;

    .line 138
    return-void
.end method

.method public static newInstance(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;Ljava/util/ArrayList;Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;)Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;
    .registers 8
    .parameter "addressMode"
    .parameter "prefillAddress"
    .parameter
    .parameter "uiMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/billing/BillingUtils$AddressMode;",
            "Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;",
            ")",
            "Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, displayErrorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;-><init>()V

    .line 61
    .local v1, fragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "prefill_address"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    const-string v2, "type"

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "highlight_address"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 65
    const-string v2, "ui_mode"

    invoke-virtual {p3}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v1
.end method

.method private setTextViewError(Landroid/widget/TextView;I)V
    .registers 4
    .parameter "textView"
    .parameter "errorMessageResId"

    .prologue
    .line 320
    invoke-virtual {p0, p2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 321
    return-void
.end method

.method private setupAddressEditView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->isPhoneNumberRequired(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 204
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getLine1NumberFromTelephony()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->showPhoneNumberEditView(Ljava/lang/String;)V

    .line 208
    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->showAddressEditView(Landroid/view/View;Lcom/android/i18n/addressinput/AddressData;)V

    .line 209
    return-void
.end method

.method private setupAddressEditView(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .registers 5
    .parameter "view"
    .parameter "prefillAddress"

    .prologue
    .line 187
    invoke-virtual {p2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->showNameView(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->isPhoneNumberRequired(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 190
    invoke-virtual {p2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 192
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getLine1NumberFromTelephony()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_21
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->showPhoneNumberEditView(Ljava/lang/String;)V

    .line 198
    .end local v0           #phoneNumber:Ljava/lang/String;
    :cond_24
    invoke-static {p2}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->subscriberInfoToAddressData(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)Lcom/android/i18n/addressinput/AddressData;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->showAddressEditView(Landroid/view/View;Lcom/android/i18n/addressinput/AddressData;)V

    .line 200
    return-void
.end method

.method private showAddressEditView(Landroid/view/View;Lcom/android/i18n/addressinput/AddressData;)V
    .registers 9
    .parameter "view"
    .parameter "addressData"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils;->getAddressFormOptions(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/android/i18n/addressinput/FormOptions;

    move-result-object v3

    .line 218
    .local v3, addressFormOptions:Lcom/android/i18n/addressinput/FormOptions;
    const v0, 0x7f080042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 219
    .local v2, rootView:Landroid/view/ViewGroup;
    if-eqz p2, :cond_2b

    .line 220
    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v4, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCache()Lcom/android/volley/Cache;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;-><init>(Lcom/android/volley/Cache;)V

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/addressinput/AddressWidget;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;Lcom/android/i18n/addressinput/AddressData;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    .line 226
    :goto_2a
    return-void

    .line 223
    :cond_2b
    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v4, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCache()Lcom/android/volley/Cache;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;-><init>(Lcom/android/volley/Cache;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/i18n/addressinput/AddressWidget;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    goto :goto_2a
.end method

.method private showNameView(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    return-void
.end method

.method private showPhoneNumberEditView(Ljava/lang/String;)V
    .registers 4
    .parameter "phoneNumber"

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberLabel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 234
    invoke-static {p1}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 235
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_16
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    if-eqz p1, :cond_a

    .line 129
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 131
    :cond_a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080038

    if-ne v1, v2, :cond_39

    .line 372
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressProblems()Lcom/android/i18n/addressinput/AddressProblems;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->getErrors(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Ljava/util/Collection;

    move-result-object v0

    .line 376
    .local v0, errors:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 377
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getReturnAddress()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;->onEditCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    .line 384
    .end local v0           #errors:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;>;"
    :cond_34
    :goto_34
    return-void

    .line 379
    .restart local v0       #errors:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;>;"
    :cond_35
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->displayErrors(Ljava/util/Collection;)V

    goto :goto_34

    .line 381
    .end local v0           #errors:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;>;"
    :cond_39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f080039

    if-ne v1, v2, :cond_34

    .line 382
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;->onEditCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    goto :goto_34
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 17
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 76
    const v10, 0x7f040015

    const/4 v11, 0x0

    invoke-virtual {p1, v10, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 80
    .local v8, v:Landroid/view/View;
    const v10, 0x7f080048

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 81
    .local v9, view:Landroid/view/ViewGroup;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 82
    invoke-virtual {v9}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 84
    invoke-direct {p0, v9}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 86
    const v10, 0x7f080038

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 87
    .local v7, saveButton:Landroid/widget/Button;
    const v10, 0x7f070050

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setText(I)V

    .line 88
    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v10, 0x7f080039

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 91
    .local v2, cancelButton:Landroid/widget/Button;
    const v10, 0x7f070060

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setText(I)V

    .line 92
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, args:Landroid/os/Bundle;
    const-string v10, "type"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    .line 96
    const-string v10, "prefill_address"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    .line 97
    .local v6, prefillAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    const-string v10, "ui_mode"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 98
    if-eqz v6, :cond_b1

    .line 99
    invoke-direct {p0, v9, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setupAddressEditView(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    .line 103
    :goto_68
    iget-object v10, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    sget-object v11, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->REMINDER:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    if-ne v10, v11, :cond_9d

    .line 104
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getCarrierBillingStorage()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;

    move-result-object v1

    .line 105
    .local v1, billingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;->getParams()Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingParameters;->getName()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, carrierName:Ljava/lang/String;
    const v10, 0x7f08004a

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 107
    .local v5, header:Landroid/widget/TextView;
    const v10, 0x7f07002e

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    const v10, 0x7f0700cd

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setText(I)V

    .line 111
    .end local v1           #billingStorage:Lcom/google/android/finsky/billing/carrierbilling/model/CarrierBillingStorage;
    .end local v3           #carrierName:Ljava/lang/String;
    .end local v5           #header:Landroid/widget/TextView;
    :cond_9d
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "highlight_address"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 113
    .local v4, displayErrorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_b0

    .line 114
    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getFormErrors(Ljava/util/ArrayList;)Ljava/util/Collection;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->displayErrors(Ljava/util/Collection;)V

    .line 116
    :cond_b0
    return-object v8

    .line 101
    .end local v4           #displayErrorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_b1
    invoke-direct {p0, v9}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setupAddressEditView(Landroid/view/View;)V

    goto :goto_68
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->saveInstanceState(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;

    .line 145
    return-void
.end method
