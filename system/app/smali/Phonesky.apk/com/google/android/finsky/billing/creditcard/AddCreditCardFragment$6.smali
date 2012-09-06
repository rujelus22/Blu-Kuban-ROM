.class synthetic Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$6;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$finsky$billing$BillingUtils$CreateInstrumentUiMode:[I

.field static final synthetic $SwitchMap$com$google$android$finsky$billing$creditcard$CreditCardValidator$InputField:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 526
    invoke-static {}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->values()[Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$6;->$SwitchMap$com$google$android$finsky$billing$creditcard$CreditCardValidator$InputField:[I

    :try_start_9
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$6;->$SwitchMap$com$google$android$finsky$billing$creditcard$CreditCardValidator$InputField:[I

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->NUMBER:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_6c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$6;->$SwitchMap$com$google$android$finsky$billing$creditcard$CreditCardValidator$InputField:[I

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->CVC:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$6;->$SwitchMap$com$google$android$finsky$billing$creditcard$CreditCardValidator$InputField:[I

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->EXP_MONTH:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_68

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$6;->$SwitchMap$com$google$android$finsky$billing$creditcard$CreditCardValidator$InputField:[I

    sget-object v1, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->EXP_YEAR:Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/creditcard/CreditCardValidator$InputField;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_66

    .line 211
    :goto_35
    invoke-static {}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->values()[Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$6;->$SwitchMap$com$google$android$finsky$billing$BillingUtils$CreateInstrumentUiMode:[I

    :try_start_3e
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$6;->$SwitchMap$com$google$android$finsky$billing$BillingUtils$CreateInstrumentUiMode:[I

    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->INTERNAL:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_64

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$6;->$SwitchMap$com$google$android$finsky$billing$BillingUtils$CreateInstrumentUiMode:[I

    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->PROMO_OFFER:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_62

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/finsky/billing/creditcard/AddCreditCardFragment$6;->$SwitchMap$com$google$android$finsky$billing$BillingUtils$CreateInstrumentUiMode:[I

    sget-object v1, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->SETUP_WIZARD:Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;

    invoke-virtual {v1}, Lcom/google/android/finsky/billing/BillingUtils$CreateInstrumentUiMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_60

    :goto_5f
    return-void

    :catch_60
    move-exception v0

    goto :goto_5f

    :catch_62
    move-exception v0

    goto :goto_54

    :catch_64
    move-exception v0

    goto :goto_49

    .line 526
    :catch_66
    move-exception v0

    goto :goto_35

    :catch_68
    move-exception v0

    goto :goto_2a

    :catch_6a
    move-exception v0

    goto :goto_1f

    :catch_6c
    move-exception v0

    goto :goto_14
.end method
