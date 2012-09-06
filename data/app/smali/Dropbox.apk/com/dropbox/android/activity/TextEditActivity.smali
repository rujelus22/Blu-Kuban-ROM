.class public Lcom/dropbox/android/activity/TextEditActivity;
.super Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/net/Uri;

.field private c:Landroid/widget/EditText;

.field private d:Z

.field private e:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private final j:Lcom/dropbox/android/util/f;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-class v0, Lcom/dropbox/android/activity/TextEditActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/TextEditActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->d:Z

    .line 59
    iput-boolean v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->e:Z

    .line 60
    iput-boolean v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->g:Z

    .line 61
    iput-boolean v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->h:Z

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->i:Z

    .line 63
    new-instance v0, Lcom/dropbox/android/util/f;

    invoke-direct {v0, p0}, Lcom/dropbox/android/util/f;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->j:Lcom/dropbox/android/util/f;

    .line 64
    iput-object v1, p0, Lcom/dropbox/android/activity/TextEditActivity;->k:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/dropbox/android/activity/TextEditActivity;->l:Ljava/lang/String;

    .line 67
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->m:Ljava/lang/String;

    .line 69
    const-string v0, "\r\n"

    iput-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->n:Ljava/lang/String;

    .line 659
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/TextEditActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/dropbox/android/activity/TextEditActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dropbox/android/activity/TextEditActivity;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/dropbox/android/activity/TextEditActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dropbox/android/activity/TextEditActivity;->g()V

    return-void
.end method

