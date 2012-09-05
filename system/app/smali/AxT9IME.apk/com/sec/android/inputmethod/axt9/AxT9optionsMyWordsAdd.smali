.class public Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;
.super Landroid/app/Activity;
.source "AxT9optionsMyWordsAdd.java"


# instance fields
.field private final DEBUG:Z

.field private final INFO:Z

.field LengthOfWordsbuf:S

.field private final TAG:Ljava/lang/String;

.field private UDB_BUF:[B

.field private final UDB_SIZE:I

.field private edittingWord:Ljava/lang/String;

.field lengthbuf:[S

.field private mButton:Landroid/widget/Button;

.field mCount:[S

.field private mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

.field private mEditTitle:Landroid/widget/TextView;

.field private mEditable_addingMyWords:Landroid/text/Editable;

.field mLeftBottomListener:Landroid/view/View$OnClickListener;

.field mRightBottomListener:Landroid/view/View$OnClickListener;

.field private mString_addingBuff:Ljava/lang/String;

.field private final ms_UDB_FILE_NAME:Ljava/lang/String;

.field private onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

.field private final useTwWidget:Z

.field wordsbuf:[S


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x5000

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const-string v0, "AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->TAG:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->DEBUG:Z

    .line 65
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->INFO:Z

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;

    .line 81
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->UDB_SIZE:I

    .line 82
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getUDBBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->UDB_BUF:[B

    .line 83
    const-string v0, "xT9UdbData.dat"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->ms_UDB_FILE_NAME:Ljava/lang/String;

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mCount:[S

    .line 88
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->wordsbuf:[S

    .line 89
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->lengthbuf:[S

    .line 90
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->wordsbuf:[S

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->LengthOfWordsbuf:S

    .line 92
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->useTwWidget:Z

    .line 288
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    .line 325
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mRightBottomListener:Landroid/view/View$OnClickListener;

    .line 437
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->setButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Landroid/text/Editable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditable_addingMyWords:Landroid/text/Editable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Landroid/text/Editable;)Landroid/text/Editable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditable_addingMyWords:Landroid/text/Editable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mString_addingBuff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mString_addingBuff:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->readDBdataFromFile()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->UDB_BUF:[B

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->addWordtoMyWords(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->deleteMyWord(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->writeDBdataToFile()V

    return-void
.end method

.method private addWordtoMyWords(Ljava/lang/String;)I
    .registers 5
    .parameter "string"

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBFindWord([SS)S

    move-result v0

    .line 215
    .local v0, errorcode:S
    if-nez v0, :cond_11

    .line 216
    const/4 v1, -0x1

    .line 226
    :goto_10
    return v1

    .line 218
    :cond_11
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBAddWord([SS)S

    move-result v0

    .line 219
    if-eqz v0, :cond_22

    .line 222
    const/4 v1, 0x0

    goto :goto_10

    .line 226
    :cond_22
    const/4 v1, 0x1

    goto :goto_10
.end method

.method private convertStringtoShortArr(Ljava/lang/String;)[S
    .registers 5
    .parameter "string"

    .prologue
    .line 351
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 352
    .local v1, shortarr:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 353
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 355
    :cond_17
    return-object v1
.end method

.method private deleteMyWord(Ljava/lang/String;)V
    .registers 4
    .parameter "mywords"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBDeleteWord([SS)S

    .line 346
    return-void
.end method

.method private getResourceString(I)Ljava/lang/String;
    .registers 3
    .parameter "ResourceStringID"

    .prologue
    .line 513
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readDBdataFromFile()V
    .registers 11

    .prologue
    .line 361
    const-string v0, ""

    .line 365
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9UdbData.dat"

    .line 367
    const-string v8, "xT9DB"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 368
    .local v1, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    .local v6, mfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 370
    const/4 v4, 0x0

    .line 371
    .local v4, is:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 373
    .local v7, returnOfRead:I
    :try_start_18
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_61
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_30
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_52

    .line 374
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_1d
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->UDB_BUF:[B

    invoke-virtual {v5, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_76
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_22} :catch_7c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_79

    move-result v7

    .line 381
    if-eqz v5, :cond_28

    :try_start_25
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_2a

    :cond_28
    move-object v4, v5

    .line 395
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_29
    :goto_29
    return-void

    .line 382
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catch_2a
    move-exception v2

    .line 383
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 385
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_29

    .line 375
    .end local v2           #e:Ljava/io/IOException;
    :catch_30
    move-exception v2

    .line 376
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_31
    :try_start_31
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File was removed durning test"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_61

    .line 381
    if-eqz v4, :cond_29

    :try_start_49
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_29

    .line 382
    :catch_4d
    move-exception v2

    .line 383
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 377
    .end local v2           #e:Ljava/io/IOException;
    :catch_52
    move-exception v2

    .line 378
    .restart local v2       #e:Ljava/io/IOException;
    :goto_53
    :try_start_53
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_61

    .line 381
    if-eqz v4, :cond_29

    :try_start_58
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_29

    .line 382
    :catch_5c
    move-exception v2

    .line 383
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 380
    .end local v2           #e:Ljava/io/IOException;
    :catchall_61
    move-exception v8

    .line 381
    :goto_62
    if-eqz v4, :cond_67

    :try_start_64
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    .line 384
    :cond_67
    :goto_67
    throw v8

    .line 382
    :catch_68
    move-exception v2

    .line 383
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    .line 389
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_6d
    :try_start_6d
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_29

    .line 390
    :catch_71
    move-exception v3

    .line 391
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 380
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catchall_76
    move-exception v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_62

    .line 377
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_79
    move-exception v2

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_53

    .line 375
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_7c
    move-exception v2

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_31
.end method

.method private setButtonEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 203
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mButton:Landroid/widget/Button;

    .line 204
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 206
    return-void
.end method

.method private writeDBdataToFile()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 399
    const-string v0, ""

    .line 403
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9UdbData.dat"

    .line 405
    const-string v7, "xT9DB"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 406
    .local v1, dir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 407
    .local v4, mfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_19

    .line 409
    :try_start_16
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_35

    .line 414
    :cond_19
    :goto_19
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 415
    const/4 v5, 0x0

    .line 417
    .local v5, os:Ljava/io/FileOutputStream;
    :try_start_20
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_26} :catch_40
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_26} :catch_4f

    .line 418
    .end local v5           #os:Ljava/io/FileOutputStream;
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_26
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->UDB_BUF:[B

    const/4 v8, 0x0

    const/16 v9, 0x5000

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2e} :catch_70
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_6d

    .line 424
    if-eqz v6, :cond_73

    .line 426
    :try_start_30
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_3a

    move-object v5, v6

    .line 435
    .end local v6           #os:Ljava/io/FileOutputStream;
    :cond_34
    :goto_34
    return-void

    .line 410
    :catch_35
    move-exception v3

    .line 411
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 427
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_3a
    move-exception v2

    .line 428
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 429
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_34

    .line 419
    .end local v2           #e:Ljava/io/IOException;
    :catch_40
    move-exception v2

    .line 420
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_5e

    .line 424
    if-eqz v5, :cond_34

    .line 426
    :try_start_46
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_34

    .line 427
    :catch_4a
    move-exception v2

    .line 428
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 421
    .end local v2           #e:Ljava/io/IOException;
    :catch_4f
    move-exception v2

    .line 422
    .restart local v2       #e:Ljava/io/IOException;
    :goto_50
    :try_start_50
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5e

    .line 424
    if-eqz v5, :cond_34

    .line 426
    :try_start_55
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_34

    .line 427
    :catch_59
    move-exception v2

    .line 428
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 424
    .end local v2           #e:Ljava/io/IOException;
    :catchall_5e
    move-exception v7

    :goto_5f
    if-eqz v5, :cond_64

    .line 426
    :try_start_61
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 429
    :cond_64
    :goto_64
    throw v7

    .line 427
    :catch_65
    move-exception v2

    .line 428
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_64

    .line 424
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catchall_6a
    move-exception v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_5f

    .line 421
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_6d
    move-exception v2

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_50

    .line 419
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_70
    move-exception v2

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_41

    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :cond_73
    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_34
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, AUTOSUBS_TITLE:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    const v2, 0x7f03001a

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->setContentView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 111
    const v2, 0x7f070042

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    .line 112
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setInputType(I)V

    .line 113
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setPrivateCommandListener(Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;)V

    .line 114
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v2, v7}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setVisibility(I)V

    .line 115
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->requestFocus()Z

    .line 117
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$1;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V

    .line 134
    .local v1, filter:Landroid/text/InputFilter;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/text/InputFilter;

    aput-object v1, v3, v7

    const/4 v4, 0x1

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x40

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 136
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "edittingMyWords"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;

    .line 159
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;

    if-eqz v2, :cond_9c

    .line 160
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditText_addingMyWords:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->edittingWord:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setSelection(II)V

    .line 164
    :cond_9c
    const v2, 0x7f070021

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mButton:Landroid/widget/Button;

    .line 165
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 167
    const v2, 0x7f070022

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mButton:Landroid/widget/Button;

    .line 168
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mRightBottomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    invoke-direct {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->setButtonEnabled(Z)V

    .line 176
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 183
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CurrentMode"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 185
    .local v0, CurrentMode:I
    const v2, 0x7f070041

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditTitle:Landroid/widget/TextView;

    .line 186
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    const-string v1, ""

    .line 189
    .local v1, editTitle:Ljava/lang/String;
    if-eq v0, v4, :cond_2e

    .line 190
    if-nez v0, :cond_32

    .line 191
    const v2, 0x7f0a007b

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_2e
    :goto_2e
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 200
    return-void

    .line 193
    :cond_32
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2e

    .line 194
    const v2, 0x7f0a007c

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->mEditTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2e
.end method
