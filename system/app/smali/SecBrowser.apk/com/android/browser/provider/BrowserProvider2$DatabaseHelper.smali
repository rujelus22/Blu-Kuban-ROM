.class final Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BrowserProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/provider/BrowserProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/provider/BrowserProvider2;


# direct methods
.method public constructor <init>(Lcom/android/browser/provider/BrowserProvider2;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    .line 445
    const-string v0, "browser2.db"

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 446
    return-void
.end method

.method private addDefaultBookmarks(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 20
    .parameter "db"
    .parameter "parentId"

    .prologue
    .line 722
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    invoke-virtual {v14}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 723
    .local v10, res:Landroid/content/res/Resources;
    const v14, 0x7f08006f

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 725
    .local v2, bookmarks:[Ljava/lang/CharSequence;
    array-length v11, v2

    .line 726
    .local v11, size:I
    const v14, 0x7f08005b

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 728
    .local v9, preloads:Landroid/content/res/TypedArray;
    :try_start_1b
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 729
    .local v8, parent:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 730
    .local v7, now:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_28
    if-ge v5, v11, :cond_eb

    .line 731
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    invoke-virtual {v14}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v14

    add-int/lit8 v15, v5, 0x1

    aget-object v15, v2, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 733
    .local v1, bookmarkDestination:Ljava/lang/CharSequence;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "INSERT INTO bookmarks (title, url, folder,parent,position,created) VALUES (\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v2, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\', "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\', "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "0,"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ");"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 749
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v14

    if-nez v14, :cond_e2

    .line 750
    const/4 v14, 0x0

    invoke-virtual {v9, v5, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 751
    .local v4, faviconId:I
    add-int/lit8 v14, v5, 0x1

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_aa
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1b .. :try_end_aa} :catch_ea

    move-result v13

    .line 752
    .local v13, thumbId:I
    const/4 v12, 0x0

    .local v12, thumb:[B
    const/4 v3, 0x0

    .line 754
    .local v3, favicon:[B
    :try_start_ad
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->readRaw(Landroid/content/res/Resources;I)[B
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b2} :catch_e6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_ad .. :try_end_b2} :catch_ea

    move-result-object v12

    .line 758
    :goto_b3
    :try_start_b3
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->readRaw(Landroid/content/res/Resources;I)[B
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b8} :catch_e8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b3 .. :try_end_b8} :catch_ea

    move-result-object v3

    .line 761
    :goto_b9
    if-nez v12, :cond_bd

    if-eqz v3, :cond_e2

    .line 762
    :cond_bd
    :try_start_bd
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 763
    .local v6, imageValues:Landroid/content/ContentValues;
    const-string v14, "url_key"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    if-eqz v3, :cond_d2

    .line 765
    const-string v14, "favicon"

    invoke-virtual {v6, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 767
    :cond_d2
    if-eqz v12, :cond_d9

    .line 768
    const-string v14, "thumbnail"

    invoke-virtual {v6, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 770
    :cond_d9
    const-string v14, "images"

    const-string v15, "favicon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_e2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_bd .. :try_end_e2} :catch_ea

    .line 730
    .end local v3           #favicon:[B
    .end local v4           #faviconId:I
    .end local v6           #imageValues:Landroid/content/ContentValues;
    .end local v12           #thumb:[B
    .end local v13           #thumbId:I
    :cond_e2
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_28

    .line 755
    .restart local v3       #favicon:[B
    .restart local v4       #faviconId:I
    .restart local v12       #thumb:[B
    .restart local v13       #thumbId:I
    :catch_e6
    move-exception v14

    goto :goto_b3

    .line 759
    :catch_e8
    move-exception v14

    goto :goto_b9

    .line 774
    .end local v1           #bookmarkDestination:Ljava/lang/CharSequence;
    .end local v3           #favicon:[B
    .end local v4           #faviconId:I
    .end local v5           #i:I
    .end local v7           #now:Ljava/lang/String;
    .end local v8           #parent:Ljava/lang/String;
    .end local v12           #thumb:[B
    .end local v13           #thumbId:I
    :catch_ea
    move-exception v14

    .line 776
    :cond_eb
    return-void
.end method

.method private createDefaultBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .parameter "db"

    .prologue
    const-wide/16 v4, 0x1

    const/4 v3, 0x1

    .line 705
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 709
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 710
    const-string v1, "sync3"

    const-string v2, "google_chrome_bookmarks"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v1, "title"

    const-string v2, "Bookmarks"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v1, "parent"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 713
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 714
    const-string v1, "folder"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 715
    const-string v1, "dirty"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 716
    const-string v1, "bookmarks"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 718
    invoke-direct {p0, p1, v4, v5}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->addDefaultBookmarks(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 719
    return-void
.end method

.method private getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 10
    .parameter "cr"

    .prologue
    .line 800
    const-string v7, "android-google"

    .line 801
    .local v7, ret:Ljava/lang/String;
    const/4 v6, 0x0

    .line 803
    .local v6, c:Landroid/database/Cursor;
    :try_start_3
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'client_id\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 805
    if-eqz v6, :cond_27

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 806
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_34
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_26} :catch_2d

    move-result-object v7

    .line 811
    :cond_27
    if-eqz v6, :cond_2c

    .line 812
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 815
    :cond_2c
    :goto_2c
    return-object v7

    .line 808
    :catch_2d
    move-exception v0

    .line 811
    if-eqz v6, :cond_2c

    .line 812
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2c

    .line 811
    :catchall_34
    move-exception v0

    if-eqz v6, :cond_3a

    .line 812
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3a
    throw v0
.end method

.method private readRaw(Landroid/content/res/Resources;I)[B
    .registers 8
    .parameter "res"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 779
    if-nez p2, :cond_4

    .line 780
    const/4 v4, 0x0

    .line 793
    :goto_3
    return-object v4

    .line 782
    :cond_4
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 784
    .local v2, is:Ljava/io/InputStream;
    :try_start_8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 785
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x1000

    new-array v1, v4, [B

    .line 787
    .local v1, buf:[B
    :goto_11
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, read:I
    if-lez v3, :cond_21

    .line 788
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_1c

    goto :goto_11

    .line 793
    .end local v0           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buf:[B
    .end local v3           #read:I
    :catchall_1c
    move-exception v4

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v4

    .line 790
    .restart local v0       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buf:[B
    .restart local v3       #read:I
    :cond_21
    :try_start_21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 791
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_1c

    move-result-object v4

    .line 793
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_3
.end method

.method private replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 12
    .parameter "context"
    .parameter "srcString"

    .prologue
    .line 819
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 820
    .local v7, sb:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 822
    .local v5, lastCharLoc:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 824
    .local v1, client_id:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v2, v8, :cond_58

    .line 825
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 826
    .local v0, c:C
    const/16 v8, 0x7b

    if-ne v0, v8, :cond_4c

    .line 827
    invoke-interface {p2, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 828
    move v5, v2

    .line 830
    move v3, v2

    .local v3, j:I
    :goto_26
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v3, v8, :cond_4c

    .line 831
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 832
    .local v4, k:C
    const/16 v8, 0x7d

    if-ne v4, v8, :cond_55

    .line 833
    add-int/lit8 v8, v2, 0x1

    invoke-interface {p2, v8, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 834
    .local v6, propertyKeyValue:Ljava/lang/String;
    const-string v8, "CLIENT_ID"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 835
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 839
    :goto_49
    add-int/lit8 v5, v3, 0x1

    .line 840
    move v2, v3

    .line 824
    .end local v3           #j:I
    .end local v4           #k:C
    .end local v6           #propertyKeyValue:Ljava/lang/String;
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 837
    .restart local v3       #j:I
    .restart local v4       #k:C
    .restart local v6       #propertyKeyValue:Ljava/lang/String;
    :cond_4f
    const-string v8, "unknown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_49

    .line 830
    .end local v6           #propertyKeyValue:Ljava/lang/String;
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 846
    .end local v0           #c:C
    .end local v3           #j:I
    .end local v4           #k:C
    :cond_58
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v5

    if-lez v8, :cond_6a

    .line 848
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {p2, v5, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 850
    :cond_6a
    return-object v7
.end method


# virtual methods
.method createAccountsView(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 654
    const-string v0, "CREATE VIEW IF NOT EXISTS v_accounts AS SELECT NULL AS account_name, NULL AS account_type, 1 AS root_id UNION ALL SELECT account_name, account_type, _id AS root_id FROM bookmarks WHERE sync3 = \"bookmark_bar\" AND deleted = 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method createOmniboxSuggestions(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 536
    const-string v0, "CREATE VIEW IF NOT EXISTS v_omnibox_suggestions  AS   SELECT _id, url, title, 1 AS bookmark, 0 AS visits, 0 AS date  FROM bookmarks   WHERE deleted = 0 AND folder = 0   UNION ALL   SELECT _id, url, title, 0 AS bookmark, visits, date   FROM history   WHERE url NOT IN (SELECT url FROM bookmarks    WHERE deleted = 0 AND folder = 0)   ORDER BY bookmark DESC, visits DESC, date DESC "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method createOpbookmarks(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 528
    const-string v0, "CREATE TABLE opbookmarks (_id INTEGER PRIMARY KEY AUTOINCREMENT,bookmark_id INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method createThumbnails(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 540
    const-string v0, "CREATE TABLE IF NOT EXISTS thumbnails (_id INTEGER PRIMARY KEY,thumbnail BLOB NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method enableSync(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 12
    .parameter "db"

    .prologue
    const/4 v9, 0x1

    .line 547
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 548
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "key"

    const-string v8, "sync_enabled"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v7, "value"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 550
    iget-object v7, p0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    #calls: Lcom/android/browser/provider/BrowserProvider2;->insertSettingsInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    invoke-static {v7, p1, v6}, Lcom/android/browser/provider/BrowserProvider2;->access$000(Lcom/android/browser/provider/BrowserProvider2;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    .line 552
    iget-object v7, p0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    invoke-virtual {v7}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "account"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    .line 554
    .local v2, am:Landroid/accounts/AccountManager;
    if-nez v2, :cond_2c

    .line 571
    :cond_2b
    return-void

    .line 557
    :cond_2c
    const-string v7, "com.google"

    invoke-virtual {v2, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 558
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_2b

    array-length v7, v1

    if-eqz v7, :cond_2b

    .line 561
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3a
    if-ge v4, v5, :cond_2b

    aget-object v0, v3, v4

    .line 562
    .local v0, account:Landroid/accounts/Account;
    const-string v7, "com.android.browser"

    invoke-static {v0, v7}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_50

    .line 565
    const-string v7, "com.android.browser"

    invoke-static {v0, v7, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 567
    const-string v7, "com.android.browser"

    invoke-static {v0, v7, v9}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 561
    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a
.end method

.method importFromBrowserProvider(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 18
    .parameter "db"

    .prologue
    .line 574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    invoke-virtual {v3}, Lcom/android/browser/provider/BrowserProvider2;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 575
    .local v10, context:Landroid/content/Context;
    const-string v3, "browser.db"

    invoke-virtual {v10, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 576
    .local v14, oldDbFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_18c

    .line 577
    new-instance v12, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;

    invoke-direct {v12, v10}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 579
    .local v12, helper:Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;
    invoke-virtual {v12}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 580
    .local v1, oldDb:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 582
    .local v9, c:Landroid/database/Cursor;
    :try_start_1e
    sget-object v3, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 584
    .local v2, table:Ljava/lang/String;
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "favicon"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "touch_icon"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "created"

    aput-object v5, v3, v4

    const-string v4, "bookmark!=0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 593
    if-eqz v9, :cond_f3

    .line 594
    :goto_4b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 595
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 596
    .local v15, values:Landroid/content/ContentValues;
    const-string v3, "url"

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v3, "title"

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v3, "created"

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    const-string v3, "position"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    const-string v3, "parent"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 601
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 602
    .local v13, imageValues:Landroid/content/ContentValues;
    const-string v3, "url_key"

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v3, "favicon"

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 604
    const-string v3, "touch_icon"

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_b0
    .catchall {:try_start_1e .. :try_end_b0} :catchall_e3

    .line 606
    :try_start_b0
    const-string v3, "images"

    const-string v4, "thumbnail"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 607
    const-string v3, "bookmarks"

    const-string v4, "dirty"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v15}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_c2
    .catchall {:try_start_b0 .. :try_end_c2} :catchall_e3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_b0 .. :try_end_c2} :catch_c3

    goto :goto_4b

    .line 608
    :catch_c3
    move-exception v11

    .line 609
    .local v11, e:Landroid/database/sqlite/SQLiteConstraintException;
    :try_start_c4
    const-string v3, "BrowserProvider2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate found so not adding url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catchall {:try_start_c4 .. :try_end_e1} :catchall_e3

    goto/16 :goto_4b

    .line 641
    .end local v2           #table:Ljava/lang/String;
    .end local v11           #e:Landroid/database/sqlite/SQLiteConstraintException;
    .end local v13           #imageValues:Landroid/content/ContentValues;
    .end local v15           #values:Landroid/content/ContentValues;
    :catchall_e3
    move-exception v3

    if-eqz v9, :cond_e9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 642
    :cond_e9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 643
    invoke-virtual {v12}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;->close()V

    throw v3

    .line 613
    .restart local v2       #table:Ljava/lang/String;
    :cond_f0
    :try_start_f0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 616
    :cond_f3
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "visits"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "date"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "created"

    aput-object v5, v3, v4

    const-string v4, "visits > 0 OR bookmark = 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 626
    if-eqz v9, :cond_171

    .line 627
    :goto_11b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_16e

    .line 628
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 629
    .restart local v15       #values:Landroid/content/ContentValues;
    const-string v3, "url"

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v3, "title"

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v3, "visits"

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 632
    const-string v3, "date"

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 633
    const-string v3, "created"

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 634
    const-string v3, "history"

    const-string v4, "favicon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v15}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_11b

    .line 636
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_16e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 639
    :cond_171
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_176
    .catchall {:try_start_f0 .. :try_end_176} :catchall_e3

    .line 641
    if-eqz v9, :cond_17b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 642
    :cond_17b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 643
    invoke-virtual {v12}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;->close()V

    .line 645
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_18a

    .line 646
    invoke-virtual {v14}, Ljava/io/File;->deleteOnExit()V

    .line 648
    :cond_18a
    const/4 v3, 0x1

    .line 650
    .end local v1           #oldDb:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #table:Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v12           #helper:Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;
    :goto_18b
    return v3

    :cond_18c
    const/4 v3, 0x0

    goto :goto_18b
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 450
    const-string v0, "CREATE TABLE bookmarks(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT,folder INTEGER NOT NULL DEFAULT 0,parent INTEGER,position INTEGER NOT NULL,insert_after INTEGER,deleted INTEGER NOT NULL DEFAULT 0,account_name TEXT,account_type TEXT,sourceid TEXT,version INTEGER NOT NULL DEFAULT 1,created INTEGER,modified INTEGER,dirty INTEGER NOT NULL DEFAULT 0,sync1 TEXT,sync2 TEXT,sync3 TEXT,sync4 TEXT,sync5 TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 475
    const-string v0, "CREATE TABLE history(_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,url TEXT NOT NULL,created INTEGER,date INTEGER,visits INTEGER NOT NULL DEFAULT 0,user_entered INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 485
    const-string v0, "CREATE TABLE images (url_key TEXT UNIQUE NOT NULL,favicon BLOB,thumbnail BLOB,touch_icon BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 491
    const-string v0, "CREATE INDEX imagesUrlIndex ON images(url_key)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 494
    const-string v0, "CREATE TABLE searches (_id INTEGER PRIMARY KEY AUTOINCREMENT,search TEXT,date LONG);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 500
    const-string v0, "CREATE TABLE settings (key TEXT PRIMARY KEY,value TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->createOpbookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 510
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->createAccountsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->createThumbnails(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 513
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 515
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->importFromBrowserProvider(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 516
    invoke-direct {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->createDefaultBookmarks(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 519
    :cond_37
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->enableSync(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 520
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->createOmniboxSuggestions(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 521
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 700
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 701
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 702
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 669
    const/16 v0, 0x20

    if-ge p2, v0, :cond_7

    .line 670
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->createOmniboxSuggestions(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 672
    :cond_7
    const/16 v0, 0x1f

    if-ge p2, v0, :cond_e

    .line 673
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->createThumbnails(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 675
    :cond_e
    const/16 v0, 0x1e

    if-ge p2, v0, :cond_1c

    .line 676
    const-string v0, "DROP VIEW IF EXISTS v_snapshots_combined"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 677
    const-string v0, "DROP TABLE IF EXISTS snapshots"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 679
    :cond_1c
    const/16 v0, 0x1c

    if-ge p2, v0, :cond_23

    .line 680
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->enableSync(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 682
    :cond_23
    const/16 v0, 0x1b

    if-ge p2, v0, :cond_2a

    .line 683
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->createAccountsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 685
    :cond_2a
    const/16 v0, 0x1a

    if-ge p2, v0, :cond_33

    .line 686
    const-string v0, "DROP VIEW IF EXISTS combined"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 688
    :cond_33
    const/16 v0, 0x19

    if-ge p2, v0, :cond_5d

    .line 689
    const-string v0, "DROP TABLE IF EXISTS bookmarks"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 690
    const-string v0, "DROP TABLE IF EXISTS history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 691
    const-string v0, "DROP TABLE IF EXISTS searches"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 692
    const-string v0, "DROP TABLE IF EXISTS images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 693
    const-string v0, "DROP TABLE IF EXISTS settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->this$0:Lcom/android/browser/provider/BrowserProvider2;

    iget-object v0, v0, Lcom/android/browser/provider/BrowserProvider2;->mSyncHelper:Lcom/android/common/content/SyncStateContentProviderHelper;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/accounts/Account;

    invoke-virtual {v0, p1, v1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onAccountsChanged(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V

    .line 695
    invoke-virtual {p0, p1}, Lcom/android/browser/provider/BrowserProvider2$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 697
    :cond_5d
    return-void
.end method
