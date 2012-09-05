.class public Lcom/google/android/finsky/layout/BillingAddress;
.super Landroid/widget/LinearLayout;
.source "BillingAddress.java"

# interfaces
.implements Lcom/android/i18n/addressinput/AddressWidget$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/BillingAddress$2;,
        Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;,
        Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;,
        Lcom/google/android/finsky/layout/BillingAddress$CountrySpinnerItem;
    }
.end annotation


# static fields
.field private static KEY_BILLING_ADDRESS_NAME:Ljava/lang/String;

.field private static KEY_BILLING_ADDRESS_PHONE_NUMBER:Ljava/lang/String;


# instance fields
.field private mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

.field private mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

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

.field private mCountryChangeListener:Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;

.field private mCountrySpinner:Landroid/widget/Spinner;

.field private mCountrySpinnerSelectionSet:Z

.field private mInitializationStateListener:Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;

.field private mNameEntry:Landroid/widget/EditText;

.field private mPhoneNumber:Landroid/widget/EditText;

.field private mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-string v0, "billing_address_name"

    sput-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_BILLING_ADDRESS_NAME:Ljava/lang/String;

    .line 48
    const-string v0, "billing_address_phone_number"

    sput-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_BILLING_ADDRESS_PHONE_NUMBER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinnerSelectionSet:Z

    .line 79
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 81
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040013

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/BillingAddress;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountryChangeListener:Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;

    return-object v0
.end method

