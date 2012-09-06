.class public abstract Lcom/dropbox/android/activity/SimpleDropboxBrowser;
.super Lcom/dropbox/android/activity/lock/LockableFragmentListActivity;
.source "panda.py"

# interfaces
.implements Landroid/support/v4/app/x;
.implements Lcom/dropbox/android/activity/D;
.implements Lcom/dropbox/android/activity/E;
.implements Lcom/dropbox/android/activity/bj;
.implements Lcom/dropbox/android/widget/c;
.implements Lcom/dropbox/android/widget/quickactions/j;


# static fields
.field private static final m:Ljava/lang/String;

.field public static n:Z

.field private static y:Z


# instance fields
.field private A:Lcom/dropbox/android/taskqueue/q;

.field private B:Lcom/dropbox/android/activity/bo;

.field private C:Ldbxyzptlk/a/d;

.field private D:Lcom/dropbox/android/widget/V;

.field private E:I

.field private F:I

.field protected o:Lcom/dropbox/android/activity/delegate/x;

.field protected p:Lcom/dropbox/android/activity/delegate/P;

.field protected q:I

.field protected r:Landroid/widget/TextView;

.field protected s:Landroid/view/View;

.field protected t:Landroid/view/View;

.field protected u:Landroid/view/View;

.field protected v:Landroid/widget/TextView;

.field protected w:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

.field private z:Lcom/dropbox/android/taskqueue/p;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const-class v0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->m:Ljava/lang/String;

    .line 69
    sput-boolean v1, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->n:Z

    .line 70
    sput-boolean v1, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->y:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/dropbox/android/activity/lock/LockableFragmentListActivity;-><init>()V

    .line 74
    new-instance v0, Lcom/dropbox/android/activity/delegate/x;

    invoke-direct {v0}, Lcom/dropbox/android/activity/delegate/x;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->o:Lcom/dropbox/android/activity/delegate/x;

    .line 75
    new-instance v0, Lcom/dropbox/android/activity/delegate/P;

    invoke-direct {v0}, Lcom/dropbox/android/activity/delegate/P;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->p:Lcom/dropbox/android/activity/delegate/P;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->q:I

    .line 713
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/SimpleDropboxBrowser;)Lcom/dropbox/android/activity/bo;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->B:Lcom/dropbox/android/activity/bo;

    return-object v0
.end method