.method private a(Landroid/net/Uri;Z)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 534
    .line 538
    :try_start_3
    invoke-virtual {p0}, Lcom/dropbox/android/activity/TextEditActivity;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_da
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_100

    move-result-object v4

    .line 539
    if-nez p2, :cond_117

    .line 541
    :try_start_9
    const-string v2, "r"

    invoke-virtual {v4, p1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_da
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_e} :catch_26
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_100

    move-result-object v2

    .line 544
    const v5, 0x7f090172

    const/4 v6, 0x1

    :try_start_13
    invoke-static {p0, v5, v6}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 547
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_f0
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_1a} :catch_114
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_b5

    .line 602
    invoke-static {v3}, Ldbxyzptlk/z/c;->a(Ljava/io/Writer;)V

    .line 603
    invoke-static {v3}, Ldbxyzptlk/z/c;->a(Ljava/io/OutputStream;)V

    .line 605
    if-eqz v2, :cond_25

    .line 606
    :try_start_22
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_e9

    .line 608
    :cond_25
    :goto_25
    return v0

    .line 549
    :catch_26
    move-exception v2

    move-object v2, v3

    .line 554
    :goto_28
    :try_start_28
    iget-object v5, p0, Lcom/dropbox/android/activity/TextEditActivity;->l:Ljava/lang/String;

    if-nez v5, :cond_99

    .line 555
    const-string v5, "UTF-8"

    iput-object v5, p0, Lcom/dropbox/android/activity/TextEditActivity;->l:Ljava/lang/String;

    .line 563
    :cond_30
    :goto_30
    const-string v5, "rwt"

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_f0
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_35} :catch_b5

    move-result-object v5

    .line 564
    :try_start_36
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_f4
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_104

    move-result-object v4

    .line 565
    :try_start_3a
    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lcom/dropbox/android/activity/TextEditActivity;->l:Ljava/lang/String;

    invoke-direct {v2, v4, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_f7
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_41} :catch_108

    .line 567
    :try_start_41
    iget-object v3, p0, Lcom/dropbox/android/activity/TextEditActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 568
    iget-object v6, p0, Lcom/dropbox/android/activity/TextEditActivity;->m:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/android/activity/TextEditActivity;->n:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5d

    .line 569
    iget-object v6, p0, Lcom/dropbox/android/activity/TextEditActivity;->m:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/android/activity/TextEditActivity;->n:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 571
    :cond_5d
    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_63
    .catchall {:try_start_41 .. :try_end_63} :catchall_f9
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_63} :catch_10c

    .line 576
    :try_start_63
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_f9
    .catch Ljava/io/SyncFailedException; {:try_start_63 .. :try_end_6a} :catch_111
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6a} :catch_10c

    .line 580
    :goto_6a
    :try_start_6a
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 581
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 583
    invoke-static {}, Lcom/dropbox/android/util/h;->o()Lcom/dropbox/android/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/android/util/r;->c()V

    .line 585
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/dropbox/android/activity/TextEditActivity;->d:Z

    .line 586
    iget-boolean v3, p0, Lcom/dropbox/android/activity/TextEditActivity;->e:Z

    if-eqz v3, :cond_81

    .line 587
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/dropbox/android/activity/TextEditActivity;->g:Z

    .line 589
    :cond_81
    const v3, 0x7f090166

    const/4 v6, 0x1

    invoke-static {p0, v3, v6}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 592
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_8c
    .catchall {:try_start_6a .. :try_end_8c} :catchall_f9
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_8c} :catch_10c

    .line 602
    invoke-static {v2}, Ldbxyzptlk/z/c;->a(Ljava/io/Writer;)V

    .line 603
    invoke-static {v4}, Ldbxyzptlk/z/c;->a(Ljava/io/OutputStream;)V

    .line 605
    if-eqz v5, :cond_97

    .line 606
    :try_start_94
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_ec

    :cond_97
    :goto_97
    move v0, v1

    .line 608
    goto :goto_25

    .line 557
    :cond_99
    :try_start_99
    iget-object v5, p0, Lcom/dropbox/android/activity/TextEditActivity;->l:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 558
    const-string v6, "ascii"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_af

    const-string v6, "us-ascii"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 559
    :cond_af
    const-string v5, "UTF-8"

    iput-object v5, p0, Lcom/dropbox/android/activity/TextEditActivity;->l:Ljava/lang/String;
    :try_end_b3
    .catchall {:try_start_99 .. :try_end_b3} :catchall_f0
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_b3} :catch_b5

    goto/16 :goto_30

    .line 594
    :catch_b5
    move-exception v1

    move-object v4, v2

    move-object v2, v3

    .line 595
    :goto_b8
    const v5, 0x7f090171

    const/4 v6, 0x1

    :try_start_bc
    invoke-static {p0, v5, v6}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 598
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 599
    sget-object v5, Lcom/dropbox/android/activity/TextEditActivity;->a:Ljava/lang/String;

    const-string v6, "Problem saving file"

    invoke-static {v5, v6, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ca
    .catchall {:try_start_bc .. :try_end_ca} :catchall_fc

    .line 602
    invoke-static {v3}, Ldbxyzptlk/z/c;->a(Ljava/io/Writer;)V

    .line 603
    invoke-static {v2}, Ldbxyzptlk/z/c;->a(Ljava/io/OutputStream;)V

    .line 605
    if-eqz v4, :cond_25

    .line 606
    :try_start_d2
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d7

    goto/16 :goto_25

    .line 608
    :catch_d7
    move-exception v1

    goto/16 :goto_25

    .line 602
    :catchall_da
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    :goto_dd
    invoke-static {v3}, Ldbxyzptlk/z/c;->a(Ljava/io/Writer;)V

    .line 603
    invoke-static {v4}, Ldbxyzptlk/z/c;->a(Ljava/io/OutputStream;)V

    .line 605
    if-eqz v5, :cond_e8

    .line 606
    :try_start_e5
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_ee

    .line 608
    :cond_e8
    :goto_e8
    throw v0

    :catch_e9
    move-exception v1

    goto/16 :goto_25

    :catch_ec
    move-exception v0

    goto :goto_97

    :catch_ee
    move-exception v1

    goto :goto_e8

    .line 602
    :catchall_f0
    move-exception v0

    move-object v4, v3

    move-object v5, v2

    goto :goto_dd

    :catchall_f4
    move-exception v0

    move-object v4, v3

    goto :goto_dd

    :catchall_f7
    move-exception v0

    goto :goto_dd

    :catchall_f9
    move-exception v0

    move-object v3, v2

    goto :goto_dd

    :catchall_fc
    move-exception v0

    move-object v5, v4

    move-object v4, v2

    goto :goto_dd

    .line 594
    :catch_100
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto :goto_b8

    :catch_104
    move-exception v1

    move-object v2, v3

    move-object v4, v5

    goto :goto_b8

    :catch_108
    move-exception v1

    move-object v2, v4

    move-object v4, v5

    goto :goto_b8

    :catch_10c
    move-exception v1

    move-object v3, v2

    move-object v2, v4

    move-object v4, v5

    goto :goto_b8

    .line 577
    :catch_111
    move-exception v3

    goto/16 :goto_6a

    .line 549
    :catch_114
    move-exception v5

    goto/16 :goto_28

    :cond_117
    move-object v2, v3

    goto/16 :goto_28
.end method

.method static synthetic a(Lcom/dropbox/android/activity/TextEditActivity;Landroid/net/Uri;Z)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/activity/TextEditActivity;->a(Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dropbox/android/activity/TextEditActivity;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/dropbox/android/activity/TextEditActivity;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/dropbox/android/activity/TextEditActivity;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic b(Lcom/dropbox/android/activity/TextEditActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dropbox/android/activity/TextEditActivity;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/dropbox/android/activity/TextEditActivity;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/dropbox/android/activity/TextEditActivity;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/dropbox/android/activity/TextEditActivity;)Lcom/dropbox/android/util/f;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->j:Lcom/dropbox/android/util/f;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/dropbox/android/activity/TextEditActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/dropbox/android/activity/TextEditActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/dropbox/android/activity/TextEditActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->h:Z

    return v0
.end method

.method private f()V
    .registers 19

    .prologue
    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/activity/TextEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 343
    const-string v7, "rw"

    .line 345
    const/4 v5, 0x0

    .line 347
    const/4 v4, 0x0

    .line 348
    const/4 v2, 0x0

    .line 349
    const/4 v3, 0x0

    .line 353
    :try_start_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    invoke-virtual {v12, v1, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_298
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_11} :catch_66
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_84
    .catch Lcom/dropbox/android/activity/bz; {:try_start_a .. :try_end_11} :catch_311
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_251

    move-result-object v6

    move-object v11, v7

    .line 367
    :goto_13
    :try_start_13
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 368
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_2b5
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1c} :catch_32f
    .catch Lcom/dropbox/android/activity/bz; {:try_start_13 .. :try_end_1c} :catch_31d
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_1c} :catch_2f6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_2d5

    .line 369
    :try_start_1c
    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v4, v5, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_2b9
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_338
    .catch Lcom/dropbox/android/activity/bz; {:try_start_1c .. :try_end_23} :catch_322
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_23} :catch_2fb
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_23} :catch_2da

    .line 370
    const/4 v8, 0x0

    .line 372
    const/16 v1, 0x400

    :try_start_26
    new-array v13, v1, [B

    .line 375
    const/4 v9, 0x0

    .line 376
    const/4 v2, 0x0

    .line 380
    const/4 v1, 0x0

    .line 381
    new-instance v14, Ldbxyzptlk/E/i;

    invoke-direct {v14, v1}, Ldbxyzptlk/E/i;-><init>(I)V

    .line 384
    new-instance v1, Lcom/dropbox/android/activity/bq;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/dropbox/android/activity/bq;-><init>(Lcom/dropbox/android/activity/TextEditActivity;)V

    invoke-virtual {v14, v1}, Ldbxyzptlk/E/i;->a(Ldbxyzptlk/E/r;)V

    .line 396
    const/4 v7, 0x1

    .line 398
    const/4 v1, 0x0

    move v10, v1

    .line 399
    :goto_3d
    const/4 v1, 0x0

    array-length v15, v13

    invoke-virtual {v4, v13, v1, v15}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v15

    const/4 v1, -0x1

    if-eq v15, v1, :cond_f6

    if-eqz v10, :cond_4a

    if-nez v9, :cond_f6

    .line 401
    :cond_4a
    const/4 v1, 0x0

    move/from16 v17, v1

    move v1, v2

    move v2, v9

    move/from16 v9, v17

    :goto_51
    if-nez v2, :cond_e2

    if-ge v9, v15, :cond_e2

    .line 402
    aget-byte v16, v13, v9

    packed-switch v16, :pswitch_data_354

    .line 415
    :pswitch_5a
    if-eqz v1, :cond_63

    .line 416
    const-string v2, "\r"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/dropbox/android/activity/TextEditActivity;->n:Ljava/lang/String;
    :try_end_62
    .catchall {:try_start_26 .. :try_end_62} :catchall_2bc
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_62} :catch_da
    .catch Lcom/dropbox/android/activity/bz; {:try_start_26 .. :try_end_62} :catch_1a8
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_62} :catch_2ff
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_62} :catch_2de

    .line 417
    const/4 v2, 0x1

    .line 401
    :cond_63
    :goto_63
    add-int/lit8 v9, v9, 0x1

    goto :goto_51

    .line 354
    :catch_66
    move-exception v1

    .line 359
    :try_start_67
    const-string v6, "rw"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    const-string v6, "r"

    invoke-virtual {v12, v1, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_78
    .catchall {:try_start_67 .. :try_end_78} :catchall_298
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_78} :catch_84
    .catch Lcom/dropbox/android/activity/bz; {:try_start_67 .. :try_end_78} :catch_311
    .catch Ljava/lang/SecurityException; {:try_start_67 .. :try_end_78} :catch_20a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_78} :catch_251

    move-result-object v5

    .line 361
    :try_start_79
    const-string v1, "r"

    .line 362
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/dropbox/android/activity/TextEditActivity;->i:Z
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_2b0
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_80} :catch_84
    .catch Lcom/dropbox/android/activity/bz; {:try_start_79 .. :try_end_80} :catch_317
    .catch Ljava/lang/SecurityException; {:try_start_79 .. :try_end_80} :catch_2f0
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_80} :catch_2d0

    move-object v6, v5

    move-object v11, v1

    goto :goto_13

    .line 364
    :cond_83
    :try_start_83
    throw v1
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_298
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_84} :catch_84
    .catch Lcom/dropbox/android/activity/bz; {:try_start_83 .. :try_end_84} :catch_311
    .catch Ljava/lang/SecurityException; {:try_start_83 .. :try_end_84} :catch_20a
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_84} :catch_251

    .line 491
    :catch_84
    move-exception v1

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    .line 492
    :goto_8a
    const v6, 0x7f09016f

    const/4 v7, 0x1

    :try_start_8e
    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 495
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 496
    sget-object v6, Lcom/dropbox/android/activity/TextEditActivity;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem opening file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/activity/TextEditActivity;->finish()V
    :try_end_ba
    .catchall {:try_start_8e .. :try_end_ba} :catchall_2ca

    .line 520
    invoke-static {v2}, Ldbxyzptlk/z/c;->a(Ljava/io/Reader;)V

    .line 521
    invoke-static {v3}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 522
    invoke-static {v4}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 523
    if-eqz v5, :cond_c8

    .line 525
    :try_start_c5
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_2ab

    .line 529
    :cond_c8
    :goto_c8
    return-void

    .line 404
    :pswitch_c9
    if-eqz v1, :cond_d3

    .line 405
    :try_start_cb
    const-string v2, "\r\n"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/dropbox/android/activity/TextEditActivity;->n:Ljava/lang/String;

    .line 409
    :goto_d1
    const/4 v2, 0x1

    .line 410
    goto :goto_63

    .line 407
    :cond_d3
    const-string v2, "\n"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/dropbox/android/activity/TextEditActivity;->n:Ljava/lang/String;

    goto :goto_d1

    .line 491
    :catch_da
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_8a

    .line 412
    :pswitch_e0
    const/4 v1, 0x1

    .line 413
    goto :goto_63

    .line 425
    :cond_e2
    if-eqz v7, :cond_e8

    .line 426
    invoke-virtual {v14, v13, v15}, Ldbxyzptlk/E/i;->a([BI)Z

    move-result v7

    .line 429
    :cond_e8
    if-nez v7, :cond_350

    if-nez v10, :cond_350

    .line 430
    const/4 v9, 0x0

    invoke-virtual {v14, v13, v15, v9}, Ldbxyzptlk/E/i;->a([BIZ)Z

    move-result v9

    move v10, v9

    move v9, v2

    move v2, v1

    goto/16 :goto_3d

    .line 432
    :cond_f6
    invoke-virtual {v14}, Ldbxyzptlk/E/i;->b()V

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/android/activity/TextEditActivity;->l:Ljava/lang/String;

    if-nez v1, :cond_10e

    .line 437
    if-eqz v7, :cond_1a0

    .line 438
    sget-object v1, Lcom/dropbox/android/activity/TextEditActivity;->a:Ljava/lang/String;

    const-string v2, "CHARSET = ASCII"

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const-string v1, "us-ascii"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/dropbox/android/activity/TextEditActivity;->l:Ljava/lang/String;

    .line 448
    :cond_10e
    :goto_10e
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 449
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 450
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 452
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    invoke-virtual {v12, v1, v11}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_11e
    .catchall {:try_start_cb .. :try_end_11e} :catchall_2bc
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_11e} :catch_da
    .catch Lcom/dropbox/android/activity/bz; {:try_start_cb .. :try_end_11e} :catch_1a8
    .catch Ljava/lang/SecurityException; {:try_start_cb .. :try_end_11e} :catch_2ff
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_11e} :catch_2de

    move-result-object v7

    .line 453
    :try_start_11f
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 454
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_128
    .catchall {:try_start_11f .. :try_end_128} :catchall_2be
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_128} :catch_342
    .catch Lcom/dropbox/android/activity/bz; {:try_start_11f .. :try_end_128} :catch_326
    .catch Ljava/lang/SecurityException; {:try_start_11f .. :try_end_128} :catch_302
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_128} :catch_2e1

    .line 455
    :try_start_128
    new-instance v2, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/android/activity/TextEditActivity;->l:Ljava/lang/String;

    invoke-direct {v2, v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_131
    .catchall {:try_start_128 .. :try_end_131} :catchall_2c1
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_131} :catch_349
    .catch Lcom/dropbox/android/activity/bz; {:try_start_128 .. :try_end_131} :catch_32a
    .catch Ljava/lang/SecurityException; {:try_start_128 .. :try_end_131} :catch_306
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_131} :catch_2e5

    .line 457
    const/16 v1, 0x400

    :try_start_133
    new-array v3, v1, [C

    .line 458
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v8

    .line 460
    :goto_13b
    invoke-virtual {v2, v3}, Ljava/io/Reader;->read([C)I

    move-result v8

    .line 461
    if-gez v8, :cond_1ec

    .line 471
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/android/activity/TextEditActivity;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dropbox/android/activity/TextEditActivity;->m:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15f

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/android/activity/TextEditActivity;->n:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dropbox/android/activity/TextEditActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 477
    :cond_15f
    invoke-static {}, Lcom/dropbox/android/util/h;->n()Lcom/dropbox/android/util/r;

    move-result-object v3

    const-string v5, "mode"

    invoke-virtual {v3, v5, v11}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/android/util/r;->c()V

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/android/activity/TextEditActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 480
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/dropbox/android/activity/TextEditActivity;->i:Z

    if-nez v1, :cond_18d

    .line 481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/android/activity/TextEditActivity;->c:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v8, Lcom/dropbox/android/activity/br;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/dropbox/android/activity/br;-><init>(Lcom/dropbox/android/activity/TextEditActivity;)V

    aput-object v8, v3, v5

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V
    :try_end_18d
    .catchall {:try_start_133 .. :try_end_18d} :catchall_2c5
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_18d} :catch_1f9
    .catch Lcom/dropbox/android/activity/bz; {:try_start_133 .. :try_end_18d} :catch_205
    .catch Ljava/lang/SecurityException; {:try_start_133 .. :try_end_18d} :catch_30b
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_18d} :catch_2ea

    .line 520
    :cond_18d
    invoke-static {v2}, Ldbxyzptlk/z/c;->a(Ljava/io/Reader;)V

    .line 521
    invoke-static {v4}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 522
    invoke-static {v6}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 523
    if-eqz v7, :cond_c8

    .line 525
    :try_start_198
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_19b} :catch_19d

    goto/16 :goto_c8

    .line 526
    :catch_19d
    move-exception v1

    goto/16 :goto_c8

    .line 441
    :cond_1a0
    :try_start_1a0
    const-string v1, "UTF-8"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/dropbox/android/activity/TextEditActivity;->l:Ljava/lang/String;
    :try_end_1a6
    .catchall {:try_start_1a0 .. :try_end_1a6} :catchall_2bc
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1a6} :catch_da
    .catch Lcom/dropbox/android/activity/bz; {:try_start_1a0 .. :try_end_1a6} :catch_1a8
    .catch Ljava/lang/SecurityException; {:try_start_1a0 .. :try_end_1a6} :catch_2ff
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1a6} :catch_2de

    goto/16 :goto_10e

    .line 498
    :catch_1a8
    move-exception v1

    .line 499
    :goto_1a9
    const v1, 0x7f090170

    const/4 v2, 0x1

    :try_start_1ad
    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 502
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 503
    sget-object v1, Lcom/dropbox/android/activity/TextEditActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too large of a file: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/activity/TextEditActivity;->finish()V
    :try_end_1d9
    .catchall {:try_start_1ad .. :try_end_1d9} :catchall_2bc

    .line 520
    invoke-static {v3}, Ldbxyzptlk/z/c;->a(Ljava/io/Reader;)V

    .line 521
    invoke-static {v4}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 522
    invoke-static {v5}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 523
    if-eqz v6, :cond_c8

    .line 525
    :try_start_1e4
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_1e9

    goto/16 :goto_c8

    .line 526
    :catch_1e9
    move-exception v1

    goto/16 :goto_c8

    .line 464
    :cond_1ec
    add-int/2addr v1, v8

    .line 465
    const v9, 0x3e800

    if-le v1, v9, :cond_1ff

    .line 466
    :try_start_1f2
    new-instance v1, Lcom/dropbox/android/activity/bz;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/dropbox/android/activity/bz;-><init>(Lcom/dropbox/android/activity/bp;)V

    throw v1

    .line 491
    :catch_1f9
    move-exception v1

    move-object v3, v4

    move-object v5, v7

    move-object v4, v6

    goto/16 :goto_8a

    .line 468
    :cond_1ff
    const/4 v9, 0x0

    invoke-virtual {v5, v3, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_203
    .catchall {:try_start_1f2 .. :try_end_203} :catchall_2c5
    .catch Ljava/io/IOException; {:try_start_1f2 .. :try_end_203} :catch_1f9
    .catch Lcom/dropbox/android/activity/bz; {:try_start_1f2 .. :try_end_203} :catch_205
    .catch Ljava/lang/SecurityException; {:try_start_1f2 .. :try_end_203} :catch_30b
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_203} :catch_2ea

    goto/16 :goto_13b

    .line 498
    :catch_205
    move-exception v1

    move-object v3, v2

    move-object v5, v6

    move-object v6, v7

    goto :goto_1a9

    .line 505
    :catch_20a
    move-exception v1

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    .line 506
    :goto_20e
    const v2, 0x7f090173

    const/4 v7, 0x1

    :try_start_212
    move-object/from16 v0, p0

    invoke-static {v0, v2, v7}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 509
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 510
    sget-object v2, Lcom/dropbox/android/activity/TextEditActivity;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Security exception opening "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/activity/TextEditActivity;->finish()V
    :try_end_23e
    .catchall {:try_start_212 .. :try_end_23e} :catchall_2bc

    .line 520
    invoke-static {v3}, Ldbxyzptlk/z/c;->a(Ljava/io/Reader;)V

    .line 521
    invoke-static {v4}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 522
    invoke-static {v5}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 523
    if-eqz v6, :cond_c8

    .line 525
    :try_start_249
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_24c
    .catch Ljava/io/IOException; {:try_start_249 .. :try_end_24c} :catch_24e

    goto/16 :goto_c8

    .line 526
    :catch_24e
    move-exception v1

    goto/16 :goto_c8

    .line 512
    :catch_251
    move-exception v1

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    .line 513
    :goto_255
    const v2, 0x7f09016f

    const/4 v7, 0x1

    :try_start_259
    move-object/from16 v0, p0

    invoke-static {v0, v2, v7}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 516
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 517
    sget-object v2, Lcom/dropbox/android/activity/TextEditActivity;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Problem opening file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/activity/TextEditActivity;->finish()V
    :try_end_285
    .catchall {:try_start_259 .. :try_end_285} :catchall_2bc

    .line 520
    invoke-static {v3}, Ldbxyzptlk/z/c;->a(Ljava/io/Reader;)V

    .line 521
    invoke-static {v4}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 522
    invoke-static {v5}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 523
    if-eqz v6, :cond_c8

    .line 525
    :try_start_290
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_293
    .catch Ljava/io/IOException; {:try_start_290 .. :try_end_293} :catch_295

    goto/16 :goto_c8

    .line 526
    :catch_295
    move-exception v1

    goto/16 :goto_c8

    .line 520
    :catchall_298
    move-exception v1

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    :goto_29c
    invoke-static {v3}, Ldbxyzptlk/z/c;->a(Ljava/io/Reader;)V

    .line 521
    invoke-static {v4}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 522
    invoke-static {v5}, Ldbxyzptlk/z/c;->a(Ljava/io/InputStream;)V

    .line 523
    if-eqz v6, :cond_2aa

    .line 525
    :try_start_2a7
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2aa
    .catch Ljava/io/IOException; {:try_start_2a7 .. :try_end_2aa} :catch_2ae

    .line 526
    :cond_2aa
    :goto_2aa
    throw v1

    :catch_2ab
    move-exception v1

    goto/16 :goto_c8

    :catch_2ae
    move-exception v2

    goto :goto_2aa

    .line 520
    :catchall_2b0
    move-exception v1

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    goto :goto_29c

    :catchall_2b5
    move-exception v1

    move-object v5, v4

    move-object v4, v2

    goto :goto_29c

    :catchall_2b9
    move-exception v1

    move-object v4, v2

    goto :goto_29c

    :catchall_2bc
    move-exception v1

    goto :goto_29c

    :catchall_2be
    move-exception v1

    move-object v6, v7

    goto :goto_29c

    :catchall_2c1
    move-exception v1

    move-object v5, v6

    move-object v6, v7

    goto :goto_29c

    :catchall_2c5
    move-exception v1

    move-object v3, v2

    move-object v5, v6

    move-object v6, v7

    goto :goto_29c

    :catchall_2ca
    move-exception v1

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_29c

    .line 512
    :catch_2d0
    move-exception v1

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    goto :goto_255

    :catch_2d5
    move-exception v1

    move-object v5, v4

    move-object v4, v2

    goto/16 :goto_255

    :catch_2da
    move-exception v1

    move-object v4, v2

    goto/16 :goto_255

    :catch_2de
    move-exception v1

    goto/16 :goto_255

    :catch_2e1
    move-exception v1

    move-object v6, v7

    goto/16 :goto_255

    :catch_2e5
    move-exception v1

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_255

    :catch_2ea
    move-exception v1

    move-object v3, v2

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_255

    .line 505
    :catch_2f0
    move-exception v1

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    goto/16 :goto_20e

    :catch_2f6
    move-exception v1

    move-object v5, v4

    move-object v4, v2

    goto/16 :goto_20e

    :catch_2fb
    move-exception v1

    move-object v4, v2

    goto/16 :goto_20e

    :catch_2ff
    move-exception v1

    goto/16 :goto_20e

    :catch_302
    move-exception v1

    move-object v6, v7

    goto/16 :goto_20e

    :catch_306
    move-exception v1

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_20e

    :catch_30b
    move-exception v1

    move-object v3, v2

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_20e

    .line 498
    :catch_311
    move-exception v1

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    goto/16 :goto_1a9

    :catch_317
    move-exception v1

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    goto/16 :goto_1a9

    :catch_31d
    move-exception v1

    move-object v5, v4

    move-object v4, v2

    goto/16 :goto_1a9

    :catch_322
    move-exception v1

    move-object v4, v2

    goto/16 :goto_1a9

    :catch_326
    move-exception v1

    move-object v6, v7

    goto/16 :goto_1a9

    :catch_32a
    move-exception v1

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_1a9

    .line 491
    :catch_32f
    move-exception v1

    move-object v5, v6

    move-object/from16 v17, v2

    move-object v2, v3

    move-object/from16 v3, v17

    goto/16 :goto_8a

    :catch_338
    move-exception v1

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_8a

    :catch_342
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    goto/16 :goto_8a

    :catch_349
    move-exception v1

    move-object v2, v3

    move-object v5, v7

    move-object v3, v4

    move-object v4, v6

    goto/16 :goto_8a

    :cond_350
    move v9, v2

    move v2, v1

    goto/16 :goto_3d

    .line 402
    :pswitch_data_354
    .packed-switch 0xa
        :pswitch_c9
        :pswitch_5a
        :pswitch_5a
        :pswitch_e0
    .end packed-switch