.method private addressProblemsToInputValidationErrors(Lcom/android/i18n/addressinput/AddressProblems;Ljava/util/List;)V
    .registers 10
    .parameter "addressProblems"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/AddressProblems;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 354
    .local p2, validationErrors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;>;"
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressProblems;->getProblems()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 356
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/i18n/addressinput/AddressField;Lcom/android/i18n/addressinput/AddressProblemType;>;"
    sget-object v4, Lcom/google/android/finsky/layout/BillingAddress$2;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_78

    .line 389
    const/16 v1, 0xd

    .line 390
    .local v1, field:I
    const-string v3, "No equivalent for address widget field: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    :goto_3a
    new-instance v3, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;

    invoke-direct {v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->setInputField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 358
    .end local v1           #field:I
    :pswitch_47
    const/16 v1, 0x8

    .line 359
    .restart local v1       #field:I
    goto :goto_3a

    .line 362
    .end local v1           #field:I
    :pswitch_4a
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BillingAddress;->isInReducedAddressMode()Z

    move-result v3

    if-nez v3, :cond_c

    .line 363
    const/4 v1, 0x7

    .line 364
    .restart local v1       #field:I
    goto :goto_3a

    .line 368
    .end local v1           #field:I
    :pswitch_52
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BillingAddress;->isInReducedAddressMode()Z

    move-result v3

    if-nez v3, :cond_c

    .line 369
    const/4 v1, 0x5

    .line 370
    .restart local v1       #field:I
    goto :goto_3a

    .line 373
    .end local v1           #field:I
    :pswitch_5a
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BillingAddress;->isInReducedAddressMode()Z

    move-result v3

    if-nez v3, :cond_c

    .line 374
    const/4 v1, 0x6

    .line 375
    .restart local v1       #field:I
    goto :goto_3a

    .line 377
    .end local v1           #field:I
    :pswitch_62
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BillingAddress;->isInReducedAddressMode()Z

    move-result v3

    if-nez v3, :cond_c

    .line 378
    const/16 v1, 0xb

    .line 379
    .restart local v1       #field:I
    goto :goto_3a

    .line 382
    .end local v1           #field:I
    :pswitch_6b
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BillingAddress;->isInReducedAddressMode()Z

    move-result v3

    if-nez v3, :cond_c

    .line 383
    const/16 v1, 0x9

    .line 384
    .restart local v1       #field:I
    goto :goto_3a

    .line 386
    .end local v1           #field:I
    :pswitch_74
    const/16 v1, 0xa

    .line 387
    .restart local v1       #field:I
    goto :goto_3a

    .line 394
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/i18n/addressinput/AddressField;Lcom/android/i18n/addressinput/AddressProblemType;>;"
    .end local v1           #field:I
    :cond_77
    return-void

    .line 356
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_47
        :pswitch_4a
        :pswitch_52
        :pswitch_52
        :pswitch_5a
        :pswitch_62
        :pswitch_6b
        :pswitch_74
    .end packed-switch
.end method

.method private isInReducedAddressMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 437
    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getBillingAddressType()I

    move-result v1

    if-eq v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private requiresPhoneNumber()Z
    .registers 2

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BillingAddress;->isInReducedAddressMode()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/google/android/finsky/config/G;->reducedBillingAddressRequiresPhonenumber:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public clearErrorMessage()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 285
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressWidget;->clearErrorMessage()V

    .line 288
    return-void
.end method

.method public displayError(Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;)Landroid/widget/TextView;
    .registers 9
    .parameter "error"

    .prologue
    const/4 v6, 0x0

    .line 294
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, errorMessage:Ljava/lang/String;
    const/4 v2, 0x0

    .line 296
    .local v2, textView:Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 297
    .local v0, addressField:Lcom/android/i18n/addressinput/AddressField;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->getInputField()I

    move-result v3

    packed-switch v3, :pswitch_data_68

    .line 331
    const-string v3, "InputValidationError that can\'t be displayed: type=%d, message=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->getInputField()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    :goto_27
    if-eqz v0, :cond_36

    .line 337
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v3, v0}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5f

    .line 338
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v3, v0}, Lcom/android/i18n/addressinput/AddressWidget;->displayErrorMessageForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)Landroid/widget/TextView;

    .line 348
    :cond_36
    :goto_36
    return-object v2

    .line 299
    :pswitch_37
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    .line 300
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 303
    :pswitch_3d
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    .line 304
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 307
    :pswitch_43
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    .line 308
    goto :goto_27

    .line 310
    :pswitch_46
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    .line 311
    goto :goto_27

    .line 313
    :pswitch_49
    const-string v3, "Input error ADDR_WHOLE_ADDRESS. Displaying at ADDRESS_LINE_1."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    :pswitch_50
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    .line 317
    goto :goto_27

    .line 319
    :pswitch_53
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    .line 320
    goto :goto_27

    .line 322
    :pswitch_56
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    .line 323
    goto :goto_27

    .line 325
    :pswitch_59
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    .line 326
    goto :goto_27

    .line 328
    :pswitch_5c
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    .line 329
    goto :goto_27

    .line 343
    :cond_5f
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    .line 344
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 297
    nop

    :pswitch_data_68
    .packed-switch 0x4
        :pswitch_37
        :pswitch_50
        :pswitch_53
        :pswitch_46
        :pswitch_43
        :pswitch_59
        :pswitch_5c
        :pswitch_56
        :pswitch_3d
        :pswitch_49
    .end packed-switch
.end method

