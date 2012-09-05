.class public Lcom/android/bluetooth/pbap/SimVCardComposer;
.super Ljava/lang/Object;
.source "SimVCardComposer.java"


# static fields
.field public static final SIM_CONTACT_PROJECTION:[Ljava/lang/String;

.field public static final SIM_URI:Landroid/net/Uri;


# instance fields
.field private final mCharset:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mEndPoint:I

.field private mErrorReason:Ljava/lang/String;

.field private final mIsDoCoMo:Z

.field private mStartPoint:I

.field private mTerminateIsCalled:Z

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 73
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/pbap/SimVCardComposer;->SIM_URI:Landroid/net/Uri;

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "emails"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "adn_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/SimVCardComposer;->SIM_CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "vcardType"

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/pbap/SimVCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-string v3, "No error"

    iput-object v3, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mErrorReason:Ljava/lang/String;

    .line 128
    const-string v3, "SimVCardComposer"

    const-string v4, "SimVCardComposer"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput-object p1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mContext:Landroid/content/Context;

    .line 130
    iput p2, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mVCardType:I

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 133
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mIsDoCoMo:Z

    .line 135
    if-eqz p3, :cond_28

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 137
    :cond_28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "characterset"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_86

    .line 138
    const-string p3, "EUC-KR"

    .line 144
    :cond_36
    :goto_36
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_44

    const-string v3, "UTF-8"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_45

    :cond_44
    move v1, v2

    .line 147
    .local v1, shouldAppendCharsetParam:Z
    :cond_45
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mIsDoCoMo:Z

    if-nez v2, :cond_4b

    if-eqz v1, :cond_63

    .line 148
    :cond_4b
    const-string v2, "SHIFT_JIS"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 149
    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mIsDoCoMo:Z

    if-eqz v2, :cond_94

    .line 151
    :try_start_57
    const-string v2, "SHIFT_JIS"

    const-string v3, "docomo"

    invoke-static {v2, v3}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_62
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_57 .. :try_end_62} :catch_89

    move-result-object p3

    .line 169
    :cond_63
    :goto_63
    iput-object p3, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCharset:Ljava/lang/String;

    .line 170
    const-string v2, "SimVCardComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Use the charset \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 140
    .end local v1           #shouldAppendCharsetParam:Z
    :cond_86
    const-string p3, "UTF-8"

    goto :goto_36

    .line 152
    .restart local v1       #shouldAppendCharsetParam:Z
    :catch_89
    move-exception v0

    .line 153
    .local v0, e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "SimVCardComposer"

    const-string v3, "DoCoMo-specific SHIFT_JIS was not found. Use SHIFT_JIS as is."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string p3, "SHIFT_JIS"

    .line 156
    goto :goto_63

    .line 159
    .end local v0           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :cond_94
    :try_start_94
    const-string v2, "SHIFT_JIS"

    invoke-static {v2}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_9d
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_94 .. :try_end_9d} :catch_9f

    move-result-object p3

    goto :goto_63

    .line 160
    :catch_9f
    move-exception v0

    .line 161
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "SimVCardComposer"

    const-string v3, "Career-specific SHIFT_JIS was not found. Use SHIFT_JIS as is."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string p3, "SHIFT_JIS"

    goto :goto_63
.end method


