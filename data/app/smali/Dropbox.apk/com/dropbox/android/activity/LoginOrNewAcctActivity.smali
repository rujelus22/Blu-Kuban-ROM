.class public Lcom/dropbox/android/activity/LoginOrNewAcctActivity;
.super Lcom/dropbox/android/activity/base/BaseFragmentActivity;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/activity/S;
.implements Lcom/dropbox/android/activity/aB;
.implements Lcom/dropbox/android/activity/aG;
.implements Lcom/dropbox/android/activity/aU;
.implements Ldbxyzptlk/e/i;
.implements Ldbxyzptlk/e/o;


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field private n:Lcom/dropbox/android/activity/aM;

.field private p:Lcom/dropbox/android/activity/aN;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseFragmentActivity;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->p:Lcom/dropbox/android/activity/aN;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->q:Z

    .line 347
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->d()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/s;

    move-result-object v0

    .line 429
    invoke-virtual {v0, p2, p1, p3}, Landroid/support/v4/app/s;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/s;

    .line 430
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/s;

    .line 431
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/s;

    .line 432
    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()I

    .line 433
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aW;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 421
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->b(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 425
    :goto_d
    return-void

    .line 423
    :cond_e
    const v0, 0x7f0d0080

    invoke-direct {p0, p1, v0, p2}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    goto :goto_d
.end method

.method static synthetic a(Lcom/dropbox/android/activity/LoginOrNewAcctActivity;Lcom/dropbox/android/activity/aN;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->a(Lcom/dropbox/android/activity/aN;)V

    return-void
.end method

.method private a(Lcom/dropbox/android/activity/aN;)V
    .registers 8
    .parameter

    .prologue
    .line 546
    new-instance v0, Ldbxyzptlk/e/h;

    iget-object v2, p1, Lcom/dropbox/android/activity/aN;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/android/activity/aN;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/dropbox/android/activity/aN;->c:Ljava/lang/String;

    iget-object v5, p1, Lcom/dropbox/android/activity/aN;->d:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ldbxyzptlk/e/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    sget-object v1, Lcom/dropbox/android/activity/aI;->a:Lcom/dropbox/android/activity/aI;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/aI;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ldbxyzptlk/e/h;->a(I)V

    .line 553
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldbxyzptlk/e/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 554
    return-void
.end method

.method private b(I)V
    .registers 4
    .parameter

    .prologue
    .line 557
    invoke-virtual {p0, p1}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 558
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 559
    return-void
.end method

.method private b(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->d()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/s;

    move-result-object v0

    .line 437
    const v1, 0x7f0d0081

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/app/s;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/s;

    .line 438
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/s;

    .line 439
    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()I

    .line 440
    return-void
.end method

.method private g()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 300
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->setResult(I)V

    .line 301
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.dropbox.activity.extra.NEXT_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_1e

    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_1e

    .line 303
    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->startActivity(Landroid/content/Intent;)V

    .line 310
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->finish()V

    .line 311
    return-void

    .line 305
    :cond_1e
    invoke-direct {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 306
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldbxyzptlk/j/m;->i(Z)V

    .line 307
    new-array v0, v2, [Lcom/dropbox/android/activity/bB;

    const/4 v1, 0x0

    sget-object v2, Lcom/dropbox/android/activity/bB;->g:Lcom/dropbox/android/activity/bB;

    aput-object v2, v0, v1

    .line 308
    invoke-static {p0, v0}, Lcom/dropbox/android/activity/TourActivity;->a(Landroid/content/Context;[Lcom/dropbox/android/activity/bB;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1a
.end method

.method private h()V
    .registers 5

    .prologue
    const v3, 0x7f0d0080

    .line 356
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->d()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/s;

    move-result-object v1

    .line 358
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aW;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 360
    sget-object v0, Lcom/dropbox/android/activity/aH;->a:[I

    iget-object v2, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->n:Lcom/dropbox/android/activity/aM;

    invoke-virtual {v2}, Lcom/dropbox/android/activity/aM;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_62

    .line 367
    new-instance v0, Lcom/dropbox/android/activity/LoginFragment;

    invoke-direct {v0}, Lcom/dropbox/android/activity/LoginFragment;-><init>()V

    .line 371
    :goto_27
    new-instance v2, Lcom/dropbox/android/activity/LoginBrandFragment;

    invoke-direct {v2}, Lcom/dropbox/android/activity/LoginBrandFragment;-><init>()V

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/s;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/s;

    .line 372
    const v2, 0x7f0d0081

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/s;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/s;

    .line 390
    :goto_35
    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()I

    .line 391
    return-void

    .line 362
    :pswitch_39
    new-instance v0, Lcom/dropbox/android/activity/NewAccountFragment;

    invoke-direct {v0}, Lcom/dropbox/android/activity/NewAccountFragment;-><init>()V

    goto :goto_27

    .line 375
    :cond_3f
    sget-object v0, Lcom/dropbox/android/activity/aH;->a:[I

    iget-object v2, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->n:Lcom/dropbox/android/activity/aM;

    invoke-virtual {v2}, Lcom/dropbox/android/activity/aM;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_68

    .line 384
    :pswitch_4c
    new-instance v0, Lcom/dropbox/android/activity/LoginBrandFragment;

    invoke-direct {v0}, Lcom/dropbox/android/activity/LoginBrandFragment;-><init>()V

    .line 387
    :goto_51
    invoke-virtual {v1, v3, v0}, Landroid/support/v4/app/s;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/s;

    goto :goto_35

    .line 377
    :pswitch_55
    new-instance v0, Lcom/dropbox/android/activity/LoginFragment;

    invoke-direct {v0}, Lcom/dropbox/android/activity/LoginFragment;-><init>()V

    goto :goto_51

    .line 380
    :pswitch_5b
    new-instance v0, Lcom/dropbox/android/activity/NewAccountFragment;

    invoke-direct {v0}, Lcom/dropbox/android/activity/NewAccountFragment;-><init>()V

    goto :goto_51

    .line 360
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_39
    .end packed-switch

    .line 375
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_4c
        :pswitch_55
    .end packed-switch
.end method

.method private i()Z
    .registers 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->n:Lcom/dropbox/android/activity/aM;

    sget-object v1, Lcom/dropbox/android/activity/aM;->b:Lcom/dropbox/android/activity/aM;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->n:Lcom/dropbox/android/activity/aM;

    sget-object v1, Lcom/dropbox/android/activity/aM;->c:Lcom/dropbox/android/activity/aM;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private j()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 449
    invoke-static {}, Lcom/dropbox/android/activity/DropboxBrowser;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 450
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dropbox/android/activity/bB;

    sget-object v1, Lcom/dropbox/android/activity/bB;->c:Lcom/dropbox/android/activity/bB;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/android/activity/bB;->d:Lcom/dropbox/android/activity/bB;

    aput-object v1, v0, v2

    .line 454
    :goto_13
    invoke-static {p0, v0}, Lcom/dropbox/android/activity/TourActivity;->a(Landroid/content/Context;[Lcom/dropbox/android/activity/bB;)Landroid/content/Intent;

    move-result-object v0

    .line 458
    invoke-virtual {p0, v0, v2}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 459
    return-void

    .line 452
    :cond_1b
    new-array v0, v2, [Lcom/dropbox/android/activity/bB;

    sget-object v1, Lcom/dropbox/android/activity/bB;->a:Lcom/dropbox/android/activity/bB;

    aput-object v1, v0, v3

    goto :goto_13
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 535
    invoke-static {p1}, Lcom/dropbox/android/util/aN;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 536
    const v0, 0x7f090022

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->b(I)V

    .line 543
    :goto_c
    return-void

    .line 540
    :cond_d
    new-instance v0, Ldbxyzptlk/e/n;

    invoke-direct {v0, p0, p1}, Ldbxyzptlk/e/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 541
    sget-object v1, Lcom/dropbox/android/activity/aI;->c:Lcom/dropbox/android/activity/aI;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/aI;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ldbxyzptlk/e/n;->a(I)V

    .line 542
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldbxyzptlk/e/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_c
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 470
    invoke-static {}, Lcom/dropbox/android/util/W;->a()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 473
    invoke-static {}, Lcom/dropbox/android/util/W;->b()Ljava/lang/String;

    move-result-object p1

    .line 474
    invoke-static {}, Lcom/dropbox/android/util/W;->c()Ljava/lang/String;

    move-result-object p2

    .line 493
    :cond_e
    new-instance v0, Ldbxyzptlk/e/h;

    invoke-direct {v0, p0, p1, p2}, Ldbxyzptlk/e/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    sget-object v1, Lcom/dropbox/android/activity/aI;->b:Lcom/dropbox/android/activity/aI;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/aI;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ldbxyzptlk/e/h;->a(I)V

    .line 495
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ldbxyzptlk/e/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 496
    :goto_22
    return-void

    .line 476
    :cond_23
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendlog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 478
    invoke-static {p0}, Lcom/dropbox/android/activity/PrefsActivity;->a(Landroid/content/Context;)V

    goto :goto_22

    .line 482
    :cond_33
    invoke-static {p1}, Lcom/dropbox/android/util/aN;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 483
    const v0, 0x7f090022

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->b(I)V

    goto :goto_22

    .line 487
    :cond_40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_e

    .line 488
    const v0, 0x7f090023

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->b(I)V

    goto :goto_22
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 502
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendlog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 504
    invoke-static {p0}, Lcom/dropbox/android/activity/PrefsActivity;->a(Landroid/content/Context;)V

    .line 531
    :goto_10
    return-void

    .line 508
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1e

    .line 509
    const v0, 0x7f090020

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->b(I)V

    goto :goto_10

    .line 513
    :cond_1e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_2b

    .line 514
    const v0, 0x7f090021

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->b(I)V

    goto :goto_10

    .line 518
    :cond_2b
    invoke-static {p3}, Lcom/dropbox/android/util/aN;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 519
    const v0, 0x7f090022

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->b(I)V

    goto :goto_10

    .line 523
    :cond_38
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_46

    .line 524
    const v0, 0x7f090023

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->b(I)V

    goto :goto_10

    .line 528
    :cond_46
    new-instance v0, Lcom/dropbox/android/activity/aN;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/dropbox/android/activity/aN;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->p:Lcom/dropbox/android/activity/aN;

    .line 529
    iget-object v0, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->p:Lcom/dropbox/android/activity/aN;

    invoke-static {v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;->a(Lcom/dropbox/android/activity/aN;)Lcom/dropbox/android/activity/LoginOrNewAcctActivity$TosDialogFrag;

    move-result-object v0

    .line 530
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->d()Landroid/support/v4/app/j;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->a(Landroid/support/v4/app/j;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 404
    new-instance v0, Lcom/dropbox/android/activity/NewAccountFragment;

    invoke-direct {v0}, Lcom/dropbox/android/activity/NewAccountFragment;-><init>()V

    .line 405
    sget-object v1, Lcom/dropbox/android/activity/NewAccountFragment;->a:Ljava/lang/String;

    .line 406
    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 411
    invoke-static {p1}, Lcom/dropbox/android/activity/ForgotPasswordFragment;->a(Ljava/lang/String;)Lcom/dropbox/android/activity/ForgotPasswordFragment;

    move-result-object v1

    .line 412
    sget-object v2, Lcom/dropbox/android/activity/ForgotPasswordFragment;->a:Ljava/lang/String;

    .line 413
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aW;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, 0x7f0d0081

    :goto_13
    invoke-direct {p0, v1, v0, v2}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    .line 417
    return-void

    .line 413
    :cond_17
    const v0, 0x7f0d0080

    goto :goto_13
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aW;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 570
    invoke-static {p1}, Lcom/dropbox/android/activity/LoginFragment;->a(Ljava/lang/String;)Lcom/dropbox/android/activity/LoginFragment;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/activity/LoginFragment;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->b(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 577
    :goto_13
    const v0, 0x7f090192

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/dropbox/android/util/aT;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 582
    return-void

    .line 572
    :cond_23
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->d()Landroid/support/v4/app/j;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/activity/LoginFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/LoginFragment;

    .line 573
    invoke-virtual {v0, p1}, Lcom/dropbox/android/activity/LoginFragment;->b(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->d()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/j;->b()V

    goto :goto_13
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 563
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->q:Z

    .line 564
    invoke-direct {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->g()V

    .line 565
    return-void
.end method

.method public finish()V
    .registers 4

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 316
    const-string v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 317
    const-string v1, "accountAuthenticatorResponse"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 325
    const/4 v2, 0x4

    iget-boolean v1, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->q:Z

    if-eqz v1, :cond_22

    const-string v1, "success"

    :goto_1b
    invoke-virtual {v0, v2, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 327
    :cond_1e
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseFragmentActivity;->finish()V

    .line 328
    return-void

    .line 325
    :cond_22
    const-string v1, "canceled"

    goto :goto_1b
.end method

.method public final h_()V
    .registers 3

    .prologue
    .line 396
    new-instance v0, Lcom/dropbox/android/activity/LoginFragment;

    invoke-direct {v0}, Lcom/dropbox/android/activity/LoginFragment;-><init>()V

    .line 397
    sget-object v1, Lcom/dropbox/android/activity/LoginFragment;->a:Ljava/lang/String;

    .line 398
    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    packed-switch p1, :pswitch_data_e

    .line 345
    :cond_3
    :goto_3
    :pswitch_3
    return-void

    .line 337
    :pswitch_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->p:Lcom/dropbox/android/activity/aN;

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->a(Lcom/dropbox/android/activity/aN;)V

    goto :goto_3

    .line 332
    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 290
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->setResult(I)V

    .line 291
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseFragmentActivity;->onBackPressed()V

    .line 292
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 232
    if-eqz p1, :cond_17

    .line 233
    const-string v0, "PENDING_NEW_ACCOUNT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 234
    const-string v0, "PENDING_NEW_ACCOUNT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/activity/aN;

    iput-object v0, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->p:Lcom/dropbox/android/activity/aN;

    .line 238
    :cond_17
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FULL_SCREEN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_40

    .line 241
    const/high16 v0, 0x7f0a

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->setTheme(I)V

    .line 244
    :cond_40
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->setContentView(I)V

    .line 246
    sget-object v0, Lcom/dropbox/android/activity/aM;->a:Lcom/dropbox/android/activity/aM;

    iput-object v0, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->n:Lcom/dropbox/android/activity/aM;

    .line 247
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_64

    .line 248
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string v1, "com.dropbox.intent.action.LOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 250
    sget-object v0, Lcom/dropbox/android/activity/aM;->b:Lcom/dropbox/android/activity/aM;

    iput-object v0, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->n:Lcom/dropbox/android/activity/aM;

    .line 256
    :cond_64
    :goto_64
    if-nez p1, :cond_69

    .line 257
    invoke-direct {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->h()V

    .line 260
    :cond_69
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    .line 263
    invoke-static {}, Lcom/dropbox/android/activity/auth/DropboxAuth;->d()Z

    move-result v1

    if-nez v1, :cond_86

    invoke-direct {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->i()Z

    move-result v1

    if-nez v1, :cond_86

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->z()Z

    move-result v1

    if-nez v1, :cond_86

    .line 264
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldbxyzptlk/j/m;->k(Z)V

    .line 265
    invoke-direct {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->j()V

    .line 267
    :cond_86
    return-void

    .line 251
    :cond_87
    const-string v1, "com.dropbox.intent.action.SIGN_UP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 252
    sget-object v0, Lcom/dropbox/android/activity/aM;->c:Lcom/dropbox/android/activity/aM;

    iput-object v0, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->n:Lcom/dropbox/android/activity/aM;

    goto :goto_64
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 463
    invoke-static {p1}, Lcom/dropbox/android/activity/aI;->a(I)Lcom/dropbox/android/activity/aI;

    move-result-object v0

    .line 464
    invoke-virtual {v0, p0}, Lcom/dropbox/android/activity/aI;->a(Lcom/dropbox/android/activity/LoginOrNewAcctActivity;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 279
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseFragmentActivity;->onResume()V

    .line 282
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 284
    invoke-direct {p0}, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->g()V

    .line 286
    :cond_10
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 271
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 272
    iget-object v0, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->p:Lcom/dropbox/android/activity/aN;

    if-eqz v0, :cond_e

    .line 273
    const-string v0, "PENDING_NEW_ACCOUNT"

    iget-object v1, p0, Lcom/dropbox/android/activity/LoginOrNewAcctActivity;->p:Lcom/dropbox/android/activity/aN;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 275
    :cond_e
    return-void
.end method
