.class public Lcom/android/emailcommon/utility/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;,
        Lcom/android/emailcommon/utility/Utility$ForEachAccount;,
        Lcom/android/emailcommon/utility/Utility$CursorGetter;,
        Lcom/android/emailcommon/utility/Utility$NewFileCreator;
    }
.end annotation


# static fields
.field public static final ASCII:Ljava/nio/charset/Charset;

.field private static final ATTACHMENT_META_NAME_PROJECTION:[Ljava/lang/String;

.field private static final BLOB_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

.field public static final EMPTY_LONGS:[Ljava/lang/Long;

.field public static final EMPTY_STRINGS:[Ljava/lang/String;

.field private static final INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 86
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->UTF_8:Ljava/nio/charset/Charset;

    .line 87
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->ASCII:Ljava/nio/charset/Charset;

    .line 89
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 90
    new-array v0, v2, [Ljava/lang/Long;

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->EMPTY_LONGS:[Ljava/lang/Long;

    .line 93
    const-string v0, "GMT([-+]\\d{4})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

    .line 611
    new-instance v0, Lcom/android/emailcommon/utility/Utility$3;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$3;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 618
    new-instance v0, Lcom/android/emailcommon/utility/Utility$4;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$4;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 625
    new-instance v0, Lcom/android/emailcommon/utility/Utility$5;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$5;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->STRING_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 632
    new-instance v0, Lcom/android/emailcommon/utility/Utility$6;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$6;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->BLOB_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 1004
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->ATTACHMENT_META_NAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1067
    return-void
.end method

.method public static areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 1115
    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_8
    if-nez p0, :cond_e

    if-nez p1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static final arrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .parameter "a"
    .parameter "o"

    .prologue
    .line 127
    const/4 v1, 0x0

    .local v1, i:I
    array-length v0, p0

    .local v0, count:I
    :goto_2
    if-ge v1, v0, :cond_10

    .line 128
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 132
    .end local v1           #i:I
    :goto_c
    return v1

    .line 127
    .restart local v1       #i:I
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 132
    :cond_10
    const/4 v1, -0x1

    goto :goto_c
.end method

.method public static attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z
    .registers 10
    .parameter "context"
    .parameter "attachment"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 745
    if-nez p1, :cond_5

    .line 767
    :cond_4
    :goto_4
    return v4

    .line 747
    :cond_5
    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    if-eqz v6, :cond_b

    move v4, v5

    .line 748
    goto :goto_4

    .line 749
    :cond_b
    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 753
    :try_start_13
    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_18} :catch_28

    move-result-object v1

    .line 755
    .local v1, fileUri:Landroid/net/Uri;
    :try_start_19
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_20} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_20} :catch_28

    move-result-object v2

    .line 757
    .local v2, inStream:Ljava/io/InputStream;
    :try_start_21
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_42
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_24} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_24} :catch_28

    :goto_24
    move v4, v5

    .line 761
    goto :goto_4

    .line 762
    .end local v2           #inStream:Ljava/io/InputStream;
    :catch_26
    move-exception v0

    .line 763
    .local v0, e:Ljava/io/FileNotFoundException;
    goto :goto_4

    .line 765
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #fileUri:Landroid/net/Uri;
    :catch_28
    move-exception v3

    .line 766
    .local v3, re:Ljava/lang/RuntimeException;
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attachmentExists RuntimeException="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 758
    .end local v3           #re:Ljava/lang/RuntimeException;
    .restart local v1       #fileUri:Landroid/net/Uri;
    .restart local v2       #inStream:Ljava/io/InputStream;
    :catch_42
    move-exception v4

    goto :goto_24
.end method

.method static buildLimitOneUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .parameter "original"

    .prologue
    .line 647
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "com.android.email.provider"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 649
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent;->uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p0

    .line 651
    .end local p0
    :cond_1d
    return-object p0
.end method

.method public static byteToHex(I)Ljava/lang/String;
    .registers 2
    .parameter "b"

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .registers 4
    .parameter "sb"
    .parameter "b"

    .prologue
    .line 433
    and-int/lit16 p1, p1, 0xff

    .line 434
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    const-string v0, "0123456789ABCDEF"

    and-int/lit8 v1, p1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 436
    return-object p0
.end method

