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
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 345
    return-void
.end method

.method private displayErrorToast()V
    .registers 4

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070054

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 319
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
    const v9, 0x7f070046

    .line 232
    const/4 v6, 0x0

    .line 233
    .local v6, topMostView:Landroid/view/View;
    const/4 v5, 0x0

    .line 234
    .local v5, topMostTop:I
    const/4 v3, 0x0

    .line 235
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

    .line 236
    .local v2, errorField:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;
    const/4 v1, 0x0

    .line 237
    .local v1, currentView:Landroid/view/View;
    sget-object v7, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$1;->$SwitchMap$com$google$android$finsky$billing$carrierbilling$PhoneCarrierBillingUtils$AddressInputField:[I

    invoke-virtual {v2}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_c4

    goto :goto_a

    .line 240
    :pswitch_23
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_34

    move-object v7, v1

    .line 242
    check-cast v7, Landroid/widget/TextView;

    invoke-direct {p0, v7, v9}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setTextViewError(Landroid/widget/TextView;I)V

    .line 243
    const/4 v3, 0x1

    .line 292
    :cond_34
    :goto_34
    if-nez v6, :cond_ad

    .line 293
    move-object v6, v1

    .line 294
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mEditSection:Landroid/view/ViewGroup;

    invoke-static {v7, v1}, Lcom/google/android/finsky/billing/BillingUtils;->getViewOffsetToChild(Landroid/view/ViewGroup;Landroid/view/View;)I

    move-result v5

    goto :goto_a

    .line 247
    :pswitch_3e
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_34

    move-object v7, v1

    .line 249
    check-cast v7, Landroid/widget/TextView;

    invoke-direct {p0, v7, v9}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setTextViewError(Landroid/widget/TextView;I)V

    .line 250
    const/4 v3, 0x1

    goto :goto_34

    .line 254
    :pswitch_50
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_34

    move-object v7, v1

    .line 256
    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f070047

    invoke-direct {p0, v7, v8}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setTextViewError(Landroid/widget/TextView;I)V

    .line 257
    const/4 v3, 0x1

    goto :goto_34

    .line 261
    :pswitch_65
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mNameView:Landroid/widget/TextView;

    move-object v7, v1

    .line 262
    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f070045

    invoke-direct {p0, v7, v8}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setTextViewError(Landroid/widget/TextView;I)V

    .line 263
    const/4 v3, 0x1

    .line 264
    goto :goto_34

    .line 266
    :pswitch_72
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    .line 267
    if-eqz v1, :cond_34

    .line 268
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->displayErrorMessageForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)Landroid/widget/TextView;

    .line 270
    const/4 v3, 0x1

    goto :goto_34

    .line 274
    :pswitch_85
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_34

    .line 276
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressWidget;->displayErrorMessageForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)Landroid/widget/TextView;

    .line 278
    const/4 v3, 0x1

    goto :goto_34

    .line 282
    :pswitch_98
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getVisibility()I

    move-result v7

    if-nez v7, :cond_34

    .line 283
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    move-object v7, v1

    .line 284
    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f070048

    invoke-direct {p0, v7, v8}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setTextViewError(Landroid/widget/TextView;I)V

    .line 285
    const/4 v3, 0x1

    goto :goto_34

    .line 295
    :cond_ad
    if-eqz v1, :cond_a

    .line 296
    iget-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mEditSection:Landroid/view/ViewGroup;

    invoke-static {v7, v1}, Lcom/google/android/finsky/billing/BillingUtils;->getViewOffsetToChild(Landroid/view/ViewGroup;Landroid/view/View;)I

    move-result v0

    .line 297
    .local v0, currentTop:I
    if-ge v0, v5, :cond_a

    .line 298
    move-object v6, v1

    .line 299
    move v5, v0

    goto/16 :goto_a

    .line 304
    .end local v0           #currentTop:I
    .end local v1           #currentView:Landroid/view/View;
    .end local v2           #errorField:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;
    :cond_bb
    if-eqz v3, :cond_c0

    .line 305
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->displayErrorToast()V

    .line 307
    :cond_c0
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 308
    return-void

    .line 237
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

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
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

    .line 141
    .local v0, error:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_60

    .line 170
    :pswitch_1d
    const-string v3, "InputValidationError that can\'t be displayed: type=%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 143
    :pswitch_28
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->PERSON_NAME:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 146
    :pswitch_2e
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_PHONE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 149
    :pswitch_34
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_STATE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 152
    :pswitch_3a
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_CITY:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 155
    :pswitch_40
    const-string v3, "Input error ADDR_WHOLE_ADDRESS. Displaying at ADDRESS_LINE_1."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :pswitch_47
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_ADDRESS1:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 161
    :pswitch_4d
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_ADDRESS2:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 164
    :pswitch_53
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_POSTAL_CODE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 167
    :pswitch_59
    sget-object v3, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;->ADDR_COUNTRY_CODE:Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 174
    .end local v0           #error:Ljava/lang/Integer;
    :cond_5f
    return-object v1

    .line 141
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
    .line 342
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
    .line 322
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v2}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 323
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

    .line 328
    .local v1, builder:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v2}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->isPhoneNumberRequired(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 329
    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->setIdentifier(Ljava/lang/String;)Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;

    .line 332
    :cond_38
    iget-object v2, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    sget-object v3, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    if-ne v2, v3, :cond_5d

    .line 333
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

    .line 338
    :cond_5d
    invoke-virtual {v1}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo$Builder;->build()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v2

    return-object v2
.end method

.method private initViews(Landroid/view/ViewGroup;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mEditSection:Landroid/view/ViewGroup;

    .line 126
    const v0, 0x7f08004f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mNameView:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f080052

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    .line 128
    const v0, 0x7f080051

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberLabel:Landroid/view/View;

    .line 129
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
    .line 59
    .local p2, displayErrorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;-><init>()V

    .line 60
    .local v1, fragment:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "prefill_address"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    const-string v2, "type"

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "highlight_address"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 64
    const-string v2, "ui_mode"

    invoke-virtual {p3}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 66
    return-object v1
.end method

.method private setTextViewError(Landroid/widget/TextView;I)V
    .registers 4
    .parameter "textView"
    .parameter "errorMessageResId"

    .prologue
    .line 311
    invoke-virtual {p0, p2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 312
    return-void
.end method

.method private setupAddressEditView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v0}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->isPhoneNumberRequired(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 195
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getLine1NumberFromTelephony()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->showPhoneNumberEditView(Ljava/lang/String;)V

    .line 199
    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->showAddressEditView(Landroid/view/View;Lcom/android/i18n/addressinput/AddressData;)V

    .line 200
    return-void
.end method

.method private setupAddressEditView(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V
    .registers 5
    .parameter "view"
    .parameter "prefillAddress"

    .prologue
    .line 178
    invoke-virtual {p2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->showNameView(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->isPhoneNumberRequired(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 181
    invoke-virtual {p2}, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 183
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getLine1NumberFromTelephony()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_21
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->showPhoneNumberEditView(Ljava/lang/String;)V

    .line 189
    .end local v0           #phoneNumber:Ljava/lang/String;
    :cond_24
    invoke-static {p2}, Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils;->subscriberInfoToAddressData(Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)Lcom/android/i18n/addressinput/AddressData;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->showAddressEditView(Landroid/view/View;Lcom/android/i18n/addressinput/AddressData;)V

    .line 191
    return-void
.end method

.method private showAddressEditView(Landroid/view/View;Lcom/android/i18n/addressinput/AddressData;)V
    .registers 9
    .parameter "view"
    .parameter "addressData"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils;->getAddressFormOptions(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/android/i18n/addressinput/FormOptions;

    move-result-object v3

    .line 209
    .local v3, addressFormOptions:Lcom/android/i18n/addressinput/FormOptions;
    const v0, 0x7f080039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 210
    .local v2, rootView:Landroid/view/ViewGroup;
    if-eqz p2, :cond_2b

    .line 211
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

    .line 217
    :goto_2a
    return-void

    .line 214
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
    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method private showPhoneNumberEditView(Ljava/lang/String;)V
    .registers 4
    .parameter "phoneNumber"

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberLabel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 225
    invoke-static {p1}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 226
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mPhoneNumberEditView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :cond_16
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 119
    if-eqz p1, :cond_a

    .line 120
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 122
    :cond_a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08002d

    if-ne v1, v2, :cond_39

    .line 363
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

    .line 367
    .local v0, errors:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 368
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->SUCCESS:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    invoke-direct {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getReturnAddress()Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;->onEditCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    .line 375
    .end local v0           #errors:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;>;"
    :cond_34
    :goto_34
    return-void

    .line 370
    .restart local v0       #errors:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;>;"
    :cond_35
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->displayErrors(Ljava/util/Collection;)V

    goto :goto_34

    .line 372
    .end local v0           #errors:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/billing/carrierbilling/PhoneCarrierBillingUtils$AddressInputField;>;"
    :cond_39
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f08002e

    if-ne v1, v2, :cond_34

    .line 373
    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;

    sget-object v2, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;->CANCELED:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;->onEditCarrierBillingResult(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener$EditResult;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    goto :goto_34
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 75
    const v7, 0x7f040019

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 79
    .local v5, v:Landroid/view/View;
    const v7, 0x7f08004e

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 80
    .local v6, view:Landroid/view/ViewGroup;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 81
    invoke-virtual {v6}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 83
    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 85
    const v7, 0x7f08002d

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 86
    .local v4, saveButton:Landroid/widget/Button;
    const v7, 0x7f07004a

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    .line 87
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v7, 0x7f08002e

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 90
    .local v1, cancelButton:Landroid/widget/Button;
    const v7, 0x7f070059

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 91
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    .local v0, args:Landroid/os/Bundle;
    const-string v7, "type"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressMode:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    .line 95
    const-string v7, "prefill_address"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;

    .line 96
    .local v3, prefillAddress:Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;
    const-string v7, "ui_mode"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 97
    if-eqz v3, :cond_7c

    .line 98
    invoke-direct {p0, v6, v3}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setupAddressEditView(Landroid/view/View;Lcom/google/android/finsky/billing/carrierbilling/model/SubscriberInfo;)V

    .line 102
    :goto_68
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "highlight_address"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 104
    .local v2, displayErrorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_7b

    .line 105
    invoke-direct {p0, v2}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->getFormErrors(Ljava/util/ArrayList;)Ljava/util/Collection;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->displayErrors(Ljava/util/Collection;)V

    .line 107
    :cond_7b
    return-object v5

    .line 100
    .end local v2           #displayErrorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7c
    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->setupAddressEditView(Landroid/view/View;)V

    goto :goto_68
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->saveInstanceState(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method

.method public setOnResultListener(Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment;->mListener:Lcom/google/android/finsky/billing/carrierbilling/fragment/EditCarrierBillingFragment$EditCarrierBillingResultListener;

    .line 136
    return-void
.end method
