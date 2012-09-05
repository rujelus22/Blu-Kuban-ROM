.class synthetic Lcom/google/android/gm/GmailWebViewContextMenu$1;
.super Ljava/lang/Object;
.source "GmailWebViewContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/GmailWebViewContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuGroupType:[I

.field static final synthetic $SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 100
    invoke-static {}, Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;->values()[Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuGroupType:[I

    :try_start_9
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuGroupType:[I

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;->PHONE_GROUP:Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;

    invoke-virtual {v1}, Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_dc

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuGroupType:[I

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;->EMAIL_GROUP:Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;

    invoke-virtual {v1}, Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_d9

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuGroupType:[I

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;->GEO_GROUP:Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;

    invoke-virtual {v1}, Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_d6

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuGroupType:[I

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;->ANCHOR_GROUP:Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;

    invoke-virtual {v1}, Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_d3

    .line 50
    :goto_35
    invoke-static {}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->values()[Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuType:[I

    :try_start_3e
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->OPEN_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    invoke-virtual {v1}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_d0

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->COPY_LINK_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    invoke-virtual {v1}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_ce

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->SHARE_LINK_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    invoke-virtual {v1}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_cc

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->DIAL_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    invoke-virtual {v1}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_ca

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->SMS_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    invoke-virtual {v1}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_c8

    :goto_75
    :try_start_75
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ADD_CONTACT_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    invoke-virtual {v1}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_c6

    :goto_80
    :try_start_80
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->COPY_PHONE_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    invoke-virtual {v1}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_c4

    :goto_8b
    :try_start_8b
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->EMAIL_CONTACT_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    invoke-virtual {v1}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_97} :catch_c2

    :goto_97
    :try_start_97
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->COPY_MAIL_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    invoke-virtual {v1}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a3} :catch_c0

    :goto_a3
    :try_start_a3
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->MAP_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    invoke-virtual {v1}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_af} :catch_be

    :goto_af
    :try_start_af
    sget-object v0, Lcom/google/android/gm/GmailWebViewContextMenu$1;->$SwitchMap$com$android$mailcommon$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->COPY_GEO_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    invoke-virtual {v1}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_bb} :catch_bc

    :goto_bb
    return-void

    :catch_bc
    move-exception v0

    goto :goto_bb

    :catch_be
    move-exception v0

    goto :goto_af

    :catch_c0
    move-exception v0

    goto :goto_a3

    :catch_c2
    move-exception v0

    goto :goto_97

    :catch_c4
    move-exception v0

    goto :goto_8b

    :catch_c6
    move-exception v0

    goto :goto_80

    :catch_c8
    move-exception v0

    goto :goto_75

    :catch_ca
    move-exception v0

    goto :goto_6a

    :catch_cc
    move-exception v0

    goto :goto_5f

    :catch_ce
    move-exception v0

    goto :goto_54

    :catch_d0
    move-exception v0

    goto/16 :goto_49

    .line 100
    :catch_d3
    move-exception v0

    goto/16 :goto_35

    :catch_d6
    move-exception v0

    goto/16 :goto_2a

    :catch_d9
    move-exception v0

    goto/16 :goto_1f

    :catch_dc
    move-exception v0

    goto/16 :goto_14
.end method
