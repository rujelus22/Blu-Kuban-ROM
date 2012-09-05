.class public Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;
.super Landroid/app/Activity;
.source "AxT9optionsAutoSubsAdd.java"


# instance fields
.field private ASDB_BUF:[B

.field private final ASDB_SIZE:I

.field private final ASDB_WORD_SIZE:I

.field private CurrentMode:Ljava/lang/String;

.field private final DEBUG:Z

.field private EdittingShortcut:Ljava/lang/String;

.field private EdittingSubstitution:Ljava/lang/String;

.field private final INFO:Z

.field private final TAG:Ljava/lang/String;

.field private mButton:Landroid/widget/Button;

.field private mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

.field private mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

.field private mEditable_addingShortcut:Landroid/text/Editable;

.field private mEditable_addingSubstitution:Landroid/text/Editable;

.field mLeftBottomListener:Landroid/view/View$OnClickListener;

.field mRightBottomListener:Landroid/view/View$OnClickListener;

.field private mTextView:Landroid/widget/TextView;

.field private final ms_ASDB_FILE_NAME:Ljava/lang/String;

.field onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

.field private final useTwWidget:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const-string v0, "AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->TAG:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->DEBUG:Z

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->INFO:Z

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->CurrentMode:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingSubstitution:Ljava/lang/String;

    .line 77
    const/16 v0, 0x40

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->ASDB_WORD_SIZE:I

    .line 78
    const/16 v0, 0x2800

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->ASDB_SIZE:I

    .line 79
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getASDBBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->ASDB_BUF:[B

    .line 80
    const-string v0, "xT9ASdbData.dat"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->ms_ASDB_FILE_NAME:Ljava/lang/String;

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->useTwWidget:Z

    .line 206
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    .line 257
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mRightBottomListener:Landroid/view/View$OnClickListener;

    .line 421
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->writeDBdataToFile()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingSubstitution:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Landroid/text/Editable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditable_addingShortcut:Landroid/text/Editable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Landroid/text/Editable;)Landroid/text/Editable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditable_addingShortcut:Landroid/text/Editable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Landroid/text/Editable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditable_addingSubstitution:Landroid/text/Editable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Landroid/text/Editable;)Landroid/text/Editable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditable_addingSubstitution:Landroid/text/Editable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->hasEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->deleteEntry(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->addEntrytoAutoSubs(Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;)I

    move-result v0

    return v0
.end method

.method private addEntrytoAutoSubs(Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;)I
    .registers 10
    .parameter "entryset"

    .prologue
    const/4 v3, 0x1

    .line 276
    new-array v1, v3, [S

    .line 277
    .local v1, subslength:[S
    const/16 v4, 0x40

    new-array v2, v4, [S

    .line 278
    .local v2, substitutionbuf:[S
    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-short v5, v5

    array-length v6, v2

    int-to-short v6, v6

    invoke-static {v4, v5, v2, v6, v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBFindEntry([SS[SS[S)S

    move-result v0

    .line 280
    .local v0, errorcode:S
    if-nez v0, :cond_22

    .line 281
    const/4 v3, -0x1

    .line 292
    :cond_21
    :goto_21
    return v3

    .line 283
    :cond_22
    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getSubstitution()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-short v6, v6

    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getSubstitution()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    int-to-short v7, v7

    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBAddEntry([S[SSS)S

    move-result v0

    .line 286
    if-eqz v0, :cond_21

    .line 289
    const/4 v3, 0x0

    goto :goto_21
.end method

.method private convertShortArrtoString([SS)Ljava/lang/String;
    .registers 6
    .parameter "shortarr"
    .parameter "length"

    .prologue
    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v1, string:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 336
    .local v0, i:I
    const/4 v0, 0x0

    :goto_7
    if-ge v0, p2, :cond_12

    .line 337
    aget-short v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 339
    :cond_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private convertStringtoShortArr(Ljava/lang/String;)[S
    .registers 5
    .parameter "string"

    .prologue
    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 324
    .local v1, shortarr:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 328
    :cond_17
    return-object v1
.end method

.method private deleteEntry(Ljava/lang/String;)V
    .registers 5
    .parameter "shortcut"

    .prologue
    .line 299
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v0

    .line 301
    .local v0, errorcode:S
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v0

    .line 303
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBDeleteEntry([SS)S

    move-result v0

    .line 305
    return-void
.end method

.method private hasEntry(Ljava/lang/String;)Z
    .registers 10
    .parameter "shortcut"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 308
    new-array v1, v3, [S

    .line 309
    .local v1, subslength:[S
    const/16 v5, 0x40

    new-array v2, v5, [S

    .line 310
    .local v2, substitutionbuf:[S
    aput-short v4, v1, v4

    .line 311
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    int-to-short v6, v6

    array-length v7, v2

    int-to-short v7, v7

    invoke-static {v5, v6, v2, v7, v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBFindEntry([SS[SS[S)S

    move-result v0

    .line 315
    .local v0, errorcode:S
    if-nez v0, :cond_20

    aget-short v5, v1, v4

    if-lez v5, :cond_20

    :goto_1f
    return v3

    :cond_20
    move v3, v4

    goto :goto_1f
.end method

.method private readDBdataFromFile()V
    .registers 11

    .prologue
    .line 385
    const-string v0, ""

    .line 389
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9ASdbData.dat"

    .line 391
    const-string v8, "xT9DB"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 392
    .local v1, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 393
    .local v6, mfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 394
    const/4 v4, 0x0

    .line 395
    .local v4, is:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 397
    .local v7, returnOfRead:I
    :try_start_18
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_61
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_30
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_52

    .line 398
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_1d
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->ASDB_BUF:[B

    invoke-virtual {v5, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_76
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_22} :catch_7c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_79

    move-result v7

    .line 405
    if-eqz v5, :cond_28

    :try_start_25
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_2a

    :cond_28
    move-object v4, v5

    .line 419
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_29
    :goto_29
    return-void

    .line 406
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catch_2a
    move-exception v2

    .line 407
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 409
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_29

    .line 399
    .end local v2           #e:Ljava/io/IOException;
    :catch_30
    move-exception v2

    .line 400
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

    .line 405
    if-eqz v4, :cond_29

    :try_start_49
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_29

    .line 406
    :catch_4d
    move-exception v2

    .line 407
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 401
    .end local v2           #e:Ljava/io/IOException;
    :catch_52
    move-exception v2

    .line 402
    .restart local v2       #e:Ljava/io/IOException;
    :goto_53
    :try_start_53
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_61

    .line 405
    if-eqz v4, :cond_29

    :try_start_58
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_29

    .line 406
    :catch_5c
    move-exception v2

    .line 407
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 404
    .end local v2           #e:Ljava/io/IOException;
    :catchall_61
    move-exception v8

    .line 405
    :goto_62
    if-eqz v4, :cond_67

    :try_start_64
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    .line 408
    :cond_67
    :goto_67
    throw v8

    .line 406
    :catch_68
    move-exception v2

    .line 407
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    .line 413
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_6d
    :try_start_6d
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_29

    .line 414
    :catch_71
    move-exception v3

    .line 415
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 404
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catchall_76
    move-exception v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_62

    .line 401
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_79
    move-exception v2

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_53

    .line 399
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
    .line 201
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mButton:Landroid/widget/Button;

    .line 202
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 204
    return-void
.end method

.method private writeDBdataToFile()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 344
    const-string v0, ""

    .line 348
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9ASdbData.dat"

    .line 350
    const-string v7, "xT9DB"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 351
    .local v1, dir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 352
    .local v4, mfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_19

    .line 354
    :try_start_16
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_35

    .line 359
    :cond_19
    :goto_19
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 360
    const/4 v5, 0x0

    .line 362
    .local v5, os:Ljava/io/FileOutputStream;
    :try_start_20
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_26} :catch_40
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_26} :catch_4f

    .line 363
    .end local v5           #os:Ljava/io/FileOutputStream;
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_26
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->ASDB_BUF:[B

    const/4 v8, 0x0

    const/16 v9, 0x2800

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2e} :catch_70
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_6d

    .line 369
    if-eqz v6, :cond_73

    .line 371
    :try_start_30
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_3a

    move-object v5, v6

    .line 380
    .end local v6           #os:Ljava/io/FileOutputStream;
    :cond_34
    :goto_34
    return-void

    .line 355
    :catch_35
    move-exception v3

    .line 356
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 372
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_3a
    move-exception v2

    .line 373
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 374
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_34

    .line 364
    .end local v2           #e:Ljava/io/IOException;
    :catch_40
    move-exception v2

    .line 365
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_5e

    .line 369
    if-eqz v5, :cond_34

    .line 371
    :try_start_46
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_34

    .line 372
    :catch_4a
    move-exception v2

    .line 373
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 366
    .end local v2           #e:Ljava/io/IOException;
    :catch_4f
    move-exception v2

    .line 367
    .restart local v2       #e:Ljava/io/IOException;
    :goto_50
    :try_start_50
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5e

    .line 369
    if-eqz v5, :cond_34

    .line 371
    :try_start_55
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_34

    .line 372
    :catch_59
    move-exception v2

    .line 373
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 369
    .end local v2           #e:Ljava/io/IOException;
    :catchall_5e
    move-exception v7

    :goto_5f
    if-eqz v5, :cond_64

    .line 371
    :try_start_61
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 374
    :cond_64
    :goto_64
    throw v7

    .line 372
    :catch_65
    move-exception v2

    .line 373
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_64

    .line 369
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catchall_6a
    move-exception v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_5f

    .line 366
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_6d
    move-exception v2

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_50

    .line 364
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
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/high16 v9, 0x100

    const/4 v8, 0x0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a001d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, AUTOSUBS_TITLE:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "CurrentMode"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->CurrentMode:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "shortcut"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->CurrentMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    const v6, 0x7f030013

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setContentView(I)V

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 109
    sget-boolean v6, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v6, :cond_6b

    .line 110
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->readDBdataFromFile()V

    .line 112
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->ASDB_BUF:[B

    const/16 v7, 0x2800

    invoke-static {v6, v7}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBInit([BS)S

    move-result v2

    .line 113
    .local v2, errorcode:S
    if-eqz v2, :cond_6b

    .line 118
    .end local v2           #errorcode:S
    :cond_6b
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v2

    .line 119
    .restart local v2       #errorcode:S
    if-eqz v2, :cond_71

    .line 122
    :cond_71
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v2

    .line 123
    if-eqz v2, :cond_77

    .line 127
    :cond_77
    const v6, 0x7f070034

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    .line 128
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v6, v9}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setInputType(I)V

    .line 129
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    invoke-virtual {v6, v7}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setPrivateCommandListener(Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;)V

    .line 130
    const v6, 0x7f070038

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    .line 131
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v6, v9}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setInputType(I)V

    .line 132
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    invoke-virtual {v6, v7}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setPrivateCommandListener(Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;)V

    .line 133
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setVisibility(I)V

    .line 134
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->requestFocus()Z

    .line 135
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setVisibility(I)V

    .line 137
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$1;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V

    .line 163
    .local v3, onChangeListener:Landroid/text/TextWatcher;
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v6, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v6, v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 166
    const v6, 0x7f070032

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mTextView:Landroid/widget/TextView;

    .line 167
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    const v6, 0x7f070036

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mTextView:Landroid/widget/TextView;

    .line 169
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    if-eqz v6, :cond_158

    .line 172
    const/16 v6, 0x40

    new-array v4, v6, [S

    .line 173
    .local v4, substitutionbuf:[S
    const/4 v6, 0x2

    new-array v5, v6, [S

    .line 174
    .local v5, substitutionlengthbuf:[S
    array-length v6, v4

    int-to-short v1, v6

    .line 176
    .local v1, LengthOfSubstitutionBuf:S
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    int-to-short v7, v7

    invoke-static {v6, v7, v4, v1, v5}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWASDBFindEntry([SS[SS[S)S

    move-result v2

    .line 179
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingShortcut:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingShortcut:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v8, v7}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setSelection(II)V

    .line 181
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mEditText_addingSubstitution:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    aget-short v7, v5, v8

    invoke-direct {p0, v4, v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->convertShortArrtoString([SS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    aget-short v6, v5, v8

    invoke-direct {p0, v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->convertShortArrtoString([SS)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->EdittingSubstitution:Ljava/lang/String;

    .line 183
    invoke-direct {p0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setButtonEnabled(Z)V

    .line 188
    .end local v1           #LengthOfSubstitutionBuf:S
    .end local v4           #substitutionbuf:[S
    .end local v5           #substitutionlengthbuf:[S
    :goto_129
    const v6, 0x7f070021

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mButton:Landroid/widget/Button;

    .line 189
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    const v6, 0x7f070022

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mButton:Landroid/widget/Button;

    .line 192
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mRightBottomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->mButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    return-void

    .line 185
    :cond_158
    invoke-direct {p0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setButtonEnabled(Z)V

    goto :goto_129
.end method
