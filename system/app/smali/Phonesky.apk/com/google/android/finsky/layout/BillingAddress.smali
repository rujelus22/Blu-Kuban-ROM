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
.field private static KEY_ADDRESS_SPEC:Ljava/lang/String;

.field private static KEY_SELECTED_COUNTRY:Ljava/lang/String;


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

.field private mEmailAddress:Landroid/widget/EditText;

.field private mFirstName:Landroid/widget/EditText;

.field private mInitializationStateListener:Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;

.field private mLastName:Landroid/widget/EditText;

.field private mNameEntry:Landroid/widget/EditText;

.field private mPhoneNumber:Landroid/widget/EditText;

.field private mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string v0, "address_spec"

    sput-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_ADDRESS_SPEC:Ljava/lang/String;

    .line 50
    const-string v0, "selected_country"

    sput-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_SELECTED_COUNTRY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinnerSelectionSet:Z

    .line 85
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 87
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040011

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/BillingAddress;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountries:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/BillingAddress;)Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountryChangeListener:Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;

    return-object v0
.end method

.method private static addressFieldToAddressEnum(Lcom/android/i18n/addressinput/AddressField;)I
    .registers 3
    .parameter "addressField"

    .prologue
    .line 369
    sget-object v0, Lcom/google/android/finsky/layout/BillingAddress$2;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 386
    const/4 v0, -0x1

    :goto_c
    return v0

    .line 371
    :pswitch_d
    const/16 v0, 0x8

    goto :goto_c

    .line 373
    :pswitch_10
    const/4 v0, 0x7

    goto :goto_c

    .line 376
    :pswitch_12
    const/4 v0, 0x5

    goto :goto_c

    .line 378
    :pswitch_14
    const/4 v0, 0x6

    goto :goto_c

    .line 380
    :pswitch_16
    const/16 v0, 0xb

    goto :goto_c

    .line 382
    :pswitch_19
    const/16 v0, 0x9

    goto :goto_c

    .line 384
    :pswitch_1c
    const/16 v0, 0xa

    goto :goto_c

    .line 369
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
        :pswitch_12
        :pswitch_12
        :pswitch_14
        :pswitch_16
        :pswitch_19
        :pswitch_1c
    .end packed-switch
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
            "Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p2, validationErrors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;>;"
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressProblems;->getProblems()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 480
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/i18n/addressinput/AddressField;Lcom/android/i18n/addressinput/AddressProblemType;>;"
    sget-object v4, Lcom/google/android/finsky/layout/BillingAddress$2;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_5a

    .line 504
    const/16 v1, 0xd

    .line 505
    .local v1, field:I
    const-string v3, "No equivalent for address widget field: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    :goto_3a
    new-instance v3, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    invoke-direct {v3}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;-><init>()V

    invoke-virtual {v3, v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->setInputField(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 482
    .end local v1           #field:I
    :pswitch_47
    const/16 v1, 0x8

    .line 483
    .restart local v1       #field:I
    goto :goto_3a

    .line 485
    .end local v1           #field:I
    :pswitch_4a
    const/4 v1, 0x7

    .line 486
    .restart local v1       #field:I
    goto :goto_3a

    .line 489
    .end local v1           #field:I
    :pswitch_4c
    const/4 v1, 0x5

    .line 490
    .restart local v1       #field:I
    goto :goto_3a

    .line 492
    .end local v1           #field:I
    :pswitch_4e
    const/4 v1, 0x6

    .line 493
    .restart local v1       #field:I
    goto :goto_3a

    .line 495
    .end local v1           #field:I
    :pswitch_50
    const/16 v1, 0xb

    .line 496
    .restart local v1       #field:I
    goto :goto_3a

    .line 498
    .end local v1           #field:I
    :pswitch_53
    const/16 v1, 0x9

    .line 499
    .restart local v1       #field:I
    goto :goto_3a

    .line 501
    .end local v1           #field:I
    :pswitch_56
    const/16 v1, 0xa

    .line 502
    .restart local v1       #field:I
    goto :goto_3a

    .line 509
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/i18n/addressinput/AddressField;Lcom/android/i18n/addressinput/AddressProblemType;>;"
    .end local v1           #field:I
    :cond_59
    return-void

    .line 480
    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_47
        :pswitch_4a
        :pswitch_4c
        :pswitch_4c
        :pswitch_4e
        :pswitch_50
        :pswitch_53
        :pswitch_56
    .end packed-switch
.end method

.method private isInReducedAddressMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 584
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

.method private optionsFromInputFieldList(Ljava/util/List;)Lcom/android/i18n/addressinput/FormOptions;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/i18n/addressinput/FormOptions;"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, addressEnums:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/android/i18n/addressinput/FormOptions$Builder;

    invoke-direct {v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;-><init>()V

    .line 357
    .local v2, b:Lcom/android/i18n/addressinput/FormOptions$Builder;
    sget-object v6, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v2, v6}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v6, v7}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v6, v7}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    .line 359
    invoke-static {}, Lcom/android/i18n/addressinput/AddressField;->values()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v1

    .local v1, arr$:[Lcom/android/i18n/addressinput/AddressField;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1c
    if-ge v4, v5, :cond_34

    aget-object v3, v1, v4

    .line 360
    .local v3, field:Lcom/android/i18n/addressinput/AddressField;
    invoke-static {v3}, Lcom/google/android/finsky/layout/BillingAddress;->addressFieldToAddressEnum(Lcom/android/i18n/addressinput/AddressField;)I

    move-result v0

    .line 361
    .local v0, addressEnum:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 362
    invoke-virtual {v2, v3}, Lcom/android/i18n/addressinput/FormOptions$Builder;->hide(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/FormOptions$Builder;

    .line 359
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 365
    .end local v0           #addressEnum:I
    .end local v3           #field:Lcom/android/i18n/addressinput/AddressField;
    :cond_34
    invoke-virtual {v2}, Lcom/android/i18n/addressinput/FormOptions$Builder;->build()Lcom/android/i18n/addressinput/FormOptions;

    move-result-object v6

    return-object v6
.end method

.method private static populatedRequiredFieldsFromAddressType(ILcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;)V
    .registers 4
    .parameter "billingAddressType"
    .parameter "spec"

    .prologue
    const/16 v1, 0xc

    .line 335
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->addRequiredField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 336
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->addRequiredField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 337
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->addRequiredField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 338
    const/4 v0, 0x1

    if-ne p0, v0, :cond_28

    .line 340
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->addRequiredField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 341
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->addRequiredField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 342
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->addRequiredField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 343
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->addRequiredField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 344
    invoke-virtual {p1, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->addRequiredField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 352
    :cond_27
    :goto_27
    return-void

    .line 348
    :cond_28
    sget-object v0, Lcom/google/android/finsky/config/G;->reducedBillingAddressRequiresPhonenumber:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 349
    invoke-virtual {p1, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->addRequiredField(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    goto :goto_27
.end method

.method private static validateEmailAddress(Ljava/lang/CharSequence;)Z
    .registers 2
    .parameter "emailAddress"

    .prologue
    .line 580
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearErrorMessage()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 394
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressWidget;->clearErrorMessage()V

    .line 400
    return-void
.end method

.method public displayError(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;)Landroid/widget/TextView;
    .registers 9
    .parameter "error"

    .prologue
    const/4 v6, 0x0

    .line 406
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, errorMessage:Ljava/lang/String;
    const/4 v2, 0x0

    .line 408
    .local v2, textView:Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 409
    .local v0, addressField:Lcom/android/i18n/addressinput/AddressField;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getInputField()I

    move-result v3

    packed-switch v3, :pswitch_data_7a

    .line 455
    :pswitch_e
    const-string v3, "InputValidationError that can\'t be displayed: type=%d, message=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getInputField()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    :goto_27
    if-eqz v0, :cond_36

    .line 461
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v3, v0}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_71

    .line 462
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v3, v0}, Lcom/android/i18n/addressinput/AddressWidget;->displayErrorMessageForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)Landroid/widget/TextView;

    .line 472
    :cond_36
    :goto_36
    return-object v2

    .line 411
    :pswitch_37
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    .line 412
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 415
    :pswitch_3d
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    .line 416
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 419
    :pswitch_43
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    .line 420
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 423
    :pswitch_49
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    .line 424
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 427
    :pswitch_4f
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    .line 428
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_27

    .line 431
    :pswitch_55
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    .line 432
    goto :goto_27

    .line 434
    :pswitch_58
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    .line 435
    goto :goto_27

    .line 437
    :pswitch_5b
    const-string v3, "Input error ADDR_WHOLE_ADDRESS. Displaying at ADDRESS_LINE_1."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    :pswitch_62
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    .line 441
    goto :goto_27

    .line 443
    :pswitch_65
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    .line 444
    goto :goto_27

    .line 446
    :pswitch_68
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    .line 447
    goto :goto_27

    .line 449
    :pswitch_6b
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    .line 450
    goto :goto_27

    .line 452
    :pswitch_6e
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    .line 453
    goto :goto_27

    .line 467
    :cond_71
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    .line 468
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 409
    nop

    :pswitch_data_7a
    .packed-switch 0x4
        :pswitch_37
        :pswitch_62
        :pswitch_65
        :pswitch_58
        :pswitch_55
        :pswitch_6b
        :pswitch_6e
        :pswitch_68
        :pswitch_49
        :pswitch_5b
        :pswitch_e
        :pswitch_3d
        :pswitch_43
        :pswitch_4f
    .end packed-switch
.end method

.method public getAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .registers 4

    .prologue
    .line 557
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v2}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 558
    .local v0, address:Lcom/android/i18n/addressinput/AddressData;
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getRequiredFieldList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/finsky/billing/BillingUtils;->instrumentAddressFromAddressData(Lcom/android/i18n/addressinput/AddressData;Ljava/util/List;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v1

    .line 560
    .local v1, billingAddress:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    invoke-direct {p0}, Lcom/google/android/finsky/layout/BillingAddress;->isInReducedAddressMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setDeprecatedIsReduced(Z)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 561
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2c

    .line 562
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setPhoneNumber(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 564
    :cond_2c
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_41

    .line 565
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 567
    :cond_41
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_56

    .line 568
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setFirstName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 570
    :cond_56
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6b

    .line 571
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setLastName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 573
    :cond_6b
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_80

    .line 574
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->setEmail(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 576
    :cond_80
    return-object v1
.end method

.method public getAddressValidationErrors()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    const v4, 0x7f070045

    .line 519
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 520
    .local v1, validationErrors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;>;"
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v2}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressProblems()Lcom/android/i18n/addressinput/AddressProblems;

    move-result-object v0

    .line 521
    .local v0, addressProblems:Lcom/android/i18n/addressinput/AddressProblems;
    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/layout/BillingAddress;->addressProblemsToInputValidationErrors(Lcom/android/i18n/addressinput/AddressProblems;Ljava/util/List;)V

    .line 523
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3d

    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 525
    new-instance v2, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    invoke-direct {v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->setInputField(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->setErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_3d
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6b

    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 530
    new-instance v2, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    invoke-direct {v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;-><init>()V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->setInputField(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->setErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_6b
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_99

    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 535
    new-instance v2, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    invoke-direct {v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;-><init>()V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->setInputField(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->setErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    :cond_99
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_ca

    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/billing/BillingUtils;->isEmptyOrSpaces(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 540
    new-instance v2, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    invoke-direct {v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;-><init>()V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->setInputField(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070048

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->setErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_ca
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_fb

    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/layout/BillingAddress;->validateEmailAddress(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fb

    .line 545
    new-instance v2, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    invoke-direct {v2}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;-><init>()V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->setInputField(I)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070049

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;->setErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ChallengeProtos$InputValidationError;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_fb
    return-object v1
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 93
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    .line 94
    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    .line 95
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    .line 96
    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    .line 97
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    .line 98
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    .line 99
    return-void
.end method

.method public onInitialized()V
    .registers 5

    .prologue
    .line 134
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mInitializationStateListener:Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;

    if-eqz v2, :cond_9

    .line 135
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mInitializationStateListener:Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;

    invoke-interface {v2}, Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;->onInitialized()V

    .line 138
    :cond_9
    iget-object v2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v2, v3}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, zipCodeView:Landroid/view/View;
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_21

    move-object v0, v1

    .line 141
    check-cast v0, Landroid/widget/TextView;

    .line 142
    .local v0, zipCodeTextView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    or-int/lit16 v2, v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 145
    .end local v0           #zipCodeTextView:Landroid/widget/TextView;
    :cond_21
    return-void
.end method

.method public onInitializing()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mInitializationStateListener:Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;

    if-eqz v0, :cond_9

    .line 128
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mInitializationStateListener:Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;

    invoke-interface {v0}, Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;->onInitializing()V

    .line 130
    :cond_9
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "inState"

    .prologue
    .line 161
    sget-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_ADDRESS_SPEC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 162
    sget-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_ADDRESS_SPEC:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 163
    sget-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_SELECTED_COUNTRY:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/ParcelableProto;->getProtoFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    .line 164
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/BillingAddress;->setAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 167
    :cond_28
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    if-eqz v0, :cond_f

    .line 149
    sget-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_ADDRESS_SPEC:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 151
    :cond_f
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    if-eqz v0, :cond_1e

    .line 152
    sget-object v0, Lcom/google/android/finsky/layout/BillingAddress;->KEY_SELECTED_COUNTRY:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    invoke-static {v1}, Lcom/google/android/finsky/utils/ParcelableProto;->forProto(Lcom/google/protobuf/micro/MessageMicro;)Lcom/google/android/finsky/utils/ParcelableProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 155
    :cond_1e
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    if-eqz v0, :cond_27

    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->saveInstanceState(Landroid/os/Bundle;)V

    .line 158
    :cond_27
    return-void
.end method

.method public setAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;)V
    .registers 4
    .parameter "selectedCountry"
    .parameter "spec"

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/BillingAddress;->setAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)V

    .line 247
    return-void
.end method

.method public setAddressSpec(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)V
    .registers 15
    .parameter "selectedCountry"
    .parameter "spec"
    .parameter "savedAddress"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 259
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinnerSelectionSet:Z

    if-nez v0, :cond_37

    .line 262
    const/4 v10, -0x1

    .line 263
    .local v10, selectedPosition:I
    const/4 v8, 0x0

    .line 264
    .local v8, position:I
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    .line 265
    .local v6, country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 266
    move v10, v8

    .line 268
    :cond_2a
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 270
    .end local v6           #country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    :cond_2d
    if-ltz v10, :cond_37

    .line 271
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinnerSelectionSet:Z

    .line 276
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #position:I
    .end local v10           #selectedPosition:I
    :cond_37
    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    .line 277
    iput-object p2, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressSpec:Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;

    .line 279
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getRequiredFieldCount()I

    move-result v0

    if-nez v0, :cond_48

    .line 280
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getBillingAddressType()I

    move-result v0

    invoke-static {v0, p2}, Lcom/google/android/finsky/layout/BillingAddress;->populatedRequiredFieldsFromAddressType(ILcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;)V

    .line 282
    :cond_48
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getRequiredFieldList()Ljava/util/List;

    move-result-object v9

    .line 283
    .local v9, requiredFields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$BillingAddressSpec;->getRequiredFieldList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->optionsFromInputFieldList(Ljava/util/List;)Lcom/android/i18n/addressinput/FormOptions;

    move-result-object v3

    .line 284
    .local v3, addressFormOptions:Lcom/android/i18n/addressinput/FormOptions;
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 285
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 287
    :cond_65
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 288
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 291
    :cond_7b
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 292
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 295
    :cond_91
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    .line 296
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 298
    :cond_a2
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 299
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 301
    :cond_b3
    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 302
    .local v2, addressPlaceholder:Landroid/view/ViewGroup;
    if-eqz p3, :cond_136

    .line 303
    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasName()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 304
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :cond_cd
    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasFirstName()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 307
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :cond_dc
    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasLastName()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 310
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :cond_eb
    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 313
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :cond_fa
    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 316
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {p3}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_109
    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getCache()Lcom/android/volley/Cache;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/finsky/billing/AddressMetadataCacheManager;-><init>(Lcom/android/volley/Cache;)V

    invoke-static {p3}, Lcom/google/android/finsky/billing/BillingUtils;->addressDataFromInstrumentAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/android/i18n/addressinput/AddressData;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/addressinput/AddressWidget;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;Lcom/android/i18n/addressinput/AddressData;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    .line 326
    :goto_125
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mSelectedCountry:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;

    invoke-virtual {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/AddressWidget;->updateWidgetOnCountryChange(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p0}, Lcom/android/i18n/addressinput/AddressWidget;->setListener(Lcom/android/i18n/addressinput/AddressWidget$Listener;)V

    .line 328
    return-void

    .line 322
    :cond_136
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

    goto :goto_125
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
    .line 205
    .local p1, countries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;>;"
    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountries:Ljava/util/List;

    .line 207
    const v3, 0x7f080038

    invoke-virtual {p0, v3}, Lcom/google/android/finsky/layout/BillingAddress;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    .line 208
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 210
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/BillingAddress;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v1, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 213
    .local v1, countrySpinnerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/google/android/finsky/layout/BillingAddress$CountrySpinnerItem;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 215
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

    .line 216
    .local v0, country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    new-instance v3, Lcom/google/android/finsky/layout/BillingAddress$CountrySpinnerItem;

    invoke-direct {v3, v0}, Lcom/google/android/finsky/layout/BillingAddress$CountrySpinnerItem;-><init>(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;)V

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3b

    .line 218
    .end local v0           #country:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseMetadataResponseProto$Countries$Country;
    :cond_50
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 219
    iget-object v3, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/google/android/finsky/layout/BillingAddress$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/layout/BillingAddress$1;-><init>(Lcom/google/android/finsky/layout/BillingAddress;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 237
    return-void
.end method

.method public setBillingCountryChangeListener(Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountryChangeListener:Lcom/google/android/finsky/layout/BillingAddress$BillingCountryChangeListener;

    .line 175
    return-void
.end method

.method public setDefaultName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_11

    .line 182
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_11
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mEmailAddress:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mCountrySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 110
    return-void
.end method

.method public setInitializationStateListener(Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;)V
    .registers 2
    .parameter "initializationStateListener"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/finsky/layout/BillingAddress;->mInitializationStateListener:Lcom/google/android/finsky/layout/BillingAddress$InitializationStateListener;

    .line 122
    return-void
.end method

.method public setNameInputHint(I)V
    .registers 3
    .parameter "nameHintId"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mNameEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(I)V

    .line 188
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 4
    .parameter "phoneNumber"

    .prologue
    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/layout/BillingAddress;->mPhoneNumber:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_1b
    return-void
.end method
