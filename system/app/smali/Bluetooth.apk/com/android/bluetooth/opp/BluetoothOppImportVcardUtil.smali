.class public Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;
.super Ljava/lang/Object;
.source "BluetoothOppImportVcardUtil.java"


# instance fields
.field private Charset:Ljava/lang/String;

.field private VcardType:I

.field private VcardVersion:I

.field private ctx:Landroid/content/Context;

.field private entryCount:I

.field private fileUri:Landroid/net/Uri;

.field private mAccount:Landroid/accounts/Account;

.field private mFileName:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, "BluetoothOppImportVcardUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothOppImportVcardUtil is called. file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->ctx:Landroid/content/Context;

    .line 87
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->fileUri:Landroid/net/Uri;

    .line 88
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mFileName:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mResolver:Landroid/content/ContentResolver;

    .line 90
    const-string v0, "BluetoothOppImportVcardUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->fileUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method private deleteFile()Z
    .registers 3

    .prologue
    .line 335
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 337
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 338
    const/4 v1, 0x1

    .line 340
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private parserRequestData()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, counter:Lcom/android/vcard/VCardEntryCounter;
    const/4 v2, 0x0

    .line 128
    .local v2, detector:Lcom/android/vcard/VCardSourceDetector;
    const/4 v11, 0x1

    .line 130
    .local v11, vcardVersion:I
    iget-object v13, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->ctx:Landroid/content/Context;

    if-nez v13, :cond_11

    .line 131
    const-string v12, "BluetoothOppImportVcardUtil"

    const-string v13, "parserRequestData ctx is null. something wrong"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v12, 0x0

    .line 199
    :goto_10
    return v12

    .line 136
    :cond_11
    const/4 v10, 0x0

    .line 138
    .local v10, shouldUseV30:Z
    :try_start_12
    iget-object v13, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mResolver:Landroid/content/ContentResolver;

    iget-object v14, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->fileUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 145
    .local v7, is:Ljava/io/InputStream;
    new-instance v8, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v8}, Lcom/android/vcard/VCardParser_V21;-><init>()V
    :try_end_1f
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_12 .. :try_end_1f} :catch_96

    .line 149
    .local v8, mVCardParser:Lcom/android/vcard/VCardParser;
    :try_start_1f
    new-instance v1, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v1}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_ac
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1f .. :try_end_24} :catch_55

    .line 150
    .end local v0           #counter:Lcom/android/vcard/VCardEntryCounter;
    .local v1, counter:Lcom/android/vcard/VCardEntryCounter;
    :try_start_24
    new-instance v3, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v3}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_ae
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_24 .. :try_end_29} :catch_c3

    .line 151
    .end local v2           #detector:Lcom/android/vcard/VCardSourceDetector;
    .local v3, detector:Lcom/android/vcard/VCardSourceDetector;
    :try_start_29
    invoke-virtual {v8, v1}, Lcom/android/vcard/VCardParser_V21;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 152
    invoke-virtual {v8, v3}, Lcom/android/vcard/VCardParser_V21;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 153
    invoke-virtual {v8, v7}, Lcom/android/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_b1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_29 .. :try_end_32} :catch_c6

    .line 181
    if-eqz v7, :cond_cb

    .line 183
    :try_start_34
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_51
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_34 .. :try_end_37} :catch_a8

    move-object v2, v3

    .end local v3           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v2       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v0, v1

    .line 189
    .end local v1           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v0       #counter:Lcom/android/vcard/VCardEntryCounter;
    :goto_39
    if-eqz v10, :cond_a2

    const/4 v11, 0x2

    .line 194
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #mVCardParser:Lcom/android/vcard/VCardParser;
    :goto_3c
    invoke-virtual {v2}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v13

    iput v13, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->VcardType:I

    .line 195
    invoke-virtual {v2}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->Charset:Ljava/lang/String;

    .line 196
    iput v11, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->VcardVersion:I

    .line 197
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntryCounter;->getCount()I

    move-result v13

    iput v13, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->entryCount:I

    goto :goto_10

    .line 184
    .end local v0           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v2           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v1       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v3       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v8       #mVCardParser:Lcom/android/vcard/VCardParser;
    :catch_51
    move-exception v13

    move-object v2, v3

    .end local v3           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v2       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v0, v1

    .line 185
    .end local v1           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v0       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_39

    .line 154
    :catch_55
    move-exception v5

    move-object v3, v2

    .end local v2           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v3       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v1, v0

    .line 156
    .end local v0           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v1       #counter:Lcom/android/vcard/VCardEntryCounter;
    .local v5, e1:Lcom/android/vcard/exception/VCardVersionException;
    :goto_58
    :try_start_58
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_b1
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_a4

    .line 159
    :goto_5b
    const/4 v10, 0x1

    .line 161
    :try_start_5c
    iget-object v13, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mResolver:Landroid/content/ContentResolver;

    iget-object v14, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->fileUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 168
    new-instance v9, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v9}, Lcom/android/vcard/VCardParser_V30;-><init>()V
    :try_end_69
    .catchall {:try_start_5c .. :try_end_69} :catchall_b1

    .line 172
    .end local v8           #mVCardParser:Lcom/android/vcard/VCardParser;
    .local v9, mVCardParser:Lcom/android/vcard/VCardParser;
    :try_start_69
    new-instance v0, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v0}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_b5
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_69 .. :try_end_6e} :catch_83

    .line 173
    .end local v1           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v0       #counter:Lcom/android/vcard/VCardEntryCounter;
    :try_start_6e
    new-instance v2, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v2}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_ba
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_6e .. :try_end_73} :catch_be

    .line 174
    .end local v3           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v2       #detector:Lcom/android/vcard/VCardSourceDetector;
    :try_start_73
    invoke-virtual {v9, v0}, Lcom/android/vcard/VCardParser_V30;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 175
    invoke-virtual {v9, v2}, Lcom/android/vcard/VCardParser_V30;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 176
    invoke-virtual {v9, v7}, Lcom/android/vcard/VCardParser_V30;->parse(Ljava/io/InputStream;)V
    :try_end_7c
    .catchall {:try_start_73 .. :try_end_7c} :catchall_8e
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_73 .. :try_end_7c} :catch_c1

    .line 181
    if-eqz v7, :cond_c8

    .line 183
    :try_start_7e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_9f
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_7e .. :try_end_81} :catch_96

    move-object v8, v9

    .line 185
    .end local v9           #mVCardParser:Lcom/android/vcard/VCardParser;
    .restart local v8       #mVCardParser:Lcom/android/vcard/VCardParser;
    goto :goto_39

    .line 177
    .end local v0           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v2           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v8           #mVCardParser:Lcom/android/vcard/VCardParser;
    .restart local v1       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v3       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v9       #mVCardParser:Lcom/android/vcard/VCardParser;
    :catch_83
    move-exception v6

    move-object v2, v3

    .end local v3           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v2       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v0, v1

    .line 178
    .end local v1           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v0       #counter:Lcom/android/vcard/VCardEntryCounter;
    .local v6, e2:Lcom/android/vcard/exception/VCardVersionException;
    :goto_86
    :try_start_86
    new-instance v13, Lcom/android/vcard/exception/VCardException;

    const-string v14, "vCard with unspported version."

    invoke-direct {v13, v14}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_8e

    .line 181
    .end local v6           #e2:Lcom/android/vcard/exception/VCardVersionException;
    :catchall_8e
    move-exception v13

    move-object v8, v9

    .end local v5           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .end local v9           #mVCardParser:Lcom/android/vcard/VCardParser;
    .restart local v8       #mVCardParser:Lcom/android/vcard/VCardParser;
    :goto_90
    if-eqz v7, :cond_95

    .line 183
    :try_start_92
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_a6
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_92 .. :try_end_95} :catch_96

    .line 185
    :cond_95
    :goto_95
    :try_start_95
    throw v13
    :try_end_96
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_95 .. :try_end_96} :catch_96

    .line 190
    .end local v7           #is:Ljava/io/InputStream;
    .end local v8           #mVCardParser:Lcom/android/vcard/VCardParser;
    :catch_96
    move-exception v4

    .line 191
    .local v4, e:Lcom/android/vcard/exception/VCardNestedException;
    :goto_97
    const-string v13, "BluetoothOppImportVcardUtil"

    const-string v14, "Nested Exception is found (it may be false-positive)."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 184
    .end local v4           #e:Lcom/android/vcard/exception/VCardNestedException;
    .restart local v5       #e1:Lcom/android/vcard/exception/VCardVersionException;
    .restart local v7       #is:Ljava/io/InputStream;
    .restart local v9       #mVCardParser:Lcom/android/vcard/VCardParser;
    :catch_9f
    move-exception v13

    move-object v8, v9

    .line 185
    .end local v9           #mVCardParser:Lcom/android/vcard/VCardParser;
    .restart local v8       #mVCardParser:Lcom/android/vcard/VCardParser;
    goto :goto_39

    .end local v5           #e1:Lcom/android/vcard/exception/VCardVersionException;
    :cond_a2
    move v11, v12

    .line 189
    goto :goto_3c

    .line 157
    .end local v0           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v2           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v1       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v3       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v5       #e1:Lcom/android/vcard/exception/VCardVersionException;
    :catch_a4
    move-exception v13

    goto :goto_5b

    .line 184
    .end local v1           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v3           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v5           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .restart local v0       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v2       #detector:Lcom/android/vcard/VCardSourceDetector;
    :catch_a6
    move-exception v14

    goto :goto_95

    .line 190
    .end local v0           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v2           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v1       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v3       #detector:Lcom/android/vcard/VCardSourceDetector;
    :catch_a8
    move-exception v4

    move-object v2, v3

    .end local v3           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v2       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v0, v1

    .end local v1           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v0       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_97

    .line 181
    :catchall_ac
    move-exception v13

    goto :goto_90

    .end local v0           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v1       #counter:Lcom/android/vcard/VCardEntryCounter;
    :catchall_ae
    move-exception v13

    move-object v0, v1

    .end local v1           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v0       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_90

    .end local v0           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v2           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v1       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v3       #detector:Lcom/android/vcard/VCardSourceDetector;
    :catchall_b1
    move-exception v13

    move-object v2, v3

    .end local v3           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v2       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v0, v1

    .end local v1           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v0       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_90

    .end local v0           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v2           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v8           #mVCardParser:Lcom/android/vcard/VCardParser;
    .restart local v1       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v3       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v5       #e1:Lcom/android/vcard/exception/VCardVersionException;
    .restart local v9       #mVCardParser:Lcom/android/vcard/VCardParser;
    :catchall_b5
    move-exception v13

    move-object v8, v9

    .end local v9           #mVCardParser:Lcom/android/vcard/VCardParser;
    .restart local v8       #mVCardParser:Lcom/android/vcard/VCardParser;
    move-object v2, v3

    .end local v3           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v2       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v0, v1

    .end local v1           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v0       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_90

    .end local v2           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v8           #mVCardParser:Lcom/android/vcard/VCardParser;
    .restart local v3       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v9       #mVCardParser:Lcom/android/vcard/VCardParser;
    :catchall_ba
    move-exception v13

    move-object v8, v9

    .end local v9           #mVCardParser:Lcom/android/vcard/VCardParser;
    .restart local v8       #mVCardParser:Lcom/android/vcard/VCardParser;
    move-object v2, v3

    .end local v3           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v2       #detector:Lcom/android/vcard/VCardSourceDetector;
    goto :goto_90

    .line 177
    .end local v2           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v8           #mVCardParser:Lcom/android/vcard/VCardParser;
    .restart local v3       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v9       #mVCardParser:Lcom/android/vcard/VCardParser;
    :catch_be
    move-exception v6

    move-object v2, v3

    .end local v3           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v2       #detector:Lcom/android/vcard/VCardSourceDetector;
    goto :goto_86

    :catch_c1
    move-exception v6

    goto :goto_86

    .line 154
    .end local v0           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v5           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .end local v9           #mVCardParser:Lcom/android/vcard/VCardParser;
    .restart local v1       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v8       #mVCardParser:Lcom/android/vcard/VCardParser;
    :catch_c3
    move-exception v5

    move-object v3, v2

    .end local v2           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v3       #detector:Lcom/android/vcard/VCardSourceDetector;
    goto :goto_58

    :catch_c6
    move-exception v5

    goto :goto_58

    .end local v1           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v3           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v8           #mVCardParser:Lcom/android/vcard/VCardParser;
    .restart local v0       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v2       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v5       #e1:Lcom/android/vcard/exception/VCardVersionException;
    .restart local v9       #mVCardParser:Lcom/android/vcard/VCardParser;
    :cond_c8
    move-object v8, v9

    .end local v9           #mVCardParser:Lcom/android/vcard/VCardParser;
    .restart local v8       #mVCardParser:Lcom/android/vcard/VCardParser;
    goto/16 :goto_39

    .end local v0           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v2           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v5           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .restart local v1       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v3       #detector:Lcom/android/vcard/VCardSourceDetector;
    :cond_cb
    move-object v2, v3

    .end local v3           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v2       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v0, v1

    .end local v1           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v0       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto/16 :goto_39
