.class public Lcom/dropbox/android/activity/lock/LockCodeActivity;
.super Lcom/dropbox/android/activity/base/BaseActivity;
.source "panda.py"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Z

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/dropbox/android/activity/lock/i;

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:J

.field private q:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/dropbox/android/activity/lock/LockCodeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseActivity;-><init>()V

    .line 257
    iput v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->l:I

    .line 258
    iput v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->m:I

    .line 259
    iput v2, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->n:I

    .line 261
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->p:J

    .line 263
    iput-boolean v2, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a:Z

    .line 733
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->l:I

    return v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 533
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->g:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 538
    return-void
.end method

.method private a(I)V
    .registers 4
    .parameter

    .prologue
    .line 541
    sget-object v0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b:Ljava/lang/String;

    const-string v1, "Unlocked Lock Code"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {p0, p1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->setResult(I)V

    .line 543
    const/4 v0, -0x1

    if-ne p1, v0, :cond_14

    .line 544
    invoke-static {}, Lcom/dropbox/android/activity/lock/LockReceiver;->c()V

    .line 548
    :goto_10
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->finish()V

    .line 549
    return-void

    .line 546
    :cond_14
    invoke-static {}, Lcom/dropbox/android/activity/lock/LockReceiver;->d()V

    goto :goto_10
.end method

.method static synthetic a(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(I)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->k:Lcom/dropbox/android/activity/lock/i;

    if-eqz v0, :cond_9

    .line 431
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->k:Lcom/dropbox/android/activity/lock/i;

    invoke-virtual {v0, p0, p1, p2}, Lcom/dropbox/android/activity/lock/i;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)V

    .line 433
    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .registers 2
    .parameter

    .prologue
    .line 552
    iput p1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->l:I

    .line 553
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a()V

    .line 554
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c()V

    .line 555
    return-void
.end method

.method static synthetic b(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Z)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const v4, 0x7f090142

    const/16 v3, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 436
    iget-object v2, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->i:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 468
    :cond_f
    :goto_f
    return v0

    .line 438
    :cond_10
    invoke-static {}, Lcom/dropbox/android/util/W;->a()Z

    move-result v2

    if-nez v2, :cond_f

    .line 440
    if-eqz p2, :cond_49

    .line 441
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a()V

    .line 442
    iget v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->m:I

    .line 443
    iget-boolean v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->o:Z

    if-eqz v0, :cond_7c

    .line 444
    iget v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->m:I

    if-ne v0, v3, :cond_4b

    .line 445
    const v0, 0x7f090144

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c(I)V

    .line 446
    sget-object v0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b:Ljava/lang/String;

    const-string v2, "Unlinking from too many times with error code."

    invoke-static {v0, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v0, Ldbxyzptlk/j/r;

    invoke-direct {v0, p0}, Ldbxyzptlk/j/r;-><init>(Landroid/content/Context;)V

    .line 448
    sget-object v2, Lcom/dropbox/android/activity/lock/c;->b:Lcom/dropbox/android/activity/lock/c;

    invoke-virtual {v2}, Lcom/dropbox/android/activity/lock/c;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ldbxyzptlk/j/r;->a(I)V

    .line 449
    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Ldbxyzptlk/j/r;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_49
    :goto_49
    move v0, v1

    .line 468
    goto :goto_f

    .line 450
    :cond_4b
    iget v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->m:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_58

    .line 451
    const v0, 0x7f090143

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c(I)V

    goto :goto_49

    .line 453
    :cond_58
    sget-object v0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Now we have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retries."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-direct {p0, v4}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c(I)V

    goto :goto_49

    .line 457
    :cond_7c
    iget v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->m:I

    if-ne v0, v3, :cond_9d

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->p:J

    .line 459
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v0

    .line 460
    iget-wide v2, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->p:J

    invoke-virtual {v0, v2, v3}, Ldbxyzptlk/j/a;->a(J)V

    .line 461
    sget-object v0, Lcom/dropbox/android/activity/lock/c;->a:Lcom/dropbox/android/activity/lock/c;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/lock/c;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->showDialog(I)V

    goto :goto_49

    .line 463
    :cond_9d
    sget-object v0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Now we have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retries."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0, v4}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c(I)V

    goto :goto_49
.end method

.method static synthetic c(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->n:I

    return p1
.end method

.method static synthetic c(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->k:Lcom/dropbox/android/activity/lock/i;

    invoke-virtual {v0, p0}, Lcom/dropbox/android/activity/lock/i;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I

    move-result v0

    .line 560
    if-eqz v0, :cond_11

    .line 561
    iget-object v1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :cond_11
    return-void
.end method

.method private c(I)V
    .registers 3
    .parameter

    .prologue
    .line 567
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->q:Landroid/widget/Toast;

    if-nez v0, :cond_11

    .line 568
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->q:Landroid/widget/Toast;

    .line 572
    :goto_b
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->q:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 573
    return-void

    .line 570
    :cond_11
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->q:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_b
.end method

.method private c(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 472
    if-eqz p2, :cond_f

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 474
    iput-object p1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->j:Ljava/lang/String;

    .line 475
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b(I)V

    .line 480
    :cond_f
    :goto_f
    return-void

    .line 477
    :cond_10
    sget-object v0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b:Ljava/lang/String;

    const-string v1, "Got a non-4 character lock code"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method static synthetic c(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private d(I)Landroid/widget/EditText;
    .registers 3
    .parameter

    .prologue
    .line 601
    packed-switch p1, :pswitch_data_12

    .line 611
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c:Landroid/widget/EditText;

    :goto_5
    return-object v0

    .line 603
    :pswitch_6
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c:Landroid/widget/EditText;

    goto :goto_5

    .line 605
    :pswitch_9
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d:Landroid/widget/EditText;

    goto :goto_5

    .line 607
    :pswitch_c
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->e:Landroid/widget/EditText;

    goto :goto_5

    .line 609
    :pswitch_f
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->g:Landroid/widget/EditText;

    goto :goto_5

    .line 601
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method static synthetic d(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)Landroid/widget/EditText;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d(I)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private d(Ljava/lang/String;Z)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 484
    iget-object v2, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 485
    const v1, 0x7f090146

    invoke-direct {p0, v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c(I)V

    .line 487
    iget-object v1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->i:Ljava/lang/String;

    .line 488
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v1

    .line 489
    iget-object v2, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ldbxyzptlk/j/a;->b(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v1, v0}, Ldbxyzptlk/j/a;->a(Z)V

    .line 491
    invoke-direct {p0, v4}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(I)V

    .line 520
    :goto_24
    return v0

    .line 493
    :cond_25
    if-eqz p2, :cond_54

    .line 496
    :try_start_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_41} :catch_56

    move-result v2

    .line 500
    :goto_42
    packed-switch v2, :pswitch_data_64

    .line 509
    const v2, 0x7f090145

    invoke-direct {p0, v2}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c(I)V

    .line 514
    :goto_4b
    iget-object v2, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->k:Lcom/dropbox/android/activity/lock/i;

    sget-object v3, Lcom/dropbox/android/activity/lock/i;->d:Lcom/dropbox/android/activity/lock/i;

    if-ne v2, v3, :cond_60

    .line 515
    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b(I)V

    :cond_54
    :goto_54
    move v0, v1

    .line 520
    goto :goto_24

    .line 497
    :catch_56
    move-exception v2

    move v2, v1

    goto :goto_42

    .line 503
    :pswitch_59
    invoke-static {p0}, Lcom/dropbox/android/activity/PrefsActivity;->a(Landroid/content/Context;)V

    .line 504
    invoke-direct {p0, v4}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(I)V

    goto :goto_4b

    .line 517
    :cond_60
    invoke-direct {p0, v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b(I)V

    goto :goto_54

    .line 500
    :pswitch_data_64
    .packed-switch 0xbc614e
        :pswitch_59
    .end packed-switch
.end method

.method static synthetic e(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 589
    iget-wide v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->p:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea5f

    add-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 592
    if-ne v0, v4, :cond_1b

    .line 593
    const v0, 0x7f090148

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 597
    :goto_1a
    return-object v0

    .line 595
    :cond_1b
    const v1, 0x7f090147

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method static synthetic g(Lcom/dropbox/android/activity/lock/LockCodeActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->n:I

    return v0
.end method


# virtual methods
.method public final e_()Z
    .registers 2

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public finish()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 525
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 526
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 527
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 528
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 529
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseActivity;->finish()V

    .line 530
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v13, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 299
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Ldbxyzptlk/j/a;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->i:Ljava/lang/String;

    .line 302
    invoke-virtual {v1}, Ldbxyzptlk/j/a;->f()Z

    move-result v2

    iput-boolean v2, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->o:Z

    .line 303
    invoke-virtual {v1}, Ldbxyzptlk/j/a;->g()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->p:J

    .line 304
    iget-wide v1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->p:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_32

    .line 305
    sget-object v1, Lcom/dropbox/android/activity/lock/c;->a:Lcom/dropbox/android/activity/lock/c;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/lock/c;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->showDialog(I)V

    .line 308
    :cond_32
    const-string v1, "PURPOSE"

    sget-object v2, Lcom/dropbox/android/activity/lock/i;->a:Lcom/dropbox/android/activity/lock/i;

    invoke-virtual {v2}, Lcom/dropbox/android/activity/lock/i;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/dropbox/android/activity/lock/i;->a(I)Lcom/dropbox/android/activity/lock/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->k:Lcom/dropbox/android/activity/lock/i;

    .line 310
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 311
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->setContentView(I)V

    .line 313
    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->h:Landroid/widget/TextView;

    .line 314
    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c:Landroid/widget/EditText;

    .line 315
    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d:Landroid/widget/EditText;

    .line 316
    const v0, 0x7f0d007e

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->e:Landroid/widget/EditText;

    .line 317
    const v0, 0x7f0d007f

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->g:Landroid/widget/EditText;

    .line 320
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 321
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 322
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 323
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setInputType(I)V

    .line 327
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 328
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 329
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->e:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 330
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->g:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 333
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/dropbox/android/activity/lock/o;

    invoke-direct {v1, p0, v5}, Lcom/dropbox/android/activity/lock/o;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 334
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/dropbox/android/activity/lock/o;

    invoke-direct {v1, p0, v6}, Lcom/dropbox/android/activity/lock/o;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 335
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/dropbox/android/activity/lock/o;

    invoke-direct {v1, p0, v7}, Lcom/dropbox/android/activity/lock/o;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 336
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/dropbox/android/activity/lock/o;

    invoke-direct {v1, p0, v8}, Lcom/dropbox/android/activity/lock/o;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 339
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/dropbox/android/activity/lock/p;

    invoke-direct {v1, p0, v5}, Lcom/dropbox/android/activity/lock/p;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 340
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/dropbox/android/activity/lock/p;

    invoke-direct {v1, p0, v6}, Lcom/dropbox/android/activity/lock/p;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 341
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/dropbox/android/activity/lock/p;

    invoke-direct {v1, p0, v7}, Lcom/dropbox/android/activity/lock/p;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 342
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/dropbox/android/activity/lock/p;

    invoke-direct {v1, p0, v8}, Lcom/dropbox/android/activity/lock/p;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 345
    const v0, 0x7f0d00ab

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 346
    const v1, 0x7f0d00af

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 347
    const v2, 0x7f0d00b3

    invoke-virtual {p0, v2}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 348
    const v3, 0x7f0d00ac

    invoke-virtual {p0, v3}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 349
    const v4, 0x7f0d00b0

    invoke-virtual {p0, v4}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 350
    const v5, 0x7f0d00b4

    invoke-virtual {p0, v5}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 351
    const v6, 0x7f0d00ad

    invoke-virtual {p0, v6}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 352
    const v7, 0x7f0d00b1

    invoke-virtual {p0, v7}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 353
    const v8, 0x7f0d00b5

    invoke-virtual {p0, v8}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 354
    const v9, 0x7f0d00b2

    invoke-virtual {p0, v9}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 355
    const v10, 0x7f0d00b6

    invoke-virtual {p0, v10}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 357
    new-instance v11, Lcom/dropbox/android/activity/lock/q;

    const-string v12, "1"

    invoke-direct {v11, p0, v12}, Lcom/dropbox/android/activity/lock/q;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    new-instance v11, Lcom/dropbox/android/activity/lock/q;

    const-string v12, "2"

    invoke-direct {v11, p0, v12}, Lcom/dropbox/android/activity/lock/q;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    new-instance v11, Lcom/dropbox/android/activity/lock/q;

    const-string v12, "3"

    invoke-direct {v11, p0, v12}, Lcom/dropbox/android/activity/lock/q;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    new-instance v11, Lcom/dropbox/android/activity/lock/q;

    const-string v12, "4"

    invoke-direct {v11, p0, v12}, Lcom/dropbox/android/activity/lock/q;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    new-instance v11, Lcom/dropbox/android/activity/lock/q;

    const-string v12, "5"

    invoke-direct {v11, p0, v12}, Lcom/dropbox/android/activity/lock/q;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    new-instance v11, Lcom/dropbox/android/activity/lock/q;

    const-string v12, "6"

    invoke-direct {v11, p0, v12}, Lcom/dropbox/android/activity/lock/q;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    new-instance v11, Lcom/dropbox/android/activity/lock/q;

    const-string v12, "7"

    invoke-direct {v11, p0, v12}, Lcom/dropbox/android/activity/lock/q;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    new-instance v11, Lcom/dropbox/android/activity/lock/q;

    const-string v12, "8"

    invoke-direct {v11, p0, v12}, Lcom/dropbox/android/activity/lock/q;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    new-instance v11, Lcom/dropbox/android/activity/lock/q;

    const-string v12, "9"

    invoke-direct {v11, p0, v12}, Lcom/dropbox/android/activity/lock/q;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    new-instance v11, Lcom/dropbox/android/activity/lock/q;

    const-string v12, "0"

    invoke-direct {v11, p0, v12}, Lcom/dropbox/android/activity/lock/q;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    new-instance v11, Lcom/dropbox/android/activity/lock/b;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/dropbox/android/activity/lock/b;-><init>(Lcom/dropbox/android/activity/lock/LockCodeActivity;Lcom/dropbox/android/activity/lock/a;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    new-instance v11, Lcom/dropbox/android/activity/lock/h;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/dropbox/android/activity/lock/h;-><init>(Lcom/dropbox/android/activity/lock/a;)V

    .line 370
    invoke-virtual {v0, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 371
    invoke-virtual {v1, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 372
    invoke-virtual {v2, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 373
    invoke-virtual {v3, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 374
    invoke-virtual {v4, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 375
    invoke-virtual {v5, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 376
    invoke-virtual {v6, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 377
    invoke-virtual {v7, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 378
    invoke-virtual {v8, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 379
    invoke-virtual {v9, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 380
    invoke-virtual {v10, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 382
    const v0, 0x7f0d00ae

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 384
    if-eqz p1, :cond_24a

    .line 386
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c:Landroid/widget/EditText;

    const-string v1, "lock_digit_1"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d:Landroid/widget/EditText;

    const-string v1, "lock_digit_2"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->e:Landroid/widget/EditText;

    const-string v1, "lock_digit_3"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->g:Landroid/widget/EditText;

    const-string v1, "lock_digit_4"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 392
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->l:I

    .line 393
    const-string v0, "retries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->m:I

    .line 394
    const-string v0, "focused"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d(I)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 395
    const-string v0, "new_lock_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->j:Ljava/lang/String;

    .line 398
    :cond_24a
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c()V

    .line 399
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 584
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/c;->a(I)Lcom/dropbox/android/activity/lock/c;

    move-result-object v0

    .line 585
    invoke-virtual {v0, p0}, Lcom/dropbox/android/activity/lock/c;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 416
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 417
    iget-object v1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->k:Lcom/dropbox/android/activity/lock/i;

    sget-object v2, Lcom/dropbox/android/activity/lock/i;->a:Lcom/dropbox/android/activity/lock/i;

    if-eq v1, v2, :cond_1a

    .line 419
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->finish()V

    .line 426
    :goto_19
    return v0

    .line 422
    :cond_1a
    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->a(I)V

    goto :goto_19

    .line 426
    :cond_1e
    invoke-super {p0, p1, p2}, Lcom/dropbox/android/activity/base/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_19
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 578
    invoke-static {p1}, Lcom/dropbox/android/activity/lock/c;->a(I)Lcom/dropbox/android/activity/lock/c;

    move-result-object v0

    .line 579
    invoke-virtual {v0, p0, p2}, Lcom/dropbox/android/activity/lock/c;->a(Lcom/dropbox/android/activity/lock/LockCodeActivity;Landroid/app/Dialog;)V

    .line 580
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 403
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseActivity;->onResume()V

    .line 408
    invoke-static {p0}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->k:Lcom/dropbox/android/activity/lock/i;

    sget-object v1, Lcom/dropbox/android/activity/lock/i;->a:Lcom/dropbox/android/activity/lock/i;

    if-ne v0, v1, :cond_19

    .line 409
    sget-object v0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->b:Ljava/lang/String;

    const-string v1, "App has been unlocked in a different place, so finishing"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p0}, Lcom/dropbox/android/activity/lock/LockCodeActivity;->finish()V

    .line 412
    :cond_19
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 279
    const-string v0, "lock_digit_1"

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "lock_digit_2"

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "lock_digit_3"

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "lock_digit_4"

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, "state"

    iget v1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    const-string v0, "retries"

    iget v1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    const-string v0, "focused"

    iget v1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    const-string v0, "new_lock_code"

    iget-object v1, p0, Lcom/dropbox/android/activity/lock/LockCodeActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method
