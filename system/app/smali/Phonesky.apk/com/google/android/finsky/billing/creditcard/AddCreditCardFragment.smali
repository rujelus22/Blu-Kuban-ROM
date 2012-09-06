.class public Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;
.super Landroid/support/v4/app/Fragment;
.source "AddCreditCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$6;,
        Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;,
        Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;,
        Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;
    }
.end annotation


# instance fields
.field private mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

.field private mCancelButton:Landroid/widget/Button;

.field private mCcCvcField:Landroid/widget/TextView;

.field private mCcExpMonthField:Landroid/widget/TextView;

.field private mCcExpYearField:Landroid/widget/TextView;

.field private mCcNumberField:Landroid/widget/EditText;

.field private mCountries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;

.field private mMainView:Landroid/view/ViewGroup;

.field private mSaveButton:Landroid/widget/Button;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

.field private mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 605
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)Lcom/google/android/finsky/layout/BillingAddress;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mListener:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->onBillingCountriesLoaded()V

    return-void
.end method

.method private clearErrorMessages()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/BillingAddress;->clearErrorMessage()V

    .line 298
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcNumberField:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcExpMonthField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcExpYearField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcCvcField:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 302
    return-void
.end method

.method private creditCardInputErrorsToInputValidationErrors(Ljava/util/Set;Ljava/util/List;)V
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, errors:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;>;"
    .local p2, validationErrors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 525
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    .line 526
    .local v0, error:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;
    sget-object v2, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$6;->$SwitchMap$com$google$android$finsky$billing$creditcard$CreditCardValidator$InputField:[I

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_6a

    .line 544
    const-string v2, "Unhandled credit card input field error for: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 528
    :pswitch_2b
    const v2, 0x7f070041

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->makeInputValidationError(ILjava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 532
    :pswitch_3a
    const v2, 0x7f070044

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->makeInputValidationError(ILjava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 536
    :pswitch_49
    const/4 v2, 0x3

    const v3, 0x7f070042

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->makeInputValidationError(ILjava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 540
    :pswitch_59
    const/4 v2, 0x2

    const v3, 0x7f070043

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->makeInputValidationError(ILjava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 547
    .end local v0           #error:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;
    :cond_69
    return-void

    .line 526
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_3a
        :pswitch_49
        :pswitch_59
    .end packed-switch
.end method

.method private displayError(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;
    .registers 5
    .parameter "error"

    .prologue
    .line 446
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, errorMessage:Ljava/lang/String;
    const/4 v1, 0x0

    .line 448
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getInputField()I

    move-result v2

    packed-switch v2, :pswitch_data_2e

    .line 467
    :goto_c
    if-eqz v1, :cond_27

    .line 468
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 472
    :goto_11
    return-object v1

    .line 450
    :pswitch_12
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcNumberField:Landroid/widget/EditText;

    .line 451
    goto :goto_c

    .line 453
    :pswitch_15
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcExpMonthField:Landroid/widget/TextView;

    .line 454
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 457
    :pswitch_1b
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcExpYearField:Landroid/widget/TextView;

    .line 458
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 461
    :pswitch_21
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcCvcField:Landroid/widget/TextView;

    .line 462
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 470
    :cond_27
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v2, p1}, Lcom/google/android/finsky/layout/BillingAddress;->displayError(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;

    move-result-object v1

    goto :goto_11

    .line 448
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_12
        :pswitch_21
        :pswitch_1b
        :pswitch_15
    .end packed-switch
.end method

.method private getAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;
    .registers 4
    .parameter "country"

    .prologue
    .line 244
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getAllowsReducedBillingAddress()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 245
    new-instance v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->setBillingAddressType(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v0

    .line 248
    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->setBillingAddressType(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v0

    goto :goto_10
.end method

.method private getCreditCardOrShowErrors()Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;
    .registers 19

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcNumberField:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument$CreditCardNumberFilter;->getNumbers(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, cardNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcExpMonthField:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, expMonth:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcExpYearField:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 488
    .local v5, expYear:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcCvcField:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, cvc:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v17

    .line 493
    .local v17, validationErrors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 494
    .local v7, creditCardErrors:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;>;"
    const/16 v6, 0x7d0

    invoke-static/range {v2 .. v7}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)Lcom/google/android/finsky/billing/creditcard/CreditCardType;

    move-result-object v16

    .line 496
    .local v16, type:Lcom/google/android/finsky/billing/creditcard/CreditCardType;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->creditCardInputErrorsToInputValidationErrors(Ljava/util/Set;Ljava/util/List;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/BillingAddress;->getAddressValidationErrors()Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 502
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->displayErrors(Ljava/util/List;)V

    .line 503
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_a6

    .line 504
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v6}, Lcom/google/android/finsky/layout/BillingAddress;->getAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v14

    .line 507
    .local v14, billingAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    new-instance v15, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    invoke-direct {v15}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;-><init>()V

    .line 509
    .local v15, creditCard:Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v15, v6}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->setExpirationMonth(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    .line 510
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit16 v6, v6, 0x7d0

    invoke-virtual {v15, v6}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->setExpirationYear(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    .line 511
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->setLastDigits(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    .line 512
    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->protobufType:I

    invoke-virtual {v15, v6}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->setType(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    .line 513
    new-instance v12, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    invoke-direct {v12}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;-><init>()V

    .line 514
    .local v12, instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-virtual {v12, v14}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setBillingAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 515
    invoke-virtual {v12, v15}, Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;->setCreditCard(Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    .line 516
    new-instance v8, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object v10, v2

    move-object v11, v3

    invoke-direct/range {v8 .. v13}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$1;)V

    .line 520
    .end local v12           #instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    .end local v14           #billingAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .end local v15           #creditCard:Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    :goto_a5
    return-object v8

    :cond_a6
    const/4 v8, 0x0

    goto :goto_a5
.end method

.method private loadBillingCountries()V
    .registers 5

    .prologue
    .line 258
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mListener:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;

    if-eqz v2, :cond_9

    .line 259
    iget-object v2, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mListener:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;

    invoke-interface {v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;->onInitializing()V

    .line 261
    :cond_9
    new-instance v1, Lcom/google/android/finsky/billing/GetBillingCountriesAction;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;-><init>()V

    .line 262
    .local v1, getBillingCountriesAction:Lcom/google/android/finsky/billing/GetBillingCountriesAction;
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "authAccount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, account:Ljava/lang/String;
    new-instance v2, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$3;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$3;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/finsky/billing/GetBillingCountriesAction;->run(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method private static makeInputValidationError(ILjava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    .registers 3
    .parameter "field"
    .parameter "errorMessage"

    .prologue
    .line 550
    new-instance v0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;-><init>()V

    .line 551
    .local v0, error:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    invoke-virtual {v0, p0}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->setInputField(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    .line 552
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->setErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    .line 553
    return-object v0
.end method

.method public static newInstance(Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;
    .registers 8
    .parameter "mode"
    .parameter "account"
    .parameter "cardholderName"
    .parameter "allCorporaEnabled"

    .prologue
    .line 152
    new-instance v1, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;

    invoke-direct {v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;-><init>()V

    .line 153
    .local v1, result:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "ui_mode"

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v2, "cardholder_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "authAccount"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v2, "all_corpora_enabled"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->setArguments(Landroid/os/Bundle;)V

    .line 159
    return-object v1
.end method

.method private onBillingCountriesLoaded()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 272
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_8

    .line 291
    :goto_7
    return-void

    .line 275
    :cond_8
    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getBillingCountries()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCountries:Ljava/util/List;

    .line 276
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCountries:Ljava/util/List;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCountries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2e

    .line 277
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mListener:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;

    if-eqz v1, :cond_23

    .line 278
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mListener:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;

    invoke-interface {v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;->onInitialized()V

    .line 280
    :cond_23
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 281
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->setupWidgets(Landroid/os/Bundle;)V

    goto :goto_7

    .line 284
    :cond_2e
    const-string v1, "BillingCountries not loaded."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    const v1, 0x7f07006d

    const v2, 0x7f0700f6

    const v3, 0x7f070059

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 288
    .local v0, dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v4, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    .line 289
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private setupExpirationDateEntry(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x2

    .line 388
    const v1, 0x7f080022

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcExpMonthField:Landroid/widget/TextView;

    .line 389
    const v1, 0x7f080023

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcExpYearField:Landroid/widget/TextView;

    .line 390
    const v1, 0x7f080024

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 392
    .local v0, separatorView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcExpMonthField:Landroid/widget/TextView;

    const v2, 0x7f070030

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 393
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcExpYearField:Landroid/widget/TextView;

    const v2, 0x7f070031

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 394
    const v1, 0x7f070032

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 395
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcExpMonthField:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;->setupAutoAdvancer(Landroid/widget/TextView;I)V

    .line 396
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcExpYearField:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;->setupAutoAdvancer(Landroid/widget/TextView;I)V

    .line 397
    return-void
.end method

.method private setupWidgets(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 313
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    if-nez v4, :cond_17

    .line 314
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/finsky/billing/BillingUtils;->getDefaultCountry(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCountries:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/google/android/finsky/billing/BillingUtils;->findCountry(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    .line 318
    :cond_17
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mMainView:Landroid/view/ViewGroup;

    const v5, 0x7f080021

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcNumberField:Landroid/widget/EditText;

    .line 319
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcNumberField:Landroid/widget/EditText;

    new-array v5, v8, [Landroid/text/InputFilter;

    new-instance v6, Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument$CreditCardNumberFilter;

    invoke-direct {v6}, Lcom/google/android/finsky/billing/creditcard/CreditCardInstrument$CreditCardNumberFilter;-><init>()V

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 321
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcNumberField:Landroid/widget/EditText;

    const-string v5, "0123456789 -"

    invoke-static {v5}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 322
    if-nez p1, :cond_50

    .line 323
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcNumberField:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 325
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 329
    :cond_50
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcNumberField:Landroid/widget/EditText;

    invoke-static {}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->getMaxNumberLength()I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;->setupAutoAdvancer(Landroid/widget/TextView;I)V

    .line 333
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mMainView:Landroid/view/ViewGroup;

    const v5, 0x7f080025

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcCvcField:Landroid/widget/TextView;

    .line 334
    invoke-static {}, Lcom/google/android/finsky/billing/creditcard/CreditCardType;->getMaxCvcLength()I

    move-result v2

    .line 335
    .local v2, maxCvcLength:I
    new-array v1, v8, [Landroid/text/InputFilter;

    .line 336
    .local v1, filters:[Landroid/text/InputFilter;
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v7

    .line 337
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcCvcField:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 338
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcCvcField:Landroid/widget/TextView;

    invoke-static {v4, v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AutoAdvancer;->setupAutoAdvancer(Landroid/widget/TextView;I)V

    .line 340
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mMainView:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->setupExpirationDateEntry(Landroid/view/View;)V

    .line 342
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "cardholder_name"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/layout/BillingAddress;->setDefaultName(Ljava/lang/String;)V

    .line 343
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    const v5, 0x7f070036

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/layout/BillingAddress;->setNameInputHint(I)V

    .line 344
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-static {}, Lcom/google/android/finsky/billing/BillingLocator;->getBillingCountries()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/layout/BillingAddress;->setBillingCountries(Ljava/util/List;)V

    .line 345
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    iget-object v5, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    iget-object v6, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    invoke-direct {p0, v6}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/finsky/layout/BillingAddress;->setAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;)V

    .line 346
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/billing/BillingUtils;->getLine1Number(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/layout/BillingAddress;->setPhoneNumber(Ljava/lang/String;)V

    .line 348
    if-eqz p1, :cond_c5

    .line 349
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v4, p1}, Lcom/google/android/finsky/layout/BillingAddress;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 353
    :cond_c5
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mMainView:Landroid/view/ViewGroup;

    const v5, 0x7f080027

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 354
    .local v0, cvcImage:Landroid/widget/ImageView;
    new-instance v4, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$4;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$4;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mMainView:Landroid/view/ViewGroup;

    const v5, 0x7f080029

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 366
    .local v3, privacyFooter:Landroid/widget/TextView;
    new-instance v4, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$5;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$5;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    return-void
.end method

.method private supportsBooksAndMovies()Z
    .registers 3

    .prologue
    .line 254
    const-string v0, "US"

    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/billing/BillingUtils;->getSimCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public displayErrors(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, inputValidationErrors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->clearErrorMessages()V

    .line 428
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 429
    .local v1, errorFields:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/widget/TextView;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    .line 430
    .local v0, error:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    invoke-direct {p0, v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->displayError(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;

    move-result-object v3

    .line 431
    .local v3, textView:Landroid/widget/TextView;
    if-eqz v3, :cond_b

    .line 432
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 436
    .end local v0           #error:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_21
    iget-object v5, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mMainView:Landroid/view/ViewGroup;

    invoke-static {v5, v1}, Lcom/google/android/finsky/billing/BillingUtils;->getTopMostView(Landroid/view/ViewGroup;Ljava/util/Collection;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 437
    .local v4, topMostErrorField:Landroid/widget/TextView;
    if-eqz v4, :cond_2e

    .line 438
    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 440
    :cond_2e
    return-void
.end method

.method public enableUi(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    if-eqz v0, :cond_27

    .line 561
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/BillingAddress;->setEnabled(Z)V

    .line 562
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcNumberField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 563
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcCvcField:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 564
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcExpMonthField:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 565
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCcExpYearField:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 566
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 567
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 569
    :cond_27
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 405
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_2c

    .line 417
    :cond_8
    :goto_8
    return-void

    .line 407
    :pswitch_9
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getCreditCardOrShowErrors()Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;

    move-result-object v0

    .line 408
    .local v0, instrumentAndCredentials:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;
    if-eqz v0, :cond_8

    .line 409
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mListener:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->SUCCESS:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    #getter for: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;->creditCardNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;->access$500(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;)Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;->cvc:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;->access$600(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;)Ljava/lang/String;

    move-result-object v4

    #getter for: Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;->instrument:Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;
    invoke-static {v0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;->access$700(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;)Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;->onAddCreditCardResult(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    goto :goto_8

    .line 414
    .end local v0           #instrumentAndCredentials:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$InstrumentAndCredentials;
    :pswitch_23
    iget-object v1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mListener:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;

    sget-object v2, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    invoke-interface {v1, v2, v3, v3, v3}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;->onAddCreditCardResult(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    goto :goto_8

    .line 405
    nop

    :pswitch_data_2c
    .packed-switch 0x7f08002d
        :pswitch_9
        :pswitch_23
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0700d8

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 165
    if-nez p2, :cond_a

    .line 166
    const/4 v4, 0x0

    .line 239
    :goto_9
    return-object v4

    .line 168
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ui_mode"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, mode:Ljava/lang/String;
    if-eqz v3, :cond_ac

    invoke-static {v3}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->valueOf(Ljava/lang/String;)Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    move-result-object v4

    :goto_1a
    iput-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    .line 171
    iput-object p3, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mSavedInstanceState:Landroid/os/Bundle;

    .line 172
    const v4, 0x7f04000e

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mMainView:Landroid/view/ViewGroup;

    .line 175
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mMainView:Landroid/view/ViewGroup;

    const v5, 0x7f080028

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/layout/BillingAddress;

    iput-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    .line 178
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    const v5, 0x7f070036

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/layout/BillingAddress;->setNameInputHint(I)V

    .line 179
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    new-instance v5, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$1;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$1;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)V

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/layout/BillingAddress;->setBillingCountryChangeListener(Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;)V

    .line 186
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    new-instance v5, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$2;

    invoke-direct {v5, p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$2;-><init>(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;)V

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/layout/BillingAddress;->setInitializationStateListener(Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;)V

    .line 202
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mMainView:Landroid/view/ViewGroup;

    const v5, 0x7f08002d

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mSaveButton:Landroid/widget/Button;

    .line 203
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 205
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mSaveButton:Landroid/widget/Button;

    const v5, 0x7f07004a

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 206
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mMainView:Landroid/view/ViewGroup;

    const v5, 0x7f08002b

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 207
    .local v1, headerView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mMainView:Landroid/view/ViewGroup;

    const v5, 0x7f08002e

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCancelButton:Landroid/widget/Button;

    .line 208
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const/4 v0, -0x1

    .line 210
    .local v0, headerStringId:I
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mMainView:Landroid/view/ViewGroup;

    const v5, 0x7f08002c

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 211
    .local v2, logos:Landroid/view/View;
    sget-object v4, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$6;->$SwitchMap$com$google$android$finsky$billing$BillingUtils$CreateInstrumentUiMode:[I

    iget-object v5, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mUiMode:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-virtual {v5}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_fc

    .line 238
    :goto_a5
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->loadBillingCountries()V

    .line 239
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mMainView:Landroid/view/ViewGroup;

    goto/16 :goto_9

    .line 169
    .end local v0           #headerStringId:I
    .end local v1           #headerView:Landroid/widget/TextView;
    .end local v2           #logos:Landroid/view/View;
    :cond_ac
    sget-object v4, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    goto/16 :goto_1a

    .line 213
    .restart local v0       #headerStringId:I
    .restart local v1       #headerView:Landroid/widget/TextView;
    .restart local v2       #logos:Landroid/view/View;
    :pswitch_b0
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCancelButton:Landroid/widget/Button;

    const v5, 0x7f070059

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 214
    const v4, 0x7f070023

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a5

    .line 219
    :pswitch_bf
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(I)V

    .line 220
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a5

    .line 224
    :pswitch_cb
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_ee

    .line 225
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->supportsBooksAndMovies()Z

    move-result v4

    if-eqz v4, :cond_ea

    const v0, 0x7f070026

    .line 233
    :goto_de
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 234
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v4, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(I)V

    goto :goto_a5

    .line 225
    :cond_ea
    const v0, 0x7f070028

    goto :goto_de

    .line 229
    :cond_ee
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->supportsBooksAndMovies()Z

    move-result v4

    if-eqz v4, :cond_f8

    const v0, 0x7f070025

    :goto_f7
    goto :goto_de

    :cond_f8
    const v0, 0x7f070027

    goto :goto_f7

    .line 211
    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_bf
        :pswitch_cb
    .end packed-switch
.end method

.method public onNegativeClick(ILandroid/os/Bundle;)V
    .registers 6
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mListener:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;->CANCELED:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;

    invoke-interface {v0, v1, v2, v2, v2}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;->onAddCreditCardResult(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener$Result;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/CommonDevice$Instrument;)V

    .line 146
    return-void
.end method

.method public onPositiveClick(ILandroid/os/Bundle;)V
    .registers 4
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 138
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 139
    invoke-direct {p0}, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->loadBillingCountries()V

    .line 141
    :cond_6
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "outState"

    .prologue
    .line 306
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 307
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    if-eqz v0, :cond_c

    .line 308
    iget-object v0, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mBillingAddress:Lcom/google/android/finsky/layout/BillingAddress;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/BillingAddress;->saveInstanceState(Landroid/os/Bundle;)V

    .line 310
    :cond_c
    return-void
.end method

.method public setOnResultListener(Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;->mListener:Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$AddCreditCardResultListener;

    .line 401
    return-void
.end method
