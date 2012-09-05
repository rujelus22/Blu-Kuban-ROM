.class public Lcom/android/email/activity/ActivityResourceInterface;
.super Ljava/lang/Object;
.source "ActivityResourceInterface.java"


# static fields
.field public static FEATURE_DISABLE_3G:Z

.field private static mCtx:Landroid/content/Context;

.field private static sMessageDecodeErrorString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/ActivityResourceInterface;->FEATURE_DISABLE_3G:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExchangeSettingActivityClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    const-class v0, Lcom/android/email/activity/setup/AccountSetupExchange;

    return-object v0
.end method

.method public static getFolderProperties_email_left_icon_folder_favorite(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "context"

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getFolderProperties_email_left_icon_inbox(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter "context"

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getFolderProperties_getDisplayName(IJ)Ljava/lang/String;
    .registers 6
    .parameter "type"
    .parameter "mailboxId"

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 211
    .local v0, resId:I
    const-wide/16 v1, -0x2

    cmp-long v1, p1, v1

    if-nez v1, :cond_13

    .line 212
    const v0, 0x7f08009a

    .line 220
    :cond_a
    :goto_a
    if-eqz v0, :cond_31

    .line 221
    sget-object v1, Lcom/android/email/activity/ActivityResourceInterface;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    :goto_12
    return-object v1

    .line 213
    :cond_13
    const-wide/16 v1, -0x4

    cmp-long v1, p1, v1

    if-nez v1, :cond_1d

    .line 214
    const v0, 0x7f080097

    goto :goto_a

    .line 215
    :cond_1d
    const-wide/16 v1, -0x5

    cmp-long v1, p1, v1

    if-nez v1, :cond_27

    .line 216
    const v0, 0x7f080098

    goto :goto_a

    .line 217
    :cond_27
    const-wide/16 v1, -0x6

    cmp-long v1, p1, v1

    if-nez v1, :cond_a

    .line 218
    const v0, 0x7f080099

    goto :goto_a

    .line 224
    :cond_31
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static getFolderProperties_mailbox_display_icons(Landroid/content/Context;)Landroid/content/res/TypedArray;
    .registers 3
    .parameter "context"

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static getFolderProperties_mailbox_display_names(Landroid/content/Context;)[Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getId_account_colors()I
    .registers 1

    .prologue
    .line 312
    const v0, 0x7f0a0029

    return v0
.end method

.method public static getId_combined_view_account_colors()I
    .registers 1

    .prologue
    .line 304
    const v0, 0x7f0a0027

    return v0
.end method

.method public static getId_combined_view_account_colors_2()I
    .registers 1

    .prologue
    .line 308
    const v0, 0x7f0a0028

    return v0
.end method

.method public static getId_recipient_dropdown_item()I
    .registers 1

    .prologue
    .line 296
    const v0, 0x7f0400b2

    return v0
.end method

.method public static getId_recipient_dropdown_item_loading()I
    .registers 1

    .prologue
    .line 300
    const v0, 0x7f0400b3

    return v0
.end method

.method public static getId_senders()I
    .registers 1

    .prologue
    .line 284
    const v0, 0x7f060010

    return v0
.end method

.method public static getId_senders_product()I
    .registers 1

    .prologue
    .line 280
    const v0, 0x7f060011

    return v0
.end method

.method public static getId_stores()I
    .registers 1

    .prologue
    .line 292
    const v0, 0x7f060012

    return v0
.end method

.method public static getId_stores_product()I
    .registers 1

    .prologue
    .line 288
    const v0, 0x7f060013

    return v0
.end method

.method public static getIncomingSettingActivityClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    const-class v0, Lcom/android/email/activity/setup/AccountSetupIncoming;

    return-object v0
.end method

.method public static getMailboxDisplayName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .parameter "ctx"
    .parameter "mailboxType"

    .prologue
    .line 44
    const/4 v0, -0x1

    .line 45
    .local v0, resId:I
    sparse-switch p1, :sswitch_data_30

    .line 77
    :goto_4
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_b
    return-object v1

    .line 47
    :sswitch_c
    const v0, 0x7f080047

    .line 48
    goto :goto_4

    .line 50
    :sswitch_10
    const v0, 0x7f080048

    .line 51
    goto :goto_4

    .line 53
    :sswitch_14
    const v0, 0x7f080049

    .line 54
    goto :goto_4

    .line 56
    :sswitch_18
    const v0, 0x7f08004a

    .line 57
    goto :goto_4

    .line 59
    :sswitch_1c
    const v0, 0x7f08004b

    .line 60
    goto :goto_4

    .line 62
    :sswitch_20
    const v0, 0x7f08004c

    .line 63
    goto :goto_4

    .line 67
    :sswitch_24
    const v0, 0x7f08033f

    .line 68
    goto :goto_4

    .line 72
    :sswitch_28
    const v0, 0x7f080153

    goto :goto_4

    .line 77
    :cond_2c
    const-string v1, ""

    goto :goto_b

    .line 45
    nop

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_c
        0x3 -> :sswitch_14
        0x4 -> :sswitch_10
        0x5 -> :sswitch_1c
        0x6 -> :sswitch_18
        0x7 -> :sswitch_20
        0x8 -> :sswitch_24
        0x62 -> :sswitch_28
    .end sparse-switch
.end method

.method public static getMailboxServerName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .parameter "ctx"
    .parameter "mailboxType"

    .prologue
    .line 83
    const/4 v0, -0x1

    .line 84
    .local v0, resId:I
    sparse-switch p1, :sswitch_data_30

    .line 116
    :goto_4
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_b
    return-object v1

    .line 86
    :sswitch_c
    const v0, 0x7f08000c

    .line 87
    goto :goto_4

    .line 89
    :sswitch_10
    const v0, 0x7f08000d

    .line 90
    goto :goto_4

    .line 92
    :sswitch_14
    const v0, 0x7f08000e

    .line 93
    goto :goto_4

    .line 95
    :sswitch_18
    const v0, 0x7f08000f

    .line 96
    goto :goto_4

    .line 98
    :sswitch_1c
    const v0, 0x7f080010

    .line 99
    goto :goto_4

    .line 101
    :sswitch_20
    const v0, 0x7f080011

    .line 102
    goto :goto_4

    .line 106
    :sswitch_24
    const v0, 0x7f08033f

    .line 107
    goto :goto_4

    .line 111
    :sswitch_28
    const v0, 0x7f080153

    goto :goto_4

    .line 116
    :cond_2c
    const-string v1, ""

    goto :goto_b

    .line 84
    nop

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_c
        0x3 -> :sswitch_14
        0x4 -> :sswitch_10
        0x5 -> :sswitch_1c
        0x6 -> :sswitch_18
        0x7 -> :sswitch_20
        0x8 -> :sswitch_24
        0x62 -> :sswitch_28
    .end sparse-switch
.end method

.method public static getMessageDecodeErrorString()Ljava/lang/String;
    .registers 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/email/activity/ActivityResourceInterface;->sMessageDecodeErrorString:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/email/activity/ActivityResourceInterface;->sMessageDecodeErrorString:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public static getMessagingExceptionErrorStringResourceId(Lcom/android/emailcommon/mail/MessagingException;)I
    .registers 6
    .parameter "e"

    .prologue
    const v1, 0x7f080114

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 228
    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Email;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_16

    move v0, v2

    .line 231
    .local v0, isAirPlaneEnabled:Z
    :cond_16
    if-eqz v0, :cond_30

    invoke-static {}, Lcom/android/email/EmailUtility;->isNetworkConnected()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {p0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v3

    if-eq v3, v2, :cond_2c

    invoke-virtual {p0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_30

    .line 234
    :cond_2c
    const v1, 0x7f080576

    .line 268
    :goto_2f
    :sswitch_2f
    return v1

    .line 237
    :cond_30
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    sparse-switch v2, :sswitch_data_64

    .line 268
    const v1, 0x7f0800b5

    goto :goto_2f

    .line 239
    :sswitch_3b
    const v1, 0x7f080115

    goto :goto_2f

    .line 241
    :sswitch_3f
    const v1, 0x7f080112

    goto :goto_2f

    .line 243
    :sswitch_43
    const v1, 0x7f080113

    goto :goto_2f

    .line 247
    :sswitch_47
    const v1, 0x7f08010b

    goto :goto_2f

    .line 254
    :sswitch_4b
    const v1, 0x7f08010d

    goto :goto_2f

    .line 257
    :sswitch_4f
    const v1, 0x7f0805be

    goto :goto_2f

    .line 259
    :sswitch_53
    const v1, 0x7f0805bf

    goto :goto_2f

    .line 261
    :sswitch_57
    const v1, 0x7f0805c0

    goto :goto_2f

    .line 263
    :sswitch_5b
    const v1, 0x7f0805c1

    goto :goto_2f

    .line 265
    :sswitch_5f
    const v1, 0x7f0805c2

    goto :goto_2f

    .line 237
    nop

    :sswitch_data_64
    .sparse-switch
        0x1 -> :sswitch_3b
        0x2 -> :sswitch_3f
        0x3 -> :sswitch_43
        0x4 -> :sswitch_2f
        0x5 -> :sswitch_47
        0x7 -> :sswitch_2f
        0x4a -> :sswitch_4b
        0x50001 -> :sswitch_4f
        0x50002 -> :sswitch_53
        0x50003 -> :sswitch_57
        0x50004 -> :sswitch_5b
        0x50005 -> :sswitch_5f
    .end sparse-switch
.end method

.method public static getOutgoingSettingActivityClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    const-class v0, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    return-object v0
.end method

.method public static getRawMimeTypesId()I
    .registers 1

    .prologue
    .line 272
    const v0, 0x7f070001

    return v0
.end method

.method public static getSetupPopImapSetupIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2
    .parameter "ctx"

    .prologue
    .line 387
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionSetupPopImapIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getString_prefs_email_default_path_value(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .parameter "ctx"

    .prologue
    .line 132
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 124
    sput-object p0, Lcom/android/email/activity/ActivityResourceInterface;->mCtx:Landroid/content/Context;

    .line 126
    invoke-static {p0}, Lcom/android/email/activity/utils/ProgressTracker;->getInstance(Landroid/content/Context;)Lcom/android/email/activity/utils/ProgressTracker;

    .line 128
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/ActivityResourceInterface;->sMessageDecodeErrorString:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public static makeDisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "context"
    .parameter "packedTo"
    .parameter "packedCc"
    .parameter "packedBcc"

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 166
    const/4 v2, 0x0

    .line 167
    .local v2, first:Lcom/android/emailcommon/mail/Address;
    const/4 v6, 0x0

    .line 168
    .local v6, nRecipients:I
    const/4 v8, 0x3

    new-array v1, v8, [Ljava/lang/String;

    aput-object p1, v1, v10

    aput-object p2, v1, v11

    aput-object p3, v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_10
    if-ge v4, v5, :cond_24

    aget-object v7, v1, v4

    .line 171
    .local v7, packed:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 172
    .local v0, addresses:[Lcom/android/emailcommon/mail/Address;
    array-length v8, v0

    add-int/2addr v6, v8

    .line 173
    if-nez v2, :cond_21

    array-length v8, v0

    if-lez v8, :cond_21

    .line 174
    aget-object v2, v0, v10

    .line 168
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 177
    .end local v0           #addresses:[Lcom/android/emailcommon/mail/Address;
    .end local v7           #packed:Ljava/lang/String;
    :cond_24
    if-nez v6, :cond_29

    .line 178
    const-string v3, ""

    .line 187
    :cond_28
    :goto_28
    return-object v3

    .line 180
    :cond_29
    const-string v3, ""

    .line 181
    .local v3, friendly:Ljava/lang/String;
    if-eqz v2, :cond_31

    .line 182
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v3

    .line 184
    :cond_31
    if-eq v6, v11, :cond_28

    .line 187
    const v8, 0x7f0800c1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v10

    add-int/lit8 v10, v6, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_28
.end method

.method public static openDebugSettingScreen(Landroid/content/Context;)V
    .registers 1
    .parameter "ctx"

    .prologue
    .line 383
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->actionSettingsWithDebug(Landroid/content/Context;)V

    .line 384
    return-void
.end method

.method public static updateAllWidgets()V
    .registers 1

    .prologue
    .line 398
    invoke-static {}, Lcom/android/email/widget/WidgetManager;->getInstance()Lcom/android/email/widget/WidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/widget/WidgetManager;->updateAllWidgets()V

    .line 399
    return-void
.end method