.method public getAddress()Lcom/google/android/finsky/remoting/protos/Address;
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 428
    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 429
    .local v0, address:Lcom/android/i18n/addressinput/AddressData;
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BillingAddress;->requiresPhoneNumber()Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, phoneNumber:Ljava/lang/String;
    :goto_17
    iget-object v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getBillingAddressType()I

    move-result v4

    if-eq v4, v3, :cond_33

    :goto_1f
    invoke-static {v0, v2, v3}, Lcom/google/android/finsky/billing/BillingUtils;->instrumentAddressFromAddressData(Lcom/android/i18n/addressinput/AddressData;Ljava/lang/String;Z)Lcom/google/android/finsky/remoting/protos/Address;

    move-result-object v1

    .line 432
    .local v1, billingAddress:Lcom/google/android/finsky/remoting/protos/Address;
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/remoting/protos/Address;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Address;

    .line 433
    return-object v1

    .line 429
    .end local v1           #billingAddress:Lcom/google/android/finsky/remoting/protos/Address;
    .end local v2           #phoneNumber:Ljava/lang/String;
    :cond_31
    const/4 v2, 0x0

    goto :goto_17

    .line 430
    .restart local v2       #phoneNumber:Ljava/lang/String;
    :cond_33
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public getAddressValidationErrors()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 405
    .local v2, validationErrors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;>;"
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressProblems()Lcom/android/i18n/addressinput/AddressProblems;

    move-result-object v0

    .line 406
    .local v0, addressProblems:Lcom/android/i18n/addressinput/AddressProblems;
    invoke-direct {p0, v0, v2}, Lcom/google/android/finsky/layout/BillingAddress;->addressProblemsToInputValidationErrors(Lcom/android/i18n/addressinput/AddressProblems;Ljava/util/List;)V

    .line 409
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 410
    new-instance v3, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;

    invoke-direct {v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->setInputField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f07004a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->setErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_39
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BillingAddress;->requiresPhoneNumber()Z

    move-result v1

    .line 414
    .local v1, requiresPhoneNumber:Z
    if-eqz v1, :cond_6c

    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 416
    new-instance v3, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;

    invoke-direct {v3}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;-><init>()V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->setInputField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f07004f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;->setErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$InputValidationError;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_6c
    return-object v2
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 87
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    .line 88
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    .line 89
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    .line 90
    return-void
.end method

.method public onInitialized()V
    .registers 5

    .prologue
    .line 114
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mInitializationStateListener:Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;

    if-eqz v2, :cond_9

    .line 115
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mInitializationStateListener:Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;

    invoke-interface {v2}, Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;->onInitialized()V

    .line 118
    :cond_9
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v2, v3}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, zipCodeView:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_21

    move-object v0, v1

    .line 121
    check-cast v0, Landroid/widget/TextView;

    .line 122
    .local v0, zipCodeTextView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    or-int/lit16 v2, v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 125
    .end local v0           #zipCodeTextView:Landroid/widget/TextView;
    :cond_21
    return-void
.end method

.method public onInitializing()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mInitializationStateListener:Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;

    if-eqz v0, :cond_9

    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mInitializationStateListener:Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;->onInitializing()V

    .line 110
    :cond_9
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "inState"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    sget-object v1, Lcom/google/android/finsky/layout/BillingAddress;->KEY_BILLING_ADDRESS_NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    sget-object v1, Lcom/google/android/finsky/layout/BillingAddress;->KEY_BILLING_ADDRESS_PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    if-eqz v0, :cond_1f

    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 141
    :cond_1f
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 128
    sget-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_BILLING_ADDRESS_NAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_BILLING_ADDRESS_PHONE_NUMBER:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    if-eqz v0, :cond_27

    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->saveInstanceState(Landroid/os/Bundle;)V

    .line 133
    :cond_27
    return-void
.end method

.method public setAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;)V
    .registers 4
    .parameter "selectedCountry"
    .parameter "spec"

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/BillingAddress;->setAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;Lcom/google/android/finsky/remoting/protos/Address;)V

    .line 219
    return-void
.end method