.end method

.method private readOneVCard(Ljava/io/InputStream;ILjava/lang/String;Lcom/android/vcard/VCardInterpreter;[I)Z
    .registers 17
    .parameter "is"
    .parameter "vcardType"
    .parameter "charset"
    .parameter "interpreter"
    .parameter "possibleVCardVersions"

    .prologue
    const/4 v10, 0x2

    .line 265
    const/4 v5, 0x0

    .line 267
    .local v5, successful:Z
    move-object/from16 v0, p5

    array-length v3, v0

    .line 268
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    if-ge v2, v3, :cond_33

    .line 269
    aget v6, p5, v2

    .line 271
    .local v6, vcardVersion:I
    if-lez v2, :cond_17

    :try_start_c
    instance-of v7, p4, Lcom/android/vcard/VCardEntryConstructor;

    if-eqz v7, :cond_17

    .line 273
    move-object v0, p4

    check-cast v0, Lcom/android/vcard/VCardEntryConstructor;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/vcard/VCardEntryConstructor;->clear()V

    .line 280
    :cond_17
    monitor-enter p0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_b8
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_3d
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_18} :catch_70
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_c .. :try_end_18} :catch_80
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_c .. :try_end_18} :catch_92
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_c .. :try_end_18} :catch_a6

    .line 286
    if-eqz p3, :cond_62

    :try_start_1a
    const-string v7, "EUC-KR"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 287
    if-ne v6, v10, :cond_34

    new-instance v4, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v4, p2, p3}, Lcom/android/vcard/VCardParser_V30;-><init>(ILjava/lang/String;)V

    .line 295
    .local v4, mVCardParser:Lcom/android/vcard/VCardParser;
    :goto_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_3a

    .line 296
    :try_start_2a
    invoke-virtual {v4, p1, p4}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_b8
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_3d
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_2a .. :try_end_2d} :catch_70
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_2a .. :try_end_2d} :catch_80
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2a .. :try_end_2d} :catch_92
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2a .. :try_end_2d} :catch_a6

    .line 298
    const/4 v5, 0x1

    .line 322
    if-eqz p1, :cond_33

    .line 324
    :try_start_30
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_bf

    .line 331
    .end local v4           #mVCardParser:Lcom/android/vcard/VCardParser;
    .end local v6           #vcardVersion:I
    :cond_33
    :goto_33
    return v5

    .line 287
    .restart local v6       #vcardVersion:I
    :cond_34
    :try_start_34
    new-instance v4, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v4, p2, p3}, Lcom/android/vcard/VCardParser_V21;-><init>(ILjava/lang/String;)V

    goto :goto_29

    .line 295
    :catchall_3a
    move-exception v7

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v7
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_b8
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3d} :catch_3d
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_3c .. :try_end_3d} :catch_70
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_3c .. :try_end_3d} :catch_80
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_3c .. :try_end_3d} :catch_92
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_3c .. :try_end_3d} :catch_a6

    .line 300
    :catch_3d
    move-exception v1

    .line 301
    .local v1, e:Ljava/io/IOException;
    :try_start_3e
    const-string v7, "BluetoothOppImportVcardUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException was emitted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_3e .. :try_end_5a} :catchall_b8

    .line 322
    if-eqz p1, :cond_5f

    .line 324
    :try_start_5c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_c2

    .line 268
    .end local v1           #e:Ljava/io/IOException;
    :cond_5f
    :goto_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 291
    :cond_62
    if-ne v6, v10, :cond_6a

    :try_start_64
    new-instance v4, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v4, p2}, Lcom/android/vcard/VCardParser_V30;-><init>(I)V

    .restart local v4       #mVCardParser:Lcom/android/vcard/VCardParser;
    :goto_69
    goto :goto_29

    .end local v4           #mVCardParser:Lcom/android/vcard/VCardParser;
    :cond_6a
    new-instance v4, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v4, p2}, Lcom/android/vcard/VCardParser_V21;-><init>(I)V
    :try_end_6f
    .catchall {:try_start_64 .. :try_end_6f} :catchall_3a

    goto :goto_69

    .line 302
    :catch_70
    move-exception v1

    .line 310
    .local v1, e:Lcom/android/vcard/exception/VCardNestedException;
    :try_start_71
    const-string v7, "BluetoothOppImportVcardUtil"

    const-string v8, "Nested Exception is found."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_b8

    .line 322
    if-eqz p1, :cond_5f

    .line 324
    :try_start_7a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_5f

    .line 325
    :catch_7e
    move-exception v7

    goto :goto_5f

    .line 311
    .end local v1           #e:Lcom/android/vcard/exception/VCardNestedException;
    :catch_80
    move-exception v1

    .line 312
    .local v1, e:Lcom/android/vcard/exception/VCardNotSupportedException;
    :try_start_81
    const-string v7, "BluetoothOppImportVcardUtil"

    invoke-virtual {v1}, Lcom/android/vcard/exception/VCardNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_81 .. :try_end_8a} :catchall_b8

    .line 322
    if-eqz p1, :cond_5f

    .line 324
    :try_start_8c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_5f

    .line 325
    :catch_90
    move-exception v7

    goto :goto_5f

    .line 313
    .end local v1           #e:Lcom/android/vcard/exception/VCardNotSupportedException;
    :catch_92
    move-exception v1

    .line 314
    .local v1, e:Lcom/android/vcard/exception/VCardVersionException;
    add-int/lit8 v7, v3, -0x1

    if-ne v2, v7, :cond_9e

    .line 315
    :try_start_97
    const-string v7, "BluetoothOppImportVcardUtil"

    const-string v8, "Appropriate version for this vCard is not found."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_97 .. :try_end_9e} :catchall_b8

    .line 322
    :cond_9e
    if-eqz p1, :cond_5f

    .line 324
    :try_start_a0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_5f

    .line 325
    :catch_a4
    move-exception v7

    goto :goto_5f

    .line 319
    .end local v1           #e:Lcom/android/vcard/exception/VCardVersionException;
    :catch_a6
    move-exception v1

    .line 320
    .local v1, e:Lcom/android/vcard/exception/VCardException;
    :try_start_a7
    const-string v7, "BluetoothOppImportVcardUtil"

    invoke-virtual {v1}, Lcom/android/vcard/exception/VCardException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_a7 .. :try_end_b0} :catchall_b8

    .line 322
    if-eqz p1, :cond_5f

    .line 324
    :try_start_b2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_5f

    .line 325
    :catch_b6
    move-exception v7

    goto :goto_5f

    .line 322
    .end local v1           #e:Lcom/android/vcard/exception/VCardException;
    :catchall_b8
    move-exception v7

    if-eqz p1, :cond_be

    .line 324
    :try_start_bb
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_c4

    .line 326
    :cond_be
    :goto_be
    throw v7

    .line 325
    .restart local v4       #mVCardParser:Lcom/android/vcard/VCardParser;
    :catch_bf
    move-exception v7

    goto/16 :goto_33

    .end local v4           #mVCardParser:Lcom/android/vcard/VCardParser;
    .local v1, e:Ljava/io/IOException;
    :catch_c2
    move-exception v7

    goto :goto_5f

    .end local v1           #e:Ljava/io/IOException;
    :catch_c4
    move-exception v8

    goto :goto_be
