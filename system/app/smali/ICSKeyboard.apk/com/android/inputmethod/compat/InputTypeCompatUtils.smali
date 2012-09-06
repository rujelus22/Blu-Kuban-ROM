.class public Lcom/android/inputmethod/compat/InputTypeCompatUtils;
.super Ljava/lang/Object;
.source "InputTypeCompatUtils.java"


# static fields
.field private static final FIELD_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/reflect/Field; = null

.field private static final FIELD_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/reflect/Field; = null

.field private static final FIELD_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/reflect/Field; = null

#the value of this static final field might be set in the static constructor
.field private static final NUMBER_PASSWORD_INPUT_TYPE:I = 0x0

.field private static final OBJ_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/Integer; = null

.field private static final OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer; = null

.field private static final OBJ_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/Integer; = null

.field private static final TEXT_PASSWORD_INPUT_TYPE:I = 0x81

.field private static final TEXT_VISIBLE_PASSWORD_INPUT_TYPE:I = 0x91

.field private static final WEB_TEXT_EMAIL_ADDRESS_INPUT_TYPE:I

.field private static final WEB_TEXT_PASSWORD_INPUT_TYPE:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 25
    const-class v0, Landroid/text/InputType;

    const-string v2, "TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS"

    invoke-static {v0, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 24
    sput-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/reflect/Field;

    .line 27
    const-class v0, Landroid/text/InputType;

    const-string v2, "TYPE_TEXT_VARIATION_WEB_PASSWORD"

    invoke-static {v0, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/reflect/Field;

    .line 29
    const-class v0, Landroid/text/InputType;

    const-string v2, "TYPE_NUMBER_VARIATION_PASSWORD"

    invoke-static {v0, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 28
    sput-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/reflect/Field;

    .line 32
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/reflect/Field;

    .line 31
    invoke-static {v3, v3, v0}, Lcom/android/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 30
    sput-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

    .line 35
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/reflect/Field;

    .line 34
    invoke-static {v3, v3, v0}, Lcom/android/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 33
    sput-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/Integer;

    .line 38
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->FIELD_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/reflect/Field;

    .line 37
    invoke-static {v3, v3, v0}, Lcom/android/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 36
    sput-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/Integer;

    .line 49
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/Integer;

    if-eqz v0, :cond_69

    .line 50
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_PASSWORD:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    .line 48
    :goto_4a
    sput v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_PASSWORD_INPUT_TYPE:I

    .line 53
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

    if-eqz v0, :cond_6b

    .line 55
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 54
    or-int/lit8 v0, v0, 0x1

    .line 52
    :goto_58
    sput v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_EMAIL_ADDRESS_INPUT_TYPE:I

    .line 58
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/Integer;

    if-eqz v0, :cond_66

    .line 59
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_NUMBER_VARIATION_PASSWORD:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v1, v0, 0x2

    .line 57
    :cond_66
    sput v1, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->NUMBER_PASSWORD_INPUT_TYPE:I

    .line 23
    return-void

    :cond_69
    move v0, v1

    .line 51
    goto :goto_4a

    :cond_6b
    move v0, v1

    .line 56
    goto :goto_58
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmailVariation(I)Z
    .registers 2
    .parameter "variation"

    .prologue
    .line 93
    const/16 v0, 0x20

    if-eq p0, v0, :cond_c

    .line 94
    invoke-static {p0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isWebEmailAddressVariation(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    .line 93
    goto :goto_b
.end method

.method private static isNumberPasswordInputType(I)Z
    .registers 2
    .parameter "inputType"

    .prologue
    .line 79
    sget v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->NUMBER_PASSWORD_INPUT_TYPE:I

    if-eqz v0, :cond_a

    .line 80
    sget v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->NUMBER_PASSWORD_INPUT_TYPE:I

    if-ne p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    .line 79
    goto :goto_9
.end method

.method public static isPasswordInputType(I)Z
    .registers 3
    .parameter "inputType"

    .prologue
    .line 107
    and-int/lit16 v0, p0, 0xfff

    .line 108
    .local v0, maskedInputType:I
    invoke-static {v0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isTextPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {v0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isWebPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 109
    invoke-static {v0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isNumberPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x0

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    .line 108
    goto :goto_15
.end method

.method private static isTextPasswordInputType(I)Z
    .registers 2
    .parameter "inputType"

    .prologue
    .line 84
    const/16 v0, 0x81

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isVisiblePasswordInputType(I)Z
    .registers 3
    .parameter "inputType"

    .prologue
    .line 115
    and-int/lit16 v0, p0, 0xfff

    .line 116
    .local v0, maskedInputType:I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private static isWebEditTextInputType(I)Z
    .registers 2
    .parameter "inputType"

    .prologue
    .line 64
    const/16 v0, 0xa1

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isWebEmailAddressInputType(I)Z
    .registers 2
    .parameter "inputType"

    .prologue
    .line 74
    sget v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_EMAIL_ADDRESS_INPUT_TYPE:I

    if-eqz v0, :cond_a

    .line 75
    sget v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_EMAIL_ADDRESS_INPUT_TYPE:I

    if-ne p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    .line 74
    goto :goto_9
.end method

.method private static isWebEmailAddressVariation(I)Z
    .registers 2
    .parameter "variation"

    .prologue
    .line 88
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 89
    sget-object v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->OBJ_InputType_TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    .line 88
    goto :goto_d
.end method

.method public static isWebInputType(I)Z
    .registers 3
    .parameter "inputType"

    .prologue
    .line 99
    and-int/lit16 v0, p0, 0xfff

    .line 100
    .local v0, maskedInputType:I
    invoke-static {v0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isWebEditTextInputType(I)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {v0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isWebPasswordInputType(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 101
    invoke-static {v0}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isWebEmailAddressInputType(I)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x0

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    .line 100
    goto :goto_15
.end method

.method private static isWebPasswordInputType(I)Z
    .registers 2
    .parameter "inputType"

    .prologue
    .line 69
    sget v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_PASSWORD_INPUT_TYPE:I

    if-eqz v0, :cond_a

    .line 70
    sget v0, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->WEB_TEXT_PASSWORD_INPUT_TYPE:I

    if-ne p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    .line 69
    goto :goto_9
.end method