.method public static cleanUpMimeDate(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "date"

    .prologue
    .line 504
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 508
    :goto_6
    return-object p0

    .line 507
    :cond_7
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 508
    goto :goto_6
.end method

.method private static decode(Ljava/nio/charset/Charset;[B)Ljava/lang/String;
    .registers 7
    .parameter "charset"
    .parameter "b"

    .prologue
    .line 393
    if-nez p1, :cond_4

    .line 394
    const/4 v1, 0x0

    .line 397
    :goto_3
    return-object v1

    .line 396
    :cond_4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 397
    .local v0, cb:Ljava/nio/CharBuffer;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->length()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B
    .registers 5
    .parameter "charset"
    .parameter "s"

    .prologue
    .line 383
    if-nez p1, :cond_4

    .line 384
    const/4 v1, 0x0

    .line 389
    :goto_3
    return-object v1

    .line 386
    :cond_4
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 387
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 388
    .local v1, bytes:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_3
.end method

.method public static findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/Account;
    .registers 21
    .parameter "context"
    .parameter "allowAccountId"
    .parameter "hostName"
    .parameter "userLogin"

    .prologue
    .line 297
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 298
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "_"

    const-string v3, "\\_"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 299
    .local v14, userName:Ljava/lang/String;
    sget-object v2, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/HostAuth;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "address like ? and login like ?  ESCAPE \'\\\' and protocol not like \"smtp\""

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x1

    aput-object v14, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 301
    .local v10, c:Landroid/database/Cursor;
    if-nez v10, :cond_2d

    new-instance v2, Lcom/android/emailcommon/provider/ProviderUnavailableException;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/ProviderUnavailableException;-><init>()V

    throw v2

    .line 319
    .local v11, c2:Landroid/database/Cursor;
    .local v12, hostAuthId:J
    :cond_2a
    :try_start_2a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 303
    .end local v11           #c2:Landroid/database/Cursor;
    .end local v12           #hostAuthId:J
    :cond_2d
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 304
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 306
    .restart local v12       #hostAuthId:J
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "hostAuthKeyRecv=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4c
    .catchall {:try_start_2a .. :try_end_4c} :catchall_70

    move-result-object v11

    .line 309
    .restart local v11       #c2:Landroid/database/Cursor;
    :cond_4d
    :try_start_4d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 310
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 311
    .local v8, accountId:J
    cmp-long v2, v8, p1

    if-eqz v2, :cond_4d

    .line 312
    move-object/from16 v0, p0

    invoke-static {v0, v8, v9}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_6b

    move-result-object v7

    .line 313
    .local v7, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v7, :cond_4d

    .line 319
    :try_start_64
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_70

    .line 323
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 326
    .end local v7           #account:Lcom/android/emailcommon/provider/Account;
    .end local v8           #accountId:J
    .end local v11           #c2:Landroid/database/Cursor;
    .end local v12           #hostAuthId:J
    :goto_6a
    return-object v7

    .line 319
    .restart local v11       #c2:Landroid/database/Cursor;
    .restart local v12       #hostAuthId:J
    :catchall_6b
    move-exception v2

    :try_start_6c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_70

    .line 323
    .end local v11           #c2:Landroid/database/Cursor;
    .end local v12           #hostAuthId:J
    :catchall_70
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_75
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 326
    const/4 v7, 0x0

    goto :goto_6a
.end method

.method public static fromUtf8([B)Ljava/lang/String;
    .registers 2
    .parameter "b"

    .prologue
    .line 407
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->decode(Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;
    .registers 16
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "column"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ITT;",
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 662
    .local p7, defaultValue:Ljava/lang/Object;,"TT;"
    .local p8, getter:Lcom/android/emailcommon/utility/Utility$CursorGetter;,"Lcom/android/emailcommon/utility/Utility$CursorGetter<TT;>;"
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->buildLimitOneUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 663
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 665
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_20

    .line 667
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 668
    invoke-interface {p8, v6, p6}, Lcom/android/emailcommon/utility/Utility$CursorGetter;->get(Landroid/database/Cursor;I)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_25

    move-result-object p7

    .line 671
    .end local p7           #defaultValue:Ljava/lang/Object;,"TT;"
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 674
    :cond_20
    :goto_20
    return-object p7

    .line 671
    .restart local p7       #defaultValue:Ljava/lang/Object;,"TT;"
    :cond_21
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_20

    :catchall_25
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;
    .registers 17
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "column"
    .parameter "defaultValue"

    .prologue
    .line 711
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;
    .registers 17
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "column"
    .parameter "defaultValue"

    .prologue
    .line 692
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static varargs getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "baseUri"
    .parameter "id"
    .parameter "projection"

    .prologue
    const/4 v1, 0x0

    .line 839
    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p4, v1, v1}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 14
    .parameter "context"
    .parameter "contentUri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    .line 815
    array-length v1, p2

    new-array v8, v1, [Ljava/lang/String;

    .line 816
    .local v8, values:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 817
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 819
    .local v6, c:Landroid/database/Cursor;
    :try_start_10
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 820
    const/4 v7, 0x0

    .local v7, i:I
    :goto_17
    array-length v1, p2

    if-ge v7, v1, :cond_28

    .line 821
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_2c

    .line 820
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 827
    .end local v7           #i:I
    :cond_23
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v8, v5

    .line 829
    .end local v8           #values:[Ljava/lang/String;
    :goto_27
    return-object v8

    .line 827
    .restart local v7       #i:I
    .restart local v8       #values:[Ljava/lang/String;
    :cond_28
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_27

    .end local v7           #i:I
    :catchall_2c
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static hasUnloadedAttachments(Landroid/content/Context;J)Z
    .registers 14
    .parameter "context"
    .parameter "messageId"

    .prologue
    const/4 v7, 0x0

    .line 780
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 781
    .local v6, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v6, :cond_8

    .line 804
    :cond_7
    :goto_7
    return v7

    .line 782
    :cond_8
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    .line 783
    .local v2, atts:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object v0, v2

    .local v0, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_f
    if-ge v4, v5, :cond_7

    aget-object v1, v0, v4

    .line 784
    .local v1, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static {p0, v1}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v8

    if-nez v8, :cond_64

    .line 789
    iget v7, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v7, v7, 0x6

    if-nez v7, :cond_4e

    .line 791
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unloaded attachment isn\'t marked for download: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {p0, v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 801
    :cond_4c
    :goto_4c
    const/4 v7, 0x1

    goto :goto_7

    .line 794
    :cond_4e
    iget-object v7, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v7, :cond_4c

    .line 797
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 798
    .local v3, cv:Landroid/content/ContentValues;
    const-string v7, "contentUri"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 799
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {p0, v7, v8, v9, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    goto :goto_4c

    .line 783
    .end local v3           #cv:Landroid/content/ContentValues;
    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_f
.end method

.method public static isFirstUtf8Byte(B)Z
    .registers 3
    .parameter "b"

    .prologue
    .line 425
    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static parseDateTimeToCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;
    .registers 9
    .parameter "date"

    .prologue
    const/16 v7, 0xd

    const/16 v5, 0xb

    const/4 v4, 0x6

    const/4 v2, 0x4

    .line 360
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x8

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x9

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xf

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 364
    .local v0, cal:Ljava/util/GregorianCalendar;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 365
    return-object v0
.end method

.method public static parseDateTimeToMillis(Ljava/lang/String;)J
    .registers 4
    .parameter "date"

    .prologue
    .line 350
    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->parseDateTimeToCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 351
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static parseEmailDateTimeToMillis(Ljava/lang/String;)J
    .registers 9
    .parameter "date"

    .prologue
    .line 374
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0xd

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe

    const/16 v6, 0x10

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x11

    const/16 v7, 0x13

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 378
    .local v0, cal:Ljava/util/GregorianCalendar;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 379
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static quoteString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 232
    if-nez p0, :cond_4

    .line 233
    const/4 p0, 0x0

    .line 239
    .end local p0
    :cond_3
    :goto_3
    return-object p0

    .line 235
    .restart local p0
    :cond_4
    const-string v0, "^\".*\"$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static replaceBareLfWithCrlf(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "str"

    .prologue
    .line 440
    const-string v0, "\r"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\r\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;
    .registers 4
    .parameter "r"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 550
    new-instance v0, Lcom/android/emailcommon/utility/Utility$2;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/utility/Utility$2;-><init>(Ljava/lang/Runnable;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/utility/Utility$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static toUtf8(Ljava/lang/String;)[B
    .registers 2
    .parameter "s"

    .prologue
    .line 402
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
