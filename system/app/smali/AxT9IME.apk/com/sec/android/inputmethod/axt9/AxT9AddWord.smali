.class public Lcom/sec/android/inputmethod/axt9/AxT9AddWord;
.super Landroid/app/Activity;
.source "AxT9AddWord.java"


# instance fields
.field private final AxT9IMEAction:Ljava/lang/String;

.field private final DEBUG:Z

.field private final INFO:Z

.field LengthOfWordsbuf:S

.field private final TAG:Ljava/lang/String;

.field private UDB_BUF:[B

.field private final UDB_SIZE:I

.field private final UDB_WORD_SIZE:I

.field private editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

.field lengthbuf:[S

.field private mButton:Landroid/widget/Button;

.field mCount:[S

.field private mIsDone:Z

.field mLeftBottomListener:Landroid/view/View$OnClickListener;

.field mRightBottomListener:Landroid/view/View$OnClickListener;

.field private final ms_UDB_FILE_NAME:Ljava/lang/String;

.field onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

.field private final useTwWidget:Z

.field wordsbuf:[S


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x5000

    const/16 v2, 0x40

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-string v0, "AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->TAG:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->DEBUG:Z

    .line 59
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->INFO:Z

    .line 60
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->useTwWidget:Z

    .line 71
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mIsDone:Z

    .line 72
    const-string v0, "com.samsung.sec.android.inputmethod.axt9.AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->AxT9IMEAction:Ljava/lang/String;

    .line 75
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->UDB_SIZE:I

    .line 77
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->UDB_WORD_SIZE:I

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mCount:[S

    .line 79
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->wordsbuf:[S

    .line 80
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->lengthbuf:[S

    .line 81
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->wordsbuf:[S

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->LengthOfWordsbuf:S

    .line 85
    const-string v0, "xT9UdbData.dat"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->ms_UDB_FILE_NAME:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getUDBBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->UDB_BUF:[B

    .line 234
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    .line 265
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mRightBottomListener:Landroid/view/View$OnClickListener;

    .line 388
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    return-void
.end method

.method private AddWordtoUDB(Ljava/lang/String;)V
    .registers 5
    .parameter "addingword"

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBAddWord([SS)S

    move-result v0

    .line 276
    .local v0, errorcode:S
    if-eqz v0, :cond_f

    .line 280
    :cond_f
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBFindWord([SS)S

    move-result v0

    .line 281
    if-eqz v0, :cond_1e

    .line 284
    :cond_1e
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setButtonEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->UDB_BUF:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;Ljava/lang/String;)[S
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->AddWordtoUDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->writeDBdataToFile()V

    return-void
.end method

.method private convertStringtoShortArr(Ljava/lang/String;)[S
    .registers 5
    .parameter "string"

    .prologue
    .line 287
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 289
    .local v1, shortarr:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 290
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 293
    :cond_17
    return-object v1
.end method

.method private intiUI()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 158
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    .line 159
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setInputType(I)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->onCommandListener:Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setPrivateCommandListener(Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;)V

    .line 162
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mButton:Landroid/widget/Button;

    .line 163
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mButton:Landroid/widget/Button;

    .line 167
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mRightBottomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method private setButtonEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 172
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mButton:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 175
    return-void
.end method

.method private writeDBdataToFile()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 299
    const-string v0, ""

    .line 303
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9UdbData.dat"

    .line 305
    const-string v7, "xT9DB"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 306
    .local v1, dir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 307
    .local v4, mfile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_19

    .line 309
    :try_start_16
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_35

    .line 314
    :cond_19
    :goto_19
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_34

    .line 315
    const/4 v5, 0x0

    .line 317
    .local v5, os:Ljava/io/FileOutputStream;
    :try_start_20
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_26} :catch_40
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_26} :catch_4f

    .line 318
    .end local v5           #os:Ljava/io/FileOutputStream;
    .local v6, os:Ljava/io/FileOutputStream;
    :try_start_26
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->UDB_BUF:[B

    const/4 v8, 0x0

    const/16 v9, 0x5000

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2e} :catch_70
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_6d

    .line 324
    if-eqz v6, :cond_73

    .line 326
    :try_start_30
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_3a

    move-object v5, v6

    .line 335
    .end local v6           #os:Ljava/io/FileOutputStream;
    :cond_34
    :goto_34
    return-void

    .line 310
    :catch_35
    move-exception v3

    .line 311
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 327
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_3a
    move-exception v2

    .line 328
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 329
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_34

    .line 319
    .end local v2           #e:Ljava/io/IOException;
    :catch_40
    move-exception v2

    .line 320
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_41
    :try_start_41
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_5e

    .line 324
    if-eqz v5, :cond_34

    .line 326
    :try_start_46
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_34

    .line 327
    :catch_4a
    move-exception v2

    .line 328
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 321
    .end local v2           #e:Ljava/io/IOException;
    :catch_4f
    move-exception v2

    .line 322
    .restart local v2       #e:Ljava/io/IOException;
    :goto_50
    :try_start_50
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_5e

    .line 324
    if-eqz v5, :cond_34

    .line 326
    :try_start_55
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_34

    .line 327
    :catch_59
    move-exception v2

    .line 328
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 324
    .end local v2           #e:Ljava/io/IOException;
    :catchall_5e
    move-exception v7

    :goto_5f
    if-eqz v5, :cond_64

    .line 326
    :try_start_61
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    .line 329
    :cond_64
    :goto_64
    throw v7

    .line 327
    :catch_65
    move-exception v2

    .line 328
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_64

    .line 324
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catchall_6a
    move-exception v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_5f

    .line 321
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_6d
    move-exception v2

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_50

    .line 319
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
.method public getFlagIsDone()Z
    .registers 2

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mIsDone:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0060

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, ADDWORD_TITLE:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    const v4, 0x7f03000b

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setContentView(I)V

    .line 97
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->intiUI()V

    .line 99
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$1;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V

    .line 119
    .local v1, filter:Landroid/text/InputFilter;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "AddingWord"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, selectedWord:Ljava/lang/String;
    if-eqz v2, :cond_83

    .line 121
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v4, v2}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setSelection(I)V

    .line 125
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    new-array v5, v10, [Landroid/text/InputFilter;

    aput-object v1, v5, v9

    const/4 v6, 0x1

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 126
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$2;

    invoke-direct {v5, p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, targetString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v10, :cond_7e

    .line 149
    invoke-direct {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setButtonEnabled(Z)V

    .line 152
    :cond_7e
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v4, v9}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->setVisibility(I)V

    .line 154
    .end local v3           #targetString:Ljava/lang/String;
    :cond_83
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.samsung.sec.android.inputmethod.axt9.AxT9IME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v2, "sendingActivity"

    const-string v3, "AxT9AddWord"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->getFlagIsDone()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 185
    const-string v2, "AddingWord"

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setFlagIsDone(Z)V

    .line 192
    :goto_2a
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 196
    return-void

    .line 189
    :cond_31
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "AddingWord"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, selectedWord:Ljava/lang/String;
    const-string v2, "AddingWord"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2a
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 417
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 418
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_14

    .line 420
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->editAddWord:Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 422
    :cond_14
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 423
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 228
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setResult(ILandroid/content/Intent;)V

    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 232
    return-void
.end method

.method public setFlagIsDone(Z)V
    .registers 2
    .parameter "isDone"

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->mIsDone:Z

    .line 386
    return-void
.end method