.end method

.method private runInternal()Z
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 204
    const-string v0, "BluetoothOppImportVcardUtil"

    const-string v2, "runInternal"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->VcardVersion:I

    if-nez v0, :cond_6a

    .line 211
    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_a2

    .line 221
    .local v5, possibleVCardVersions:[I
    :goto_13
    new-instance v4, Lcom/android/vcard/VCardEntryConstructor;

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->VcardType:I

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->Charset:Ljava/lang/String;

    invoke-direct {v4, v0, v2, v3}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 223
    .local v4, constructor:Lcom/android/vcard/VCardEntryConstructor;
    new-instance v6, Lcom/android/vcard/VCardEntryCommitter;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v6, v0}, Lcom/android/vcard/VCardEntryCommitter;-><init>(Landroid/content/ContentResolver;)V

    .line 224
    .local v6, committer:Lcom/android/vcard/VCardEntryCommitter;
    invoke-virtual {v4, v6}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, is:Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 229
    .local v8, successful:Z
    :try_start_2a
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->fileUri:Landroid/net/Uri;

    if-eqz v0, :cond_56

    .line 230
    const-string v0, "BluetoothOppImportVcardUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start importing one vCard (Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->fileUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 234
    :cond_56
    if-eqz v1, :cond_61

    .line 235
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->VcardType:I

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->Charset:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->readOneVCard(Ljava/io/InputStream;ILjava/lang/String;Lcom/android/vcard/VCardInterpreter;[I)Z
    :try_end_60
    .catchall {:try_start_2a .. :try_end_60} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_60} :catch_71

    move-result v8

    .line 241
    :cond_61
    if-eqz v1, :cond_66

    .line 243
    :try_start_63
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_9e

    .line 251
    :cond_66
    :goto_66
    if-eqz v8, :cond_82

    move v0, v9

    .line 255
    :goto_69
    return v0

    .line 216
    .end local v1           #is:Ljava/io/InputStream;
    .end local v4           #constructor:Lcom/android/vcard/VCardEntryConstructor;
    .end local v5           #possibleVCardVersions:[I
    .end local v6           #committer:Lcom/android/vcard/VCardEntryCommitter;
    .end local v8           #successful:Z
    :cond_6a
    new-array v5, v9, [I

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->VcardVersion:I

    aput v0, v5, v10

    .restart local v5       #possibleVCardVersions:[I
    goto :goto_13

    .line 238
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v4       #constructor:Lcom/android/vcard/VCardEntryConstructor;
    .restart local v6       #committer:Lcom/android/vcard/VCardEntryCommitter;
    .restart local v8       #successful:Z
    :catch_71
    move-exception v7

    .line 239
    .local v7, e:Ljava/io/IOException;
    const/4 v8, 0x0

    .line 241
    if-eqz v1, :cond_66

    .line 243
    :try_start_75
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_66

    .line 244
    :catch_79
    move-exception v0

    goto :goto_66

    .line 241
    .end local v7           #e:Ljava/io/IOException;
    :catchall_7b
    move-exception v0

    if-eqz v1, :cond_81

    .line 243
    :try_start_7e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_a0

    .line 246
    :cond_81
    :goto_81
    throw v0

    .line 254
    :cond_82
    const-string v0, "BluetoothOppImportVcardUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read one vCard file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->fileUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 255
    goto :goto_69

    .line 244
    :catch_9e
    move-exception v0

    goto :goto_66

    :catch_a0
    move-exception v2

    goto :goto_81

    .line 211
    :array_a2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public StartVcardImport()V
    .registers 4

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->ctx:Landroid/content/Context;

    if-nez v1, :cond_c

    .line 96
    const-string v1, "BluetoothOppImportVcardUtil"

    const-string v2, "parseDisplayName ctx is null. something wrong"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_b
    :goto_b
    return-void

    .line 101
    :cond_c
    :try_start_c
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->parserRequestData()Z

    move-result v1

    if-nez v1, :cond_24

    .line 102
    const-string v1, "BluetoothOppImportVcardUtil"

    const-string v2, "parserRequestData is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_c .. :try_end_19} :catch_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_32

    goto :goto_b

    .line 105
    :catch_1a
    move-exception v0

    .line 106
    .local v0, e:Lcom/android/vcard/exception/VCardException;
    const-string v1, "BluetoothOppImportVcardUtil"

    invoke-virtual {v0}, Lcom/android/vcard/exception/VCardException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0           #e:Lcom/android/vcard/exception/VCardException;
    :cond_24
    :goto_24
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->runInternal()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 112
    const-string v1, "BluetoothOppImportVcardUtil"

    const-string v2, "runInternal is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 107
    :catch_32
    move-exception v0

    .line 108
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothOppImportVcardUtil"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 116
    .end local v0           #e:Ljava/io/IOException;
    :cond_3d
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppImportVcardUtil;->deleteFile()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 120
    const-string v1, "BluetoothOppImportVcardUtil"

    const-string v2, "import Success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method