# virtual methods
.method public buildSimVCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .parameter "name"
    .parameter "number"
    .parameter "emails"

    .prologue
    .line 174
    const-string v12, "SimVCardComposer"

    const-string v13, "buildSimVCard"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .local v7, nameContentValues:Landroid/content/ContentValues;
    const-string v12, "data1"

    move-object/from16 v0, p1

    invoke-virtual {v7, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v12, "data2"

    move-object/from16 v0, p1

    invoke-virtual {v7, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v8, nameContentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 185
    .local v9, numberContentValues:Landroid/content/ContentValues;
    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 186
    .local v11, type:Ljava/lang/Integer;
    const-string v12, "data2"

    invoke-virtual {v9, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v12, "data1"

    move-object/from16 v0, p2

    invoke-virtual {v9, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v10, numberContentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    const-string v12, "SimVCardComposer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "buildSimVCard: nameContentValues = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  numberContentValues = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a1

    .line 198
    const-string v12, ","

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, emailArray:[Ljava/lang/String;
    :goto_70
    if-nez v3, :cond_a3

    .line 204
    const/4 v2, 0x0

    .line 208
    .local v2, count:I
    :goto_73
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v5, emailsContentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_79
    if-ge v6, v2, :cond_b4

    aget-object v12, v3, v6

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b4

    .line 210
    if-nez v6, :cond_a5

    .line 211
    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 217
    :goto_8a
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v4, emailContentValues:Landroid/content/ContentValues;
    const-string v12, "data2"

    invoke-virtual {v4, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string v12, "data1"

    aget-object v13, v3, v6

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v6, v6, 0x1

    goto :goto_79

    .line 200
    .end local v2           #count:I
    .end local v3           #emailArray:[Ljava/lang/String;
    .end local v4           #emailContentValues:Landroid/content/ContentValues;
    .end local v5           #emailsContentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v6           #i:I
    :cond_a1
    const/4 v3, 0x0

    .restart local v3       #emailArray:[Ljava/lang/String;
    goto :goto_70

    .line 206
    :cond_a3
    array-length v2, v3

    .restart local v2       #count:I
    goto :goto_73

    .line 212
    .restart local v5       #emailsContentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v6       #i:I
    :cond_a5
    const/4 v12, 0x1

    if-ne v6, v12, :cond_ae

    .line 213
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_8a

    .line 215
    :cond_ae
    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_8a

    .line 223
    :cond_b4
    new-instance v1, Lcom/android/vcard/VCardBuilder;

    iget v12, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mVCardType:I

    iget-object v13, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCharset:Ljava/lang/String;

    invoke-direct {v1, v12, v13}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 225
    .local v1, builder:Lcom/android/vcard/VCardBuilder;
    invoke-virtual {v1, v8}, Lcom/android/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Lcom/android/vcard/VCardBuilder;->appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/android/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 227
    invoke-virtual {v1}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method public createOneEntry()Ljava/lang/String;
    .registers 6

    .prologue
    .line 271
    const-string v1, "SimVCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createOneEntry: mStartPoint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mStartPoint:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEndPoint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mEndPoint:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mStartPoint:I

    iget v2, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mEndPoint:I

    if-gt v1, v2, :cond_38

    iget-object v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 275
    :cond_38
    const-string v1, "The vCard composer object is not correctly initialized"

    iput-object v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mErrorReason:Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    .line 289
    :goto_3d
    return-object v0

    .line 279
    :cond_3e
    iget-object v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/bluetooth/pbap/SimVCardComposer;->buildSimVCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, vcard:Ljava/lang/String;
    const-string v1, "SimVCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createOneEntry: vcard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mStartPoint:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mStartPoint:I

    .line 287
    iget-object v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3d
.end method

.method public finalize()V
    .registers 3

    .prologue
    .line 308
    const-string v0, "SimVCardComposer"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mTerminateIsCalled:Z

    if-nez v0, :cond_e

    .line 310
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/SimVCardComposer;->terminate()V

    .line 312
    :cond_e
    return-void
.end method

.method public getErrorReason()Ljava/lang/String;
    .registers 3

    .prologue
    .line 326
    const-string v0, "SimVCardComposer"

    const-string v1, "getErrorReason"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init(II)Z
    .registers 11
    .parameter "startPoint"
    .parameter "endPoint"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 236
    const-string v0, "SimVCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: startPoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endPoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput p1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mStartPoint:I

    .line 239
    iput p2, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mEndPoint:I

    .line 240
    iget-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/bluetooth/pbap/SimVCardComposer;->SIM_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/pbap/SimVCardComposer;->SIM_CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    .line 241
    iget-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_47

    .line 242
    const-string v0, "SimVCardComposer"

    const-string v1, "init: mCursor = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v0, "Failed to get database information"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mErrorReason:Ljava/lang/String;

    move v0, v7

    .line 262
    :goto_46
    return v0

    .line 248
    :cond_47
    const-string v0, "SimVCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: mCursor.getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mStartPoint:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_ae

    .line 252
    :cond_77
    :try_start_77
    iget-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_a6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_77 .. :try_end_7c} :catch_84

    .line 256
    iput-object v3, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    .line 257
    const-string v0, "There\'s no exportable in the database"

    :goto_80
    iput-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mErrorReason:Ljava/lang/String;

    move v0, v7

    .line 259
    goto :goto_46

    .line 253
    :catch_84
    move-exception v6

    .line 254
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :try_start_85
    const-string v0, "SimVCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException on Cursor#close(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_85 .. :try_end_a1} :catchall_a6

    .line 256
    iput-object v3, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    .line 257
    const-string v0, "There\'s no exportable in the database"

    goto :goto_80

    .line 256
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_a6
    move-exception v0

    iput-object v3, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    .line 257
    const-string v1, "There\'s no exportable in the database"

    iput-object v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mErrorReason:Ljava/lang/String;

    .line 256
    throw v0

    .line 262
    :cond_ae
    const/4 v0, 0x1

    goto :goto_46
.end method

.method public isAfterLast()Z
    .registers 3

    .prologue
    .line 315
    const-string v0, "SimVCardComposer"

    const-string v1, "isAfterLast"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mStartPoint:I

    iget v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mEndPoint:I

    if-le v0, v1, :cond_13

    .line 317
    :cond_11
    const/4 v0, 0x1

    .line 319
    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_12
.end method

.method public terminate()V
    .registers 5

    .prologue
    .line 293
    const-string v1, "SimVCardComposer"

    const-string v2, "terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_13

    .line 296
    :try_start_b
    iget-object v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_10} :catch_17

    .line 300
    :goto_10
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mCursor:Landroid/database/Cursor;

    .line 303
    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/SimVCardComposer;->mTerminateIsCalled:Z

    .line 304
    return-void

    .line 297
    :catch_17
    move-exception v0

    .line 298
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "SimVCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteException on Cursor#close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method
