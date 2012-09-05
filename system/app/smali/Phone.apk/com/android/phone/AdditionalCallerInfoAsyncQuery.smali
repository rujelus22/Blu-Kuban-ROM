.class public Lcom/android/phone/AdditionalCallerInfoAsyncQuery;
.super Landroid/content/AsyncQueryHandler;
.source "AdditionalCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AdditionalCallerInfoAsyncQuery$1;,
        Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;,
        Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

.field private mContext:Landroid/content/Context;

.field private mQueryState:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 41
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_18

    :goto_11
    iput-boolean v0, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->DBG:Z

    .line 53
    iput v1, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    .line 96
    iput-object p1, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mContext:Landroid/content/Context;

    .line 98
    return-void

    :cond_18
    move v0, v1

    .line 41
    goto :goto_11
.end method

.method private findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .registers 8
    .parameter "auths"
    .parameter "accountType"

    .prologue
    .line 288
    move-object v0, p1

    .local v0, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_13

    aget-object v1, v0, v2

    .line 289
    .local v1, auth:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 293
    .end local v1           #auth:Landroid/accounts/AuthenticatorDescription;
    :goto_f
    return-object v1

    .line 288
    .restart local v1       #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 293
    .end local v1           #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 268
    iget-object v5, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 269
    .local v0, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 270
    .local v2, auths:[Landroid/accounts/AuthenticatorDescription;
    iget-object v5, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-object v5, v5, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 273
    .local v1, auth:Landroid/accounts/AuthenticatorDescription;
    iget-object v5, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 275
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_50

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_50

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_50

    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDisplayIcon : iconId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 277
    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget v6, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 279
    :cond_50
    return-object v4
.end method

.method private getTodayLunar(Ljava/util/Calendar;)[I
    .registers 9
    .parameter "rightNow"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 297
    new-instance v0, Lcom/android/phone/SolarLunarConverter;

    invoke-direct {v0}, Lcom/android/phone/SolarLunarConverter;-><init>()V

    .line 298
    .local v0, converter:Lcom/android/phone/SolarLunarConverter;
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/phone/SolarLunarConverter;->convertSolarToLunar(III)V

    .line 302
    const/4 v2, 0x3

    new-array v1, v2, [I

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/phone/SolarLunarConverter;->getYear()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0}, Lcom/android/phone/SolarLunarConverter;->getMonth()I

    move-result v2

    aput v2, v1, v5

    invoke-virtual {v0}, Lcom/android/phone/SolarLunarConverter;->getDay()I

    move-result v2

    aput v2, v1, v6

    .line 303
    .local v1, lunarDates:[I
    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->DBG:Z

    if-eqz v0, :cond_9

    .line 308
    const-string v0, "AdditionalCallerInfoAsyncQuery"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_9
    return-void
.end method

.method public static startQuery(Landroid/content/Context;JLcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;)V
    .registers 22
    .parameter "context"
    .parameter "contactID"
    .parameter "onQueryCompleteListener"

    .prologue
    .line 103
    new-instance v2, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;-><init>(Landroid/content/Context;)V

    .line 105
    .local v2, c:Lcom/android/phone/AdditionalCallerInfoAsyncQuery;
    new-instance v4, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;

    const/4 v3, 0x0

    invoke-direct {v4, v3}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$1;)V

    .line 106
    .local v4, cw:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;
    move-wide/from16 v0, p1

    iput-wide v0, v4, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;->contactID:J

    .line 107
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 110
    const-string v3, "display_sns_info"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 111
    const-string v15, "requesting_package"

    .line 112
    .local v15, REQUESTING_PACKAGE_PARAM_KEY:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v7, "stream_items"

    invoke-virtual {v3, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v7, "requesting_package"

    const-string v8, "com.android.phone"

    invoke-virtual {v3, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 115
    .local v5, uri:Landroid/net/Uri;
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "account_name"

    aput-object v7, v6, v3

    const/4 v3, 0x1

    const-string v7, "account_type"

    aput-object v7, v6, v3

    const/4 v3, 0x2

    const-string v7, "text"

    aput-object v7, v6, v3

    .line 121
    .local v6, CONTACTS_SNS_PROJECTION:[Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "timestamp DESC"

    invoke-virtual/range {v2 .. v9}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #CONTACTS_SNS_PROJECTION:[Ljava/lang/String;
    .end local v15           #REQUESTING_PACKAGE_PARAM_KEY:Ljava/lang/String;
    :cond_59
    const-string v3, "display_birthday_info"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 128
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v17

    .line 129
    .local v17, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "limit"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 130
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 131
    .local v10, birthUri:Landroid/net/Uri;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v16, sb:Ljava/lang/StringBuilder;
    const-string v3, "contact_id= \'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\' AND "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v3, "mimetype= \'vnd.android.cursor.item/contact_event\' AND "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v3, "data2= 3"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v3, "support_korea_lunar"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 137
    const/4 v8, 0x2

    const/4 v3, 0x2

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "data1"

    aput-object v7, v11, v3

    const/4 v3, 0x1

    const-string v7, "data15"

    aput-object v7, v11, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    move-object v9, v4

    invoke-virtual/range {v7 .. v14}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v10           #birthUri:Landroid/net/Uri;
    .end local v16           #sb:Ljava/lang/StringBuilder;
    .end local v17           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_cc
    :goto_cc
    return-void

    .line 141
    .restart local v10       #birthUri:Landroid/net/Uri;
    .restart local v16       #sb:Ljava/lang/StringBuilder;
    .restart local v17       #uriBuilder:Landroid/net/Uri$Builder;
    :cond_cd
    const/4 v8, 0x2

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "data1"

    aput-object v7, v11, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    move-object v9, v4

    invoke-virtual/range {v7 .. v14}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cc
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 22
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 159
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onQueryComplete : token = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    move-object/from16 v5, p2

    .line 162
    check-cast v5, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;

    .line 164
    .local v5, cw:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    if-nez v13, :cond_2d

    .line 165
    new-instance v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    invoke-direct {v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    .line 167
    :cond_2d
    packed-switch p1, :pswitch_data_270

    .line 252
    :cond_30
    :goto_30
    const-string v13, "display_sns_info"

    invoke-static {v13}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_42

    .line 253
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    or-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    .line 254
    :cond_42
    const-string v13, "display_birthday_info"

    invoke-static {v13}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_54

    .line 255
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    or-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    .line 257
    :cond_54
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    or-int v13, v13, p1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    .line 259
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_79

    .line 260
    const-string v13, "onQueryComplete : Query complete!"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 261
    iget-object v13, v5, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v13, :cond_79

    .line 262
    iget-object v13, v5, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    invoke-interface {v13, v14}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;)V

    .line 264
    :cond_79
    return-void

    .line 169
    :pswitch_7a
    if-eqz p3, :cond_30

    .line 171
    :try_start_7c
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_106

    .line 172
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const-string v14, "account_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountName:Ljava/lang/String;

    .line 174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const-string v14, "account_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountType:Ljava/lang/String;

    .line 176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const-string v14, "text"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    .line 178
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onQueryComplete : Name = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-object v14, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Type = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-object v14, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Status : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-object v14, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mSNSDisplayIcon:Landroid/graphics/drawable/Drawable;
    :try_end_106
    .catchall {:try_start_7c .. :try_end_106} :catchall_10b

    .line 185
    :cond_106
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_30

    :catchall_10b
    move-exception v13

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v13

    .line 191
    :pswitch_110
    const/4 v9, 0x0

    .line 192
    .local v9, today:Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 193
    .local v2, birthday:Ljava/util/Calendar;
    const/4 v8, 0x0

    .line 194
    .local v8, strBirthday:Ljava/lang/String;
    const/4 v7, 0x0

    .line 195
    .local v7, isKorLunar:Z
    if-eqz p3, :cond_179

    .line 197
    :try_start_116
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_176

    .line 198
    const-string v13, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 199
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onQueryComplete : birthday = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 200
    const-string v13, "support_korea_lunar"

    invoke-static {v13}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_176

    .line 201
    const-string v13, "1"

    const-string v14, "data15"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 202
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onQueryComplete : isKorLunar = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    :try_end_176
    .catchall {:try_start_116 .. :try_end_176} :catchall_26b

    .line 206
    :cond_176
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_179
    if-eqz v8, :cond_30

    .line 210
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 211
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 212
    if-eqz v7, :cond_197

    .line 213
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->getTodayLunar(Ljava/util/Calendar;)[I

    move-result-object v10

    .line 214
    .local v10, todayLunar:[I
    const/4 v13, 0x0

    aget v13, v10, v13

    const/4 v14, 0x1

    aget v14, v10, v14

    const/4 v15, 0x2

    aget v15, v10, v15

    invoke-virtual {v9, v13, v14, v15}, Ljava/util/Calendar;->set(III)V

    .line 216
    .end local v10           #todayLunar:[I
    :cond_197
    const-string v13, "-"

    const/4 v14, 0x3

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, birthToken:[Ljava/lang/String;
    const/4 v13, 0x1

    const/4 v14, 0x1

    :try_start_1a0
    invoke-virtual {v9, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 219
    const/4 v13, 0x2

    const/4 v14, 0x1

    aget-object v14, v1, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 220
    const/4 v13, 0x5

    const/4 v14, 0x2

    aget-object v14, v1, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 221
    invoke-virtual {v9, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v13

    if-lez v13, :cond_1d8

    .line 223
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v2, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 225
    :cond_1d8
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 226
    .local v3, birthdayTime:J
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 227
    .local v11, todayTime:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    sub-long v14, v3, v11

    const-wide/32 v16, 0x5265c00

    div-long v14, v14, v16

    iput-wide v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-wide v13, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-ltz v13, :cond_205

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-wide v13, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v15, 0x7

    cmp-long v13, v13, v15

    if-lez v13, :cond_20d

    .line 231
    :cond_205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const-wide/16 v14, -0x1

    iput-wide v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    .line 234
    :cond_20d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-wide v13, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_220

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mIsBirthDay:Z

    .line 238
    :cond_220
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onQueryComplete : mRemainedDaysUntilBirthday = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-wide v14, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " isBirthDay : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-boolean v14, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mIsBirthDay:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_24e} :catch_250

    goto/16 :goto_30

    .line 241
    .end local v3           #birthdayTime:J
    .end local v11           #todayTime:J
    :catch_250
    move-exception v6

    .line 242
    .local v6, e:Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "exception"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 206
    .end local v1           #birthToken:[Ljava/lang/String;
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_26b
    move-exception v13

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v13

    .line 167
    :pswitch_data_270
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_110
    .end packed-switch
.end method