.end method

.method static synthetic f(Lcom/dropbox/android/activity/TextEditActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->d:Z

    return v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->e:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->g:Z

    if-eqz v0, :cond_16

    .line 614
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 615
    iget-object v1, p0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 616
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/dropbox/android/activity/TextEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 618
    :cond_16
    invoke-virtual {p0}, Lcom/dropbox/android/activity/TextEditActivity;->finish()V

    .line 619
    return-void
.end method

.method static synthetic g(Lcom/dropbox/android/activity/TextEditActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->i:Z

    return v0
.end method

.method static synthetic h(Lcom/dropbox/android/activity/TextEditActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final c()Z
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public final e_()Z
    .registers 2

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->d:Z

    if-eqz v0, :cond_e

    .line 653
    sget-object v0, Lcom/dropbox/android/activity/bs;->a:Lcom/dropbox/android/activity/bs;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/bs;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/TextEditActivity;->showDialog(I)V

    .line 657
    :goto_d
    return-void

    .line 655
    :cond_e
    invoke-direct {p0}, Lcom/dropbox/android/activity/TextEditActivity;->g()V

    goto :goto_d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 228
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->onCreate(Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0}, Lcom/dropbox/android/activity/TextEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 236
    :cond_1c
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    .line 238
    iget-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    if-nez v0, :cond_50

    .line 239
    sget-object v0, Lcom/dropbox/android/activity/TextEditActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t edit this type of file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const v0, 0x7f09016f

    invoke-static {p0, v0, v4}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 244
    invoke-virtual {p0}, Lcom/dropbox/android/activity/TextEditActivity;->finish()V

    .line 321
    :goto_4f
    return-void

    .line 248
    :cond_50
    :try_start_50
    iget-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/dropbox/android/util/aa;->a(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->k:Ljava/lang/String;
    :try_end_58
    .catch Ljava/lang/SecurityException; {:try_start_50 .. :try_end_58} :catch_94

    .line 275
    :goto_58
    const-string v0, "CHARACTER_SET"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_62

    .line 277
    iput-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->l:Ljava/lang/String;

    .line 282
    :cond_62
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/TextEditActivity;->setContentView(I)V

    .line 285
    const v0, 0x7f0d00c2

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/TextEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->c:Landroid/widget/EditText;

    .line 287
    new-instance v0, Lcom/dropbox/android/activity/bp;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/bp;-><init>(Lcom/dropbox/android/activity/TextEditActivity;)V

    .line 313
    iget-object v1, p0, Lcom/dropbox/android/activity/TextEditActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 315
    iget-boolean v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->e:Z

    if-nez v0, :cond_84

    .line 316
    invoke-direct {p0}, Lcom/dropbox/android/activity/TextEditActivity;->f()V

    .line 318
    :cond_84
    iget-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/TextEditActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->d:Z

    .line 320
    iget-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->j:Lcom/dropbox/android/util/f;

    iget-object v1, p0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/f;->a(Landroid/net/Uri;)V

    goto :goto_4f

    .line 249
    :catch_94
    move-exception v0

    .line 250
    sget-object v0, Lcom/dropbox/android/activity/TextEditActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception trying to read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const v0, 0x7f090173

    invoke-static {p0, v0, v4}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    invoke-virtual {p0}, Lcom/dropbox/android/activity/TextEditActivity;->finish()V

    goto :goto_58

    .line 257
    :cond_bd
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 259
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_d9

    .line 261
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "output"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    .line 263
    :cond_d9
    iget-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    if-nez v0, :cond_102

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dropbox/android/util/ab;->g()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    .line 266
    :cond_102
    const v0, 0x7f09016b

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/TextEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->k:Ljava/lang/String;

    .line 267
    iput-boolean v4, p0, Lcom/dropbox/android/activity/TextEditActivity;->e:Z

    goto/16 :goto_58

    .line 270
    :cond_10f
    sget-object v1, Lcom/dropbox/android/activity/TextEditActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exiting, unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0}, Lcom/dropbox/android/activity/TextEditActivity;->finish()V

    goto/16 :goto_4f
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 646
    invoke-static {p1}, Lcom/dropbox/android/activity/bs;->a(I)Lcom/dropbox/android/activity/bs;

    move-result-object v0

    .line 647
    invoke-virtual {v0, p0}, Lcom/dropbox/android/activity/bs;->a(Lcom/dropbox/android/activity/TextEditActivity;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 332
    iget-boolean v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->i:Z

    if-eqz v0, :cond_10

    .line 333
    const v0, 0x7f090164

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/TextEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 335
    :cond_10
    const v0, 0x7f090165

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/TextEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 337
    return v2
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 325
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableBetterDefaultActivity;->onDestroy()V

    .line 326
    iget-object v0, p0, Lcom/dropbox/android/activity/TextEditActivity;->j:Lcom/dropbox/android/util/f;

    invoke-virtual {v0}, Lcom/dropbox/android/util/f;->a()V

    .line 327
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 624
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_42

    .line 641
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 626
    :pswitch_a
    iget-object v1, p0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 627
    sget-object v1, Lcom/dropbox/android/activity/bs;->b:Lcom/dropbox/android/activity/bs;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/bs;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/TextEditActivity;->showDialog(I)V

    goto :goto_9

    .line 629
    :cond_22
    iget-object v1, p0, Lcom/dropbox/android/activity/TextEditActivity;->b:Landroid/net/Uri;

    invoke-direct {p0, v1, v0}, Lcom/dropbox/android/activity/TextEditActivity;->a(Landroid/net/Uri;Z)Z

    .line 630
    invoke-static {}, Lcom/dropbox/android/util/h;->aa()Lcom/dropbox/android/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/r;->c()V

    goto :goto_9

    .line 634
    :pswitch_2f
    iget-boolean v1, p0, Lcom/dropbox/android/activity/TextEditActivity;->d:Z

    if-nez v1, :cond_37

    .line 635
    invoke-direct {p0}, Lcom/dropbox/android/activity/TextEditActivity;->g()V

    goto :goto_9

    .line 637
    :cond_37
    sget-object v1, Lcom/dropbox/android/activity/bs;->a:Lcom/dropbox/android/activity/bs;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/bs;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/TextEditActivity;->showDialog(I)V

    goto :goto_9

    .line 624
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_a
        :pswitch_2f
    .end packed-switch
.end method