.method private a(III)V
    .registers 21
    .parameter
    .parameter
    .parameter

    .prologue
    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->z:Lcom/dropbox/android/taskqueue/p;

    invoke-virtual {v2}, Lcom/dropbox/android/taskqueue/p;->c()V

    .line 650
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->E:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->F:I

    add-int/2addr v3, v2

    .line 651
    add-int v10, p1, p2

    .line 653
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->E:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->F:I

    mul-int/lit8 v4, v4, 0x2

    add-int v11, v2, v4

    .line 654
    mul-int/lit8 v2, p2, 0x2

    add-int v12, p1, v2

    .line 656
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->E:I

    move/from16 v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 657
    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 658
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 659
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 660
    move/from16 v0, p3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    move v9, v2

    .line 663
    :goto_3f
    if-ge v9, v13, :cond_fd

    .line 664
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->c(I)Landroid/database/Cursor;

    move-result-object v4

    .line 665
    if-nez v4, :cond_4d

    .line 663
    :cond_49
    :goto_49
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_3f

    .line 669
    :cond_4d
    invoke-static {v4}, Lcom/dropbox/android/widget/S;->a(Landroid/database/Cursor;)Lcom/dropbox/android/widget/S;

    move-result-object v2

    .line 670
    sget-object v3, Lcom/dropbox/android/widget/S;->a:Lcom/dropbox/android/widget/S;

    if-eq v2, v3, :cond_59

    sget-object v3, Lcom/dropbox/android/widget/S;->f:Lcom/dropbox/android/widget/S;

    if-ne v2, v3, :cond_49

    .line 674
    :cond_59
    const/4 v2, 0x5

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 675
    const/16 v2, 0x9

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 676
    const/4 v2, 0x7

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_da

    const/4 v2, 0x1

    .line 677
    :goto_6c
    const/16 v3, 0xe

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_dc

    const/4 v3, 0x1

    move v8, v3

    .line 680
    :goto_76
    if-eqz v2, :cond_be

    move/from16 v0, p1

    if-lt v9, v0, :cond_be

    if-ge v9, v10, :cond_be

    .line 681
    const/16 v2, 0xd

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 682
    if-nez v2, :cond_be

    .line 685
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v2

    .line 686
    invoke-virtual {v2}, Lcom/dropbox/android/filemanager/v;->g()Lcom/dropbox/android/taskqueue/i;

    move-result-object v16

    .line 688
    new-instance v2, Lcom/dropbox/android/taskqueue/MetadataTask;

    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v4

    new-instance v5, Lcom/dropbox/android/util/Z;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/dropbox/android/taskqueue/MetadataTask;-><init>(Landroid/content/Context;Lcom/dropbox/android/provider/g;Landroid/net/Uri;Lcom/dropbox/android/provider/u;I)V

    .line 692
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/dropbox/android/taskqueue/i;->a(Lcom/dropbox/android/taskqueue/MetadataTask;)V

    .line 696
    :cond_be
    move/from16 v0, p1

    if-ge v9, v0, :cond_df

    const/4 v2, 0x1

    move v3, v2

    .line 697
    :goto_c4
    if-gt v12, v9, :cond_e2

    const/4 v2, 0x1

    .line 698
    :goto_c7
    if-nez v3, :cond_cb

    if-eqz v2, :cond_e4

    .line 700
    :cond_cb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->A:Lcom/dropbox/android/taskqueue/q;

    sget-object v3, Lcom/dropbox/android/taskqueue/v;->b:Lcom/dropbox/android/taskqueue/v;

    invoke-static {}, Lcom/dropbox/android/util/aW;->e()Ldbxyzptlk/l/o;

    move-result-object v4

    invoke-virtual {v2, v3, v14, v4}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ldbxyzptlk/l/o;)V

    goto/16 :goto_49

    .line 676
    :cond_da
    const/4 v2, 0x0

    goto :goto_6c

    .line 677
    :cond_dc
    const/4 v3, 0x0

    move v8, v3

    goto :goto_76

    .line 696
    :cond_df
    const/4 v2, 0x0

    move v3, v2

    goto :goto_c4

    .line 697
    :cond_e2
    const/4 v2, 0x0

    goto :goto_c7

    .line 701
    :cond_e4
    move/from16 v0, p1

    if-gt v0, v9, :cond_49

    if-gt v11, v9, :cond_49

    if-ge v9, v12, :cond_49

    .line 703
    if-eqz v8, :cond_49

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->A:Lcom/dropbox/android/taskqueue/q;

    sget-object v3, Lcom/dropbox/android/taskqueue/v;->b:Lcom/dropbox/android/taskqueue/v;

    invoke-static {}, Lcom/dropbox/android/util/aW;->e()Ldbxyzptlk/l/o;

    move-result-object v4

    invoke-virtual {v2, v3, v14, v15, v4}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V

    goto/16 :goto_49

    .line 709
    :cond_fd
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->E:I

    .line 710
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->F:I

    .line 711
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/SimpleDropboxBrowser;III)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->a(III)V

    return-void
.end method

.method private c(Z)V
    .registers 5
    .parameter

    .prologue
    .line 242
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    const-string v1, "network_refresh"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->d_()Landroid/support/v4/app/w;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/w;->b(ILandroid/os/Bundle;Landroid/support/v4/app/x;)Ldbxyzptlk/a/d;

    .line 246
    return-void
.end method

