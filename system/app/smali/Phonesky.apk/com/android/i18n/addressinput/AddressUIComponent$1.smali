.class synthetic Lcom/android/i18n/addressinput/AddressUIComponent$1;
.super Ljava/lang/Object;
.source "AddressUIComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/AddressUIComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$i18n$addressinput$AddressField:[I

.field static final synthetic $SwitchMap$com$android$i18n$addressinput$AddressUIComponent$UIComponent:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 93
    invoke-static {}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->values()[Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressUIComponent$UIComponent:[I

    :try_start_9
    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressUIComponent$UIComponent:[I

    sget-object v1, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->SPINNER:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_52

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressUIComponent$UIComponent:[I

    sget-object v1, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_50

    .line 72
    :goto_1f
    invoke-static {}, Lcom/android/i18n/addressinput/AddressField;->values()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    :try_start_28
    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_4e

    :goto_33
    :try_start_33
    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_4c

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/android/i18n/addressinput/AddressUIComponent$1;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_4a

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    goto :goto_49

    :catch_4c
    move-exception v0

    goto :goto_3e

    :catch_4e
    move-exception v0

    goto :goto_33

    .line 93
    :catch_50
    move-exception v0

    goto :goto_1f

    :catch_52
    move-exception v0

    goto :goto_14
.end method