.method public setAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;Lcom/google/android/finsky/remoting/protos/Address;)V
    .registers 14
    .parameter "selectedCountry"
    .parameter "spec"
    .parameter "savedAddress"

    .prologue
    const v5, 0x7f080043

    const/4 v4, 0x1

    .line 231
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinnerSelectionSet:Z

    if-nez v0, :cond_37

    .line 234
    const/4 v9, -0x1

    .line 235
    .local v9, selectedPosition:I
    const/4 v8, 0x0

    .line 236
    .local v8, position:I
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    .line 237
    .local v6, country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 238
    move v9, v8

    .line 240
    :cond_2b
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 242
    .end local v6           #country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    :cond_2e
    if-ltz v9, :cond_37

    .line 243
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 244
    iput-boolean v4, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinnerSelectionSet:Z

    .line 248
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #position:I
    .end local v9           #selectedPosition:I
    :cond_37
    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    .line 249
    iput-object p2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 251
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getBillingAddressType()I

    move-result v0

    if-eq v0, v4, :cond_b4

    .line 252
    sget-object v0, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->REDUCED_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils;->getAddressFormOptions(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/android/i18n/addressinput/FormOptions;

    move-result-object v3

    .line 254
    .local v3, addressFormOptions:Lcom/android/i18n/addressinput/FormOptions;
    sget-object v0, Lcom/google/android/finsky/config/G;->reducedBillingAddressRequiresPhonenumber:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 255
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_5e
    :goto_5e
    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 262
    .local v2, addressPlaceholder:Landroid/view/ViewGroup;
    if-eqz p3, :cond_c3

    .line 263
    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/Address;->hasName()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 264
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/Address;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_78
    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/Address;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 267
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/Address;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_87
    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCache()Lcom/android/volley/Cache;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;-><init>(Lcom/android/volley/Cache;)V

    invoke-static {p3}, Lcom/google/android/finsky/billing/BillingUtils;->addressDataFromInstrumentAddress(Lcom/google/android/finsky/remoting/protos/Address;)Lcom/android/i18n/addressinput/AddressData;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/addressinput/AddressWidget;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;Lcom/android/i18n/addressinput/AddressData;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    .line 277
    :goto_a3
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    invoke-virtual {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressWidget;->updateWidgetOnCountryChange(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p0}, Lcom/android/i18n/addressinput/AddressWidget;->setListener(Lcom/android/i18n/addressinput/AddressWidget$Listener;)V

    .line 279
    return-void

    .line 258
    .end local v2           #addressPlaceholder:Landroid/view/ViewGroup;
    .end local v3           #addressFormOptions:Lcom/android/i18n/addressinput/FormOptions;
    :cond_b4
    sget-object v0, Lcom/google/android/finsky/billing/BillingUtils$AddressMode;->FULL_ADDRESS:Lcom/google/android/finsky/billing/BillingUtils$AddressMode;

    invoke-static {v0}, Lcom/google/android/finsky/billing/BillingUtils;->getAddressFormOptions(Lcom/google/android/finsky/billing/BillingUtils$AddressMode;)Lcom/android/i18n/addressinput/FormOptions;

    move-result-object v3

    .line 259
    .restart local v3       #addressFormOptions:Lcom/android/i18n/addressinput/FormOptions;
    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5e

    .line 273
    .restart local v2       #addressPlaceholder:Landroid/view/ViewGroup;
    :cond_c3
    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCache()Lcom/android/volley/Cache;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;-><init>(Lcom/android/volley/Cache;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/i18n/addressinput/AddressWidget;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    goto :goto_a3
.end method

.method public setBillingCountries(Ljava/util/List;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountries:Ljava/util/List;

    .line 179
    const v3, 0x7f080041

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    .line 180
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 182
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v1, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 185
    .local v1, countrySpinnerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/google/android/finsky/layout/BillingAddress$CountrySpinnerItem;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 187
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    .line 188
    .local v0, country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    new-instance v3, Lcom/google/android/finsky/layout/BillingAddress$CountrySpinnerItem;

    invoke-direct {v3, v0}, Lcom/google/android/finsky/layout/BillingAddress$CountrySpinnerItem;-><init>(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)V

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3b

    .line 190
    .end local v0           #country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    :cond_50
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 191
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/google/android/finsky/layout/BillingAddress$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/layout/BillingAddress$1;-><init>(Lcom/google/android/finsky/layout/BillingAddress;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 209
    return-void
.end method

.method public setBillingCountryChangeListener(Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountryChangeListener:Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;

    .line 149
    return-void
.end method

.method public setInitializationStateListener(Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;)V
    .registers 2
    .parameter "initializationStateListener"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mInitializationStateListener:Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;

    .line 102
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .parameter "cardholderName"

    .prologue
    .line 156
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1c

    .line 158
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_1c
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 4
    .parameter "phoneNumber"

    .prologue
    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :cond_1b
    return-void
.end method