.method private m()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 642
    iput v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->E:I

    .line 643
    iput v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->F:I

    .line 644
    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)Ldbxyzptlk/a/d;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 497
    const-string v0, "network_refresh"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 498
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->i()Landroid/net/Uri;

    move-result-object v1

    .line 499
    iget-object v2, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->p:Lcom/dropbox/android/activity/delegate/P;

    if-eqz v0, :cond_44

    move-object v0, p0

    :goto_10
    invoke-virtual {v2, p0, v0, v1}, Lcom/dropbox/android/activity/delegate/P;->a(Landroid/content/Context;Lcom/dropbox/android/activity/E;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 503
    new-instance v0, Lcom/dropbox/android/filemanager/S;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->j()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/dropbox/android/provider/B;->a:[Ljava/lang/String;

    const-string v7, "is_dir DESC, _display_name COLLATE NOCASE"

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/android/filemanager/S;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-class v1, Lcom/dropbox/android/filemanager/S;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating in SimpleDropboxBrowser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ldbxyzptlk/a/d;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-object v0

    :cond_44
    move-object v0, v5

    .line 499
    goto :goto_10
.end method

.method public final a(ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 575
    iput p1, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->q:I

    .line 576
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;ILandroid/net/Uri;Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method public a(Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 374
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p0, p1, p2}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method protected a(Lcom/dropbox/android/widget/S;Landroid/database/Cursor;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 429
    return-void
.end method

.method public final a(Ldbxyzptlk/a/d;)V
    .registers 4
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->D:Lcom/dropbox/android/widget/V;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/V;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 551
    return-void
.end method

.method public a(Ldbxyzptlk/a/d;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->setTitle(Ljava/lang/CharSequence;)V

    .line 521
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->t()Z

    .line 525
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->D:Lcom/dropbox/android/widget/V;

    invoke-virtual {v0, p2}, Lcom/dropbox/android/widget/V;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 530
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->D:Lcom/dropbox/android/widget/V;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/V;->c()Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x1

    .line 532
    :goto_19
    iget-object v2, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->t:Landroid/view/View;

    if-eqz v2, :cond_24

    .line 533
    iget-object v2, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->t:Landroid/view/View;

    if-eqz v0, :cond_3d

    :goto_21
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 538
    :cond_24
    if-eqz v0, :cond_37

    iget v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->q:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_37

    .line 539
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->b(Ljava/lang/String;)V

    .line 542
    :cond_37
    invoke-direct {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->m()V

    .line 543
    return-void

    :cond_3b
    move v0, v1

    .line 530
    goto :goto_19

    .line 533
    :cond_3d
    const/16 v1, 0x8

    goto :goto_21
.end method

.method public bridge synthetic a(Ldbxyzptlk/a/d;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->a(Ldbxyzptlk/a/d;Landroid/database/Cursor;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->m()V

    .line 370
    return-void
.end method

.method protected final a(Landroid/widget/ListView;Landroid/view/View;IJ)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    invoke-virtual {p1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method public final a_(Z)V
    .registers 2
    .parameter

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->setProgressBarIndeterminateVisibility(Z)V

    .line 260
    return-void
.end method

.method protected final b(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->D:Lcom/dropbox/android/widget/V;

    invoke-virtual {v0, p3}, Lcom/dropbox/android/widget/V;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 396
    instance-of v1, v0, Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_10

    .line 397
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-interface {v0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 427
    :cond_f
    :goto_f
    return-void

    .line 401
    :cond_10
    invoke-virtual {p0, p3}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->c(I)Landroid/database/Cursor;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_f

    .line 407
    invoke-static {v0}, Lcom/dropbox/android/widget/S;->a(Landroid/database/Cursor;)Lcom/dropbox/android/widget/S;

    move-result-object v1

    .line 408
    sget-object v2, Lcom/dropbox/android/activity/bn;->a:[I

    invoke-virtual {v1}, Lcom/dropbox/android/widget/S;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_44

    .line 424
    invoke-virtual {p0, v1, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->a(Lcom/dropbox/android/widget/S;Landroid/database/Cursor;)V

    goto :goto_f

    .line 411
    :pswitch_29
    invoke-static {v0}, Lcom/dropbox/android/provider/B;->a(Landroid/database/Cursor;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_f

    .line 413
    iget-boolean v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eqz v1, :cond_39

    .line 414
    iget-object v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->a(Ljava/lang/String;)V

    goto :goto_f

    .line 416
    :cond_39
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->a(Lcom/dropbox/android/filemanager/LocalEntry;Ljava/lang/String;)V

    goto :goto_f

    .line 421
    :pswitch_3f
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->k()V

    goto :goto_f

    .line 408
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
        :pswitch_3f
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 470
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->s:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 472
    return-void
.end method

.method public final b(Z)V
    .registers 7
    .parameter

    .prologue
    .line 581
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/h/b;->a()Ldbxyzptlk/h/g;

    move-result-object v0

    iget-object v0, v0, Ldbxyzptlk/h/g;->c:Ljava/lang/String;

    .line 582
    if-eqz v0, :cond_14

    const-string v1, "com."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 583
    :cond_14
    const-string v0, "com.dropbox.android"

    .line 585
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 586
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 589
    invoke-static {p0, v1}, Lcom/dropbox/android/util/b;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 637
    :cond_3a
    :goto_3a
    return-void

    .line 594
    :cond_3b
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    .line 595
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    invoke-virtual {v2}, Ldbxyzptlk/h/b;->a()Ldbxyzptlk/h/g;

    move-result-object v2

    iget-object v2, v2, Ldbxyzptlk/h/g;->b:Ljava/lang/String;

    .line 596
    if-nez p1, :cond_52

    invoke-virtual {v0, v2}, Ldbxyzptlk/j/m;->e(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3a

    .line 599
    :cond_52
    invoke-virtual {v0, v2}, Ldbxyzptlk/j/m;->f(Ljava/lang/String;)V

    .line 602
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 604
    if-eqz p1, :cond_7b

    .line 605
    const v2, 0x7f090186

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 606
    const v2, 0x7f090188

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 608
    const v2, 0x7f090189

    new-instance v3, Lcom/dropbox/android/activity/bk;

    invoke-direct {v3, p0, v1}, Lcom/dropbox/android/activity/bk;-><init>(Lcom/dropbox/android/activity/SimpleDropboxBrowser;Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 615
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 636
    :goto_77
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3a

    .line 617
    :cond_7b
    const v2, 0x7f090185

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 618
    const v2, 0x7f090187

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 620
    const v2, 0x7f09018a

    new-instance v3, Lcom/dropbox/android/activity/bl;

    invoke-direct {v3, p0, v1}, Lcom/dropbox/android/activity/bl;-><init>(Lcom/dropbox/android/activity/SimpleDropboxBrowser;Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 628
    const v1, 0x7f09018b

    new-instance v2, Lcom/dropbox/android/activity/bm;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/bm;-><init>(Lcom/dropbox/android/activity/SimpleDropboxBrowser;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_77
.end method

.method protected final c(I)Landroid/database/Cursor;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 433
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->D:Lcom/dropbox/android/widget/V;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/V;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_33

    .line 434
    sget-object v0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to get item at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->D:Lcom/dropbox/android/widget/V;

    invoke-virtual {v3}, Lcom/dropbox/android/widget/V;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 442
    :goto_32
    return-object v0

    .line 438
    :cond_33
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->D:Lcom/dropbox/android/widget/V;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/widget/V;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 439
    instance-of v2, v0, Landroid/database/Cursor;

    if-eqz v2, :cond_40

    .line 440
    check-cast v0, Landroid/database/Cursor;

    goto :goto_32

    :cond_40
    move-object v0, v1

    .line 442
    goto :goto_32
.end method

.method protected c(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 265
    if-nez p1, :cond_b

    .line 266
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_a
    return-object v0

    .line 269
    :cond_b
    const-string v0, ""

    .line 270
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    const-string v1, "metadata"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 274
    if-le v1, v2, :cond_23

    .line 275
    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-direct {v0, p1}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-static {v0, p0}, Lcom/dropbox/android/util/aX;->a(Lcom/dropbox/android/util/Z;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 277
    :cond_23
    const-string v1, "favorites"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 278
    if-le v0, v2, :cond_33

    .line 279
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 281
    :cond_33
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 476
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->s:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 478
    return-void
.end method

.method protected f()Z
    .registers 2

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method protected h()Lcom/dropbox/android/widget/aa;
    .registers 2

    .prologue
    .line 96
    sget-object v0, Lcom/dropbox/android/widget/aa;->a:Lcom/dropbox/android/widget/aa;

    return-object v0
.end method

.method public i()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 216
    sget-object v0, Lcom/dropbox/android/d;->b:Landroid/net/Uri;

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method protected k()V
    .registers 1

    .prologue
    .line 234
    return-void
.end method

.method protected abstract l()Ljava/lang/String;
.end method

.method public o()V
    .registers 2

    .prologue
    .line 238
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->c(Z)V

    .line 239
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 381
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->t()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 488
    :cond_6
    :goto_6
    return-void

    .line 485
    :cond_7
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->p()Z

    move-result v0

    if-nez v0, :cond_6

    .line 486
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableFragmentListActivity;->onBackPressed()V

    goto :goto_6
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->t()Z

    .line 193
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->t:Landroid/view/View;

    if-eqz v0, :cond_18

    .line 194
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->t:Landroid/view/View;

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 198
    :cond_18
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableFragmentListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 199
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableFragmentListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/activity/delegate/x;->b(Landroid/os/Bundle;)V

    .line 115
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->g()Lcom/dropbox/android/taskqueue/i;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->z:Lcom/dropbox/android/taskqueue/p;

    .line 117
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->h()Lcom/dropbox/android/taskqueue/q;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->A:Lcom/dropbox/android/taskqueue/q;

    .line 120
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->q()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->setContentView(I)V

    .line 122
    const v0, 0x7f0d0013

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->v:Landroid/widget/TextView;

    .line 124
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->u()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->r:Landroid/widget/TextView;

    .line 125
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->v()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->s:Landroid/view/View;

    .line 126
    const v0, 0x7f0d004c

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->t:Landroid/view/View;

    .line 127
    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->u:Landroid/view/View;

    .line 129
    new-instance v0, Lcom/dropbox/android/activity/bo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/activity/bo;-><init>(Lcom/dropbox/android/activity/SimpleDropboxBrowser;Lcom/dropbox/android/activity/bk;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->B:Lcom/dropbox/android/activity/bo;

    .line 130
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->C()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->B:Lcom/dropbox/android/activity/bo;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->f()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 133
    new-instance v0, Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->s()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->w:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    .line 134
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->w:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    invoke-virtual {v0, p0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a(Lcom/dropbox/android/widget/c;)V

    .line 135
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->w:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    invoke-virtual {v0, p0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->a(Lcom/dropbox/android/widget/quickactions/j;)V

    .line 138
    :cond_76
    new-instance v0, Lcom/dropbox/android/widget/V;

    iget-object v1, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->w:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->s()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->h()Lcom/dropbox/android/widget/aa;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/widget/V;-><init>(Lcom/dropbox/android/widget/quickactions/QuickActionBar;Landroid/app/Activity;Landroid/content/Context;Lcom/dropbox/android/activity/delegate/x;Lcom/dropbox/android/widget/aa;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->D:Lcom/dropbox/android/widget/V;

    .line 140
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->D:Lcom/dropbox/android/widget/V;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->a(Landroid/widget/ListAdapter;)V

    .line 142
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->C()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->registerForContextMenu(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter

    .prologue
    .line 460
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result v0

    .line 461
    if-eqz v0, :cond_a

    .line 462
    const/4 v0, 0x1

    .line 464
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableFragmentListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_9
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 164
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableFragmentListActivity;->onPause()V

    .line 166
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->t()Z

    .line 173
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->D:Lcom/dropbox/android/widget/V;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/V;->a(Z)V

    .line 176
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->g()Lcom/dropbox/android/taskqueue/i;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/p;->c()V

    .line 180
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->A:Lcom/dropbox/android/taskqueue/q;

    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/q;->a()V

    .line 181
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 448
    invoke-super {p0, p1, p2}, Lcom/dropbox/android/activity/lock/LockableFragmentListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 449
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0, p1, p2}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;ILandroid/app/Dialog;)V

    .line 450
    return-void
.end method

.method protected onResume()V
    .registers 10

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    .line 305
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->w()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-static {p0}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 308
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->o()V

    .line 311
    invoke-virtual {v0}, Ldbxyzptlk/j/m;->z()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 312
    invoke-virtual {v0, v6}, Ldbxyzptlk/j/m;->k(Z)V

    .line 316
    :cond_1f
    sget-boolean v1, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->y:Z

    if-nez v1, :cond_9a

    .line 317
    sput-boolean v6, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->y:Z

    .line 318
    new-instance v1, Ldbxyzptlk/e/x;

    invoke-direct {v1, p0}, Ldbxyzptlk/e/x;-><init>(Lcom/dropbox/android/activity/SimpleDropboxBrowser;)V

    .line 319
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Ldbxyzptlk/e/x;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 323
    invoke-static {p0}, Lcom/dropbox/android/filemanager/T;->c(Landroid/content/Context;)Lcom/dropbox/android/filemanager/U;

    move-result-object v1

    .line 324
    new-instance v2, Lcom/dropbox/android/provider/s;

    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/dropbox/android/provider/s;-><init>(Landroid/content/Context;Lcom/dropbox/android/provider/g;Lcom/dropbox/android/filemanager/U;)V

    .line 327
    invoke-virtual {v2}, Lcom/dropbox/android/provider/s;->start()V

    .line 333
    :cond_40
    :goto_40
    invoke-super {p0}, Lcom/dropbox/android/activity/lock/LockableFragmentListActivity;->onResume()V

    .line 335
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->w()Z

    move-result v1

    if-nez v1, :cond_99

    invoke-static {p0}, Lcom/dropbox/android/activity/lock/LockReceiver;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_99

    .line 336
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 337
    if-eqz v1, :cond_75

    .line 338
    sget-object v2, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->m:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Browsing URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_75
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 347
    const-string v2, "STORED_UID"

    invoke-virtual {v1, v2, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 348
    invoke-virtual {v0}, Ldbxyzptlk/j/m;->c()Ldbxyzptlk/p/x;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_ad

    .line 350
    iget-wide v4, v0, Ldbxyzptlk/l/c;->f:J

    .line 351
    cmp-long v0, v2, v7

    if-eqz v0, :cond_a4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a4

    .line 352
    sget-object v0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->m:Ljava/lang/String;

    const-string v1, "Old page browsed from another account, terminating."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {p0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->finish()V

    .line 365
    :cond_99
    :goto_99
    return-void

    .line 328
    :cond_9a
    sget-boolean v1, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->n:Z

    if-eqz v1, :cond_40

    .line 329
    sget-boolean v1, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->n:Z

    invoke-virtual {p0, v1}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->b(Z)V

    goto :goto_40

    .line 357
    :cond_a4
    cmp-long v0, v2, v7

    if-nez v0, :cond_ad

    .line 358
    const-string v0, "STORED_UID"

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 363
    :cond_ad
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->D:Lcom/dropbox/android/widget/V;

    invoke-virtual {v0, v6}, Lcom/dropbox/android/widget/V;->a(Z)V

    goto :goto_99
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableFragmentListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 102
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public p()Z
    .registers 2

    .prologue
    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method protected q()I
    .registers 2

    .prologue
    .line 211
    const v0, 0x7f030010

    return v0
.end method

.method protected r()I
    .registers 2

    .prologue
    .line 295
    const v0, 0x7f090035

    return v0
.end method

.method protected s()Landroid/content/Context;
    .registers 1

    .prologue
    .line 106
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 252
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_9
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/lock/LockableFragmentListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    return-void
.end method

.method protected final t()Z
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->w:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->w:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 155
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->w:Lcom/dropbox/android/widget/quickactions/QuickActionBar;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/quickactions/QuickActionBar;->c()V

    .line 156
    const/4 v0, 0x1

    .line 158
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected final u()Landroid/view/View;
    .registers 2

    .prologue
    .line 203
    const v0, 0x7f0d004f

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final v()Landroid/view/View;
    .registers 2

    .prologue
    .line 207
    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final w()Z
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->o:Lcom/dropbox/android/activity/delegate/x;

    invoke-virtual {v0, p0}, Lcom/dropbox/android/activity/delegate/x;->a(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final x()V
    .registers 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->C:Ldbxyzptlk/a/d;

    if-eqz v0, :cond_9

    .line 556
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->C:Ldbxyzptlk/a/d;

    invoke-virtual {v0}, Ldbxyzptlk/a/d;->n()V

    .line 558
    :cond_9
    return-void
.end method

.method public final y()V
    .registers 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->C:Ldbxyzptlk/a/d;

    if-eqz v0, :cond_9

    .line 563
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->C:Ldbxyzptlk/a/d;

    invoke-virtual {v0}, Ldbxyzptlk/a/d;->p()V

    .line 565
    :cond_9
    return-void
.end method

.method public final z()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->D:Lcom/dropbox/android/widget/V;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/V;->a()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
