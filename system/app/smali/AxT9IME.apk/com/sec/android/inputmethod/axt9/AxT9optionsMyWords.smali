.class public Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;
.super Landroid/app/Activity;
.source "AxT9optionsMyWords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private GET_CODE:I

.field private final INFO:Z

.field LengthOfWordsbuf:S

.field private final OPTION_MENU_ADD:I

.field private final OPTION_MENU_DELETE:I

.field private final OPTION_MENU_DELETE_ALL:I

.field private final OPTION_MENU_EDIT:I

.field private final TAG:Ljava/lang/String;

.field TextClickListener:Landroid/view/View$OnClickListener;

.field TextFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private UDB_BUF:[B

.field private final UDB_SIZE:I

.field private final UDB_WORD_SIZE:I

.field forward:B

.field lengthbuf:[S

.field mAddwordsViewClickListener:Landroid/view/View$OnClickListener;

.field mAddwordsViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

.field mCount:[S

.field private mCurrentFocusString:Ljava/lang/String;

.field mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mLeftBottomListener:Landroid/view/View$OnClickListener;

.field private mLeftButton:Landroid/widget/Button;

.field mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mMainListView:Landroid/widget/ListView;

.field private mMyWords_empty:Landroid/widget/LinearLayout;

.field private mRightButton:Landroid/widget/Button;

.field private mTouchDownItem:Landroid/widget/LinearLayout;

.field private mWordlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWordsinUDB:[Ljava/lang/String;

.field private misEditMode:Z

.field private final ms_UDB_FILE_NAME:Ljava/lang/String;

.field private final useTwWidget:Z

.field wordsbuf:[S


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x48

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    const-string v0, "AxT9IME"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->TAG:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->DEBUG:Z

    .line 70
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->INFO:Z

    .line 74
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->GET_CODE:I

    .line 85
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->misEditMode:Z

    .line 87
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->UDB_WORD_SIZE:I

    .line 89
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->forward:B

    .line 91
    const/16 v0, 0x5000

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->UDB_SIZE:I

    .line 92
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getUDBBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->UDB_BUF:[B

    .line 93
    const-string v0, "xT9UdbData.dat"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->ms_UDB_FILE_NAME:Ljava/lang/String;

    .line 95
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mCount:[S

    .line 97
    new-array v0, v3, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->wordsbuf:[S

    .line 98
    new-array v0, v2, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->lengthbuf:[S

    .line 99
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->wordsbuf:[S

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->LengthOfWordsbuf:S

    .line 103
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->useTwWidget:Z

    .line 108
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->OPTION_MENU_ADD:I

    .line 109
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->OPTION_MENU_EDIT:I

    .line 110
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->OPTION_MENU_DELETE:I

    .line 111
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->OPTION_MENU_DELETE_ALL:I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    .line 288
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->TextFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 298
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->TextClickListener:Landroid/view/View$OnClickListener;

    .line 316
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    .line 671
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 689
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mAddwordsViewClickListener:Landroid/view/View$OnClickListener;

    .line 695
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$6;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$6;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mAddwordsViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 754
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$7;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$7;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mCurrentFocusString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->misEditMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->misEditMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->GET_CODE:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->addMyWord()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mTouchDownItem:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mTouchDownItem:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method private addMyWord()V
    .registers 4

    .prologue
    .line 474
    const/4 v0, 0x0

    .line 475
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 476
    const-class v2, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 477
    const-string v2, "CurrentMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 478
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->GET_CODE:I

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->startActivityForResult(Landroid/content/Intent;I)V

    .line 479
    return-void
.end method

.method private convertShortArrtoString([SS)Ljava/lang/String;
    .registers 6
    .parameter "shortarr"
    .parameter "length"

    .prologue
    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .local v1, string:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 266
    .local v0, i:I
    const/4 v0, 0x0

    :goto_7
    if-ge v0, p2, :cond_12

    .line 267
    aget-short v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 269
    :cond_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteMyWord()V
    .registers 3

    .prologue
    .line 522
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 523
    const-class v1, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 524
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->GET_CODE:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->startActivityForResult(Landroid/content/Intent;I)V

    .line 525
    return-void
.end method

.method private getWordfromMyWords()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 277
    const-string v1, ""

    .line 279
    .local v1, getWordString:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->wordsbuf:[S

    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->LengthOfWordsbuf:S

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->lengthbuf:[S

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBGetWord([SS[SB)S

    move-result v0

    .line 280
    .local v0, errorcode:S
    if-eqz v0, :cond_f

    .line 283
    :cond_f
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->wordsbuf:[S

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->lengthbuf:[S

    aget-short v3, v3, v5

    invoke-direct {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->convertShortArrtoString([SS)Ljava/lang/String;

    move-result-object v1

    .line 285
    return-object v1
.end method

.method private readDBdataFromFile()V
    .registers 11

    .prologue
    .line 594
    const-string v0, ""

    .line 598
    .local v0, FileName:Ljava/lang/String;
    const-string v0, "xT9UdbData.dat"

    .line 600
    const-string v8, "xT9DB"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 601
    .local v1, dir:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 602
    .local v6, mfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 603
    const/4 v4, 0x0

    .line 604
    .local v4, is:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 606
    .local v7, returnOfRead:I
    :try_start_18
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_61
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_30
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_52

    .line 607
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_1d
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->UDB_BUF:[B

    invoke-virtual {v5, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_76
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_22} :catch_7c
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_79

    move-result v7

    .line 614
    if-eqz v5, :cond_28

    :try_start_25
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_2a

    :cond_28
    move-object v4, v5

    .line 628
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_29
    :goto_29
    return-void

    .line 615
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catch_2a
    move-exception v2

    .line 616
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 618
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_29

    .line 608
    .end local v2           #e:Ljava/io/IOException;
    :catch_30
    move-exception v2

    .line 609
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

    .line 614
    if-eqz v4, :cond_29

    :try_start_49
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_29

    .line 615
    :catch_4d
    move-exception v2

    .line 616
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 610
    .end local v2           #e:Ljava/io/IOException;
    :catch_52
    move-exception v2

    .line 611
    .restart local v2       #e:Ljava/io/IOException;
    :goto_53
    :try_start_53
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_61

    .line 614
    if-eqz v4, :cond_29

    :try_start_58
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_29

    .line 615
    :catch_5c
    move-exception v2

    .line 616
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 613
    .end local v2           #e:Ljava/io/IOException;
    :catchall_61
    move-exception v8

    .line 614
    :goto_62
    if-eqz v4, :cond_67

    :try_start_64
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    .line 617
    :cond_67
    :goto_67
    throw v8

    .line 615
    :catch_68
    move-exception v2

    .line 616
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_67

    .line 622
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_6d
    :try_start_6d
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_29

    .line 623
    :catch_71
    move-exception v3

    .line 624
    .local v3, e1:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 613
    .end local v3           #e1:Ljava/io/IOException;
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catchall_76
    move-exception v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_62

    .line 610
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_79
    move-exception v2

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_53

    .line 608
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_7c
    move-exception v2

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_31
.end method

.method private readDataFromDB()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 229
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mCount:[S

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWUDBGetWordCount([S)S

    move-result v0

    .line 230
    .local v0, errorcode:S
    if-eqz v0, :cond_b

    .line 234
    :cond_b
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mCount:[S

    aget-short v2, v2, v4

    if-lez v2, :cond_3c

    .line 235
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mCount:[S

    aget-short v2, v2, v4

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    .line 237
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_1a
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2a

    .line 238
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->getWordfromMyWords()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 242
    :cond_2a
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMyWords_empty:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 244
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 250
    .end local v1           #idx:I
    :goto_3b
    return-void

    .line 246
    :cond_3c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    .line 247
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMyWords_empty:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 248
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMainListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_3b
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x8

    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
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

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    const v2, 0x7f030019

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->setContentView(I)V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 128
    const v2, 0x7f07003f

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMyWords_empty:Landroid/widget/LinearLayout;

    .line 129
    const v2, 0x7f070040

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMainListView:Landroid/widget/ListView;

    .line 131
    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 132
    .local v1, addwordsView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_60

    .line 133
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mAddwordsViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mAddwordsViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    :cond_60
    const v2, 0x7f07002f

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mLeftButton:Landroid/widget/Button;

    .line 138
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mLeftButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mLeftBottomListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    const v2, 0x7f070030

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mRightButton:Landroid/widget/Button;

    .line 143
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 638
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 639
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 445
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 447
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->setResult(I)V

    .line 448
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->finish()V

    .line 449
    const/4 v0, 0x1

    .line 451
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 384
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 401
    :pswitch_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return v0

    .line 386
    :pswitch_a
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->addMyWord()V

    goto :goto_9

    .line 393
    :pswitch_e
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    .line 394
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->deleteMyWord()V

    goto :goto_9

    .line 384
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_a
        :pswitch_8
        :pswitch_e
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 643
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->misEditMode:Z

    .line 644
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 645
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 368
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 369
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v0, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020031

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 370
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_2b

    .line 378
    :cond_2a
    :goto_2a
    return v1

    .line 375
    :cond_2b
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v0, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020033

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4b

    move v0, v1

    :cond_4b
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2a
.end method

.method public onResume()V
    .registers 7

    .prologue
    .line 649
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 650
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "inSettings"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->sendBroadcast(Landroid/content/Intent;)V

    .line 652
    sget-boolean v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v3, :cond_14

    .line 653
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->readDBdataFromFile()V

    .line 655
    :cond_14
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->UDB_BUF:[B

    const/16 v4, 0x5000

    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWRUDBInit([BS)S

    move-result v0

    .line 657
    .local v0, errorcode:S
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->readDataFromDB()V

    .line 658
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordlist:Ljava/util/ArrayList;

    .line 659
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_27
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    if-nez v3, :cond_3a

    const/4 v3, 0x0

    :goto_2c
    if-ge v1, v3, :cond_3e

    .line 660
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordlist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_3a
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordsinUDB:[Ljava/lang/String;

    array-length v3, v3

    goto :goto_2c

    .line 663
    :cond_3e
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    const v4, 0x7f03001d

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mWordlist:Ljava/util/ArrayList;

    invoke-direct {v3, p0, p0, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    .line 664
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMainListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mArrayAdapter:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 665
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMainListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 666
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mMainListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->mListScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 668
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 669
    return-void
.end method
