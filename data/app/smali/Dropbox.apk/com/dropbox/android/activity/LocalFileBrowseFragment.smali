.class public Lcom/dropbox/android/activity/LocalFileBrowseFragment;
.super Lcom/dropbox/android/activity/base/BaseFragment;
.source "panda.py"

# interfaces
.implements Landroid/support/v4/app/x;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private V:Lcom/dropbox/android/widget/al;

.field private W:Lcom/dropbox/android/activity/aq;

.field private X:Landroid/os/Bundle;

.field private Y:Lcom/dropbox/android/activity/ar;

.field private final Z:Landroid/widget/AdapterView$OnItemClickListener;

.field protected a:Landroid/net/Uri;

.field private aa:Landroid/widget/Button;

.field private ab:Landroid/widget/TextView;

.field private ac:Landroid/widget/Button;

.field protected final b:Ljava/util/HashSet;

.field private d:Lcom/dropbox/android/util/am;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseFragment;-><init>()V

    .line 70
    sget-object v0, Lcom/dropbox/android/activity/aq;->a:Lcom/dropbox/android/activity/aq;

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->W:Lcom/dropbox/android/activity/aq;

    .line 95
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->a:Landroid/net/Uri;

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->b:Ljava/util/HashSet;

    .line 121
    new-instance v0, Lcom/dropbox/android/activity/aj;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/aj;-><init>(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->Z:Landroid/widget/AdapterView$OnItemClickListener;

    .line 39
    return-void
.end method

.method private A()V
    .registers 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->y()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 115
    new-instance v0, Lcom/dropbox/android/util/Z;

    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->a:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dropbox/android/util/aX;->a(Lcom/dropbox/android/util/Z;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->ac:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->ac:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    :cond_20
    return-void
.end method

.method private B()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 258
    sget-object v0, Lcom/dropbox/android/activity/aq;->b:Lcom/dropbox/android/activity/aq;

    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->W:Lcom/dropbox/android/activity/aq;

    if-ne v0, v1, :cond_18

    .line 259
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->e()Landroid/net/Uri;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_18

    .line 262
    :try_start_10
    invoke-static {v0}, Lcom/dropbox/android/provider/FileSystemProvider;->a(Landroid/net/Uri;)Z
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_13} :catch_17

    move-result v1

    if-eqz v1, :cond_18

    .line 270
    :goto_16
    return-object v0

    .line 265
    :catch_17
    move-exception v0

    .line 270
    :cond_18
    invoke-static {}, Lcom/dropbox/android/provider/FileSystemProvider;->a()Landroid/net/Uri;

    move-result-object v0

    goto :goto_16
.end method

.method private final C()V
    .registers 4

    .prologue
    .line 274
    new-instance v0, Lcom/dropbox/android/util/am;

    invoke-direct {v0}, Lcom/dropbox/android/util/am;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    .line 275
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    new-instance v1, Lcom/dropbox/android/util/al;

    invoke-direct {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->B()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/android/util/al;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/am;->a(Lcom/dropbox/android/util/al;)Lcom/dropbox/android/util/al;

    .line 276
    return-void
.end method

.method private D()V
    .registers 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->Y:Lcom/dropbox/android/activity/ar;

    if-eqz v0, :cond_d

    .line 286
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->Y:Lcom/dropbox/android/activity/ar;

    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->b:Ljava/util/HashSet;

    invoke-interface {v0, v1, v2}, Lcom/dropbox/android/activity/ar;->a(Landroid/net/Uri;Ljava/util/Set;)V

    .line 288
    :cond_d
    return-void
.end method

.method private E()V
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->Y:Lcom/dropbox/android/activity/ar;

    if-eqz v0, :cond_11

    .line 303
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->Y:Lcom/dropbox/android/activity/ar;

    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    invoke-virtual {v1}, Lcom/dropbox/android/util/am;->b()Lcom/dropbox/android/util/al;

    move-result-object v1

    iget-object v1, v1, Lcom/dropbox/android/util/al;->a:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/dropbox/android/activity/ar;->a(Landroid/net/Uri;)V

    .line 305
    :cond_11
    return-void
.end method

.method private F()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 377
    iget-object v3, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->aa:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->y()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    move v0, v1

    :goto_13
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 379
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->y()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 380
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 381
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->ab:Landroid/widget/TextView;

    const v1, 0x7f0900c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 391
    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    move v0, v2

    .line 377
    goto :goto_13

    :cond_2f
    move v0, v1

    goto :goto_13

    .line 382
    :cond_31
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-ne v0, v1, :cond_42

    .line 383
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->ab:Landroid/widget/TextView;

    const v1, 0x7f0900c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2c

    .line 385
    :cond_42
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f0900c4

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->b:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->ab:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method

.method private G()V
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->Y:Lcom/dropbox/android/activity/ar;

    if-eqz v0, :cond_9

    .line 395
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->Y:Lcom/dropbox/android/activity/ar;

    invoke-interface {v0}, Lcom/dropbox/android/activity/ar;->g_()V

    .line 397
    :cond_9
    return-void
.end method

.method private a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->V:Lcom/dropbox/android/widget/al;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/al;->a()Landroid/database/Cursor;

    move-result-object v0

    .line 337
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 339
    invoke-static {v0}, Lcom/dropbox/android/widget/S;->a(Landroid/database/Cursor;)Lcom/dropbox/android/widget/S;

    move-result-object v1

    .line 340
    sget-object v2, Lcom/dropbox/android/activity/ap;->a:[I

    invoke-virtual {v1}, Lcom/dropbox/android/widget/S;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_ae

    .line 357
    const-string v1, "is_dir"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 358
    if-eqz v1, :cond_84

    .line 359
    const-string v1, "uri"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 360
    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->a(Landroid/net/Uri;)V

    .line 374
    :goto_39
    return-void

    .line 342
    :pswitch_3a
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    invoke-virtual {v0}, Lcom/dropbox/android/util/am;->b()Lcom/dropbox/android/util/al;

    move-result-object v0

    iget-object v0, v0, Lcom/dropbox/android/util/al;->a:Landroid/net/Uri;

    .line 343
    invoke-static {v0}, Lcom/dropbox/android/provider/FileSystemProvider;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    invoke-virtual {v1}, Lcom/dropbox/android/util/am;->d()I

    move-result v1

    .line 347
    const/4 v2, 0x2

    if-lt v1, v2, :cond_72

    iget-object v2, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v2, v1}, Lcom/dropbox/android/util/am;->a(I)Lcom/dropbox/android/util/al;

    move-result-object v1

    iget-object v1, v1, Lcom/dropbox/android/util/al;->a:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 348
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    invoke-virtual {v0}, Lcom/dropbox/android/util/am;->c()Lcom/dropbox/android/util/al;

    .line 354
    :goto_64
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->d_()Landroid/support/v4/app/w;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/w;->b(ILandroid/os/Bundle;Landroid/support/v4/app/x;)Ldbxyzptlk/a/d;

    goto :goto_39

    .line 350
    :cond_72
    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    iget-object v2, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Lcom/dropbox/android/util/am;->a(Landroid/widget/ListView;)V

    .line 351
    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    new-instance v2, Lcom/dropbox/android/util/al;

    invoke-direct {v2, v0}, Lcom/dropbox/android/util/al;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/dropbox/android/util/am;->a(Lcom/dropbox/android/util/al;)Lcom/dropbox/android/util/al;

    goto :goto_64

    .line 362
    :cond_84
    const-string v1, "path"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    iget-object v2, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 364
    iget-object v2, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 369
    :goto_9b
    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->V:Lcom/dropbox/android/widget/al;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v0}, Lcom/dropbox/android/widget/al;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 370
    invoke-direct {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->F()V

    goto :goto_39

    .line 366
    :cond_a8
    iget-object v2, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->b:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    .line 340
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_3a
    .end packed-switch
.end method

.method static synthetic a(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->G()V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/LocalFileBrowseFragment;Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic b(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)Lcom/dropbox/android/util/am;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    return-object v0
.end method

.method static synthetic c(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)Lcom/dropbox/android/activity/ar;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->Y:Lcom/dropbox/android/activity/ar;

    return-object v0
.end method

.method private c(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 309
    if-nez p1, :cond_7

    .line 310
    iget-object p1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->X:Landroid/os/Bundle;

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->X:Landroid/os/Bundle;

    .line 314
    :cond_7
    if-eqz p1, :cond_1d

    .line 316
    const-string v0, "key_Mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 318
    :try_start_11
    const-string v0, "key_Mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/activity/aq;->valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->W:Lcom/dropbox/android/activity/aq;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_1e

    .line 327
    :cond_1d
    :goto_1d
    return-void

    .line 319
    :catch_1e
    move-exception v0

    .line 320
    sget-object v0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->c:Ljava/lang/String;

    const-string v1, "Invalid browse mode, or browse mode extra not specified"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget-object v0, Lcom/dropbox/android/activity/aq;->a:Lcom/dropbox/android/activity/aq;

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->W:Lcom/dropbox/android/activity/aq;

    goto :goto_1d

    .line 324
    :cond_2b
    sget-object v0, Lcom/dropbox/android/activity/aq;->a:Lcom/dropbox/android/activity/aq;

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->W:Lcom/dropbox/android/activity/aq;

    goto :goto_1d
.end method

.method static synthetic d(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->E()V

    return-void
.end method

.method static synthetic e(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)V
    .registers 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->D()V

    return-void
.end method

.method private z()V
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    invoke-virtual {v0}, Lcom/dropbox/android/util/am;->b()Lcom/dropbox/android/util/al;

    move-result-object v0

    iget-object v0, v0, Lcom/dropbox/android/util/al;->a:Landroid/net/Uri;

    .line 102
    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dropbox/android/provider/FileSystemProvider;->a(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->b()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 107
    invoke-static {v0}, Lcom/dropbox/android/provider/FileSystemProvider;->a(Landroid/net/Uri;)Z

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->aa:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    :goto_29
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 111
    :cond_2c
    return-void

    .line 109
    :cond_2d
    const/4 v0, 0x4

    goto :goto_29
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 178
    invoke-direct {p0, p3}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->c(Landroid/os/Bundle;)V

    .line 180
    const v0, 0x7f03001a

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 182
    const v0, 0x7f0d004b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->h:Landroid/widget/ImageButton;

    .line 184
    const v0, 0x7f0d0072

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->f:Landroid/widget/ListView;

    .line 185
    const v0, 0x7f0d0013

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->e:Landroid/widget/TextView;

    .line 186
    const v0, 0x7f0d0073

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->g:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->f:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->V:Lcom/dropbox/android/widget/al;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->f:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->Z:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 191
    const v0, 0x7f0d0010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 192
    const v2, 0x7f09000d

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 193
    new-instance v2, Lcom/dropbox/android/activity/ak;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/ak;-><init>(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v0, 0x7f0d0011

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->aa:Landroid/widget/Button;

    .line 203
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 204
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->h:Landroid/widget/ImageButton;

    new-instance v2, Lcom/dropbox/android/activity/al;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/al;-><init>(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->aa:Landroid/widget/Button;

    const v2, 0x7f0900c0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 212
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->aa:Landroid/widget/Button;

    new-instance v2, Lcom/dropbox/android/activity/am;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/am;-><init>(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    :goto_8e
    invoke-direct {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->z()V

    .line 248
    return-object v1

    .line 219
    :cond_92
    const v0, 0x7f0d00aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->ac:Landroid/widget/Button;

    .line 220
    invoke-direct {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->A()V

    .line 221
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->ac:Landroid/widget/Button;

    new-instance v2, Lcom/dropbox/android/activity/an;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/an;-><init>(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    const v0, 0x7f0d00a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->ab:Landroid/widget/TextView;

    .line 234
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->ab:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->aa:Landroid/widget/Button;

    const v2, 0x7f0900c1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 237
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->aa:Landroid/widget/Button;

    new-instance v2, Lcom/dropbox/android/activity/ao;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/ao;-><init>(Lcom/dropbox/android/activity/LocalFileBrowseFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-direct {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->F()V

    goto :goto_8e
.end method

.method public final a(ILandroid/os/Bundle;)Ldbxyzptlk/a/d;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 401
    new-instance v0, Lcom/dropbox/android/filemanager/E;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    invoke-virtual {v2}, Lcom/dropbox/android/util/am;->b()Lcom/dropbox/android/util/al;

    move-result-object v2

    iget-object v2, v2, Lcom/dropbox/android/util/al;->a:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/android/filemanager/E;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    if-nez p1, :cond_19

    const/4 v0, -0x1

    if-ne p2, v0, :cond_19

    .line 145
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->a:Landroid/net/Uri;

    .line 146
    invoke-direct {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->A()V

    .line 150
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 151
    invoke-direct {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->D()V

    .line 154
    :cond_19
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 6
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragment;->a(Landroid/app/Activity;)V

    .line 80
    :try_start_3
    move-object v0, p1

    check-cast v0, Lcom/dropbox/android/activity/ar;

    move-object v1, v0

    iput-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->Y:Lcom/dropbox/android/activity/ar;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a

    .line 84
    return-void

    .line 81
    :catch_a
    move-exception v1

    .line 82
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement LocalFileBrowseCallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Landroid/net/Uri;)V
    .registers 5
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/am;->a(Landroid/widget/ListView;)V

    .line 280
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    new-instance v1, Lcom/dropbox/android/util/al;

    invoke-direct {v1, p1}, Lcom/dropbox/android/util/al;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/am;->a(Lcom/dropbox/android/util/al;)Lcom/dropbox/android/util/al;

    .line 281
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->d_()Landroid/support/v4/app/w;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/w;->b(ILandroid/os/Bundle;Landroid/support/v4/app/x;)Ldbxyzptlk/a/d;

    .line 282
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragment;->a(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->h()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->X:Landroid/os/Bundle;

    .line 162
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->c(Landroid/os/Bundle;)V

    .line 164
    new-instance v0, Lcom/dropbox/android/widget/al;

    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->b()Z

    move-result v4

    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->y()Z

    move-result v5

    iget-object v6, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->b:Ljava/util/HashSet;

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/android/widget/al;-><init>(Landroid/content/Context;Landroid/database/Cursor;IZZLjava/util/Set;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->V:Lcom/dropbox/android/widget/al;

    .line 172
    invoke-direct {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->C()V

    .line 173
    return-void
.end method

.method public final a(Ldbxyzptlk/a/d;)V
    .registers 4
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->V:Lcom/dropbox/android/widget/al;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/al;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 455
    return-void
.end method

.method public final a(Ldbxyzptlk/a/d;Landroid/database/Cursor;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v4, -0x3e7

    .line 414
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->V:Lcom/dropbox/android/widget/al;

    invoke-virtual {v0, p2}, Lcom/dropbox/android/widget/al;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 415
    invoke-direct {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->z()V

    .line 417
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->V:Lcom/dropbox/android/widget/al;

    invoke-virtual {v0}, Lcom/dropbox/android/widget/al;->c()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 421
    invoke-static {}, Lcom/dropbox/android/util/ab;->c()Z

    move-result v0

    if-nez v0, :cond_42

    invoke-static {}, Lcom/dropbox/android/util/ab;->d()Z

    move-result v0

    if-nez v0, :cond_42

    .line 422
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->g:Landroid/widget/TextView;

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 426
    :goto_27
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    :goto_2c
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    invoke-virtual {v0}, Lcom/dropbox/android/util/am;->b()Lcom/dropbox/android/util/al;

    move-result-object v0

    .line 433
    iget v1, v0, Lcom/dropbox/android/util/al;->b:I

    if-ltz v1, :cond_53

    .line 434
    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->f:Landroid/widget/ListView;

    iget v2, v0, Lcom/dropbox/android/util/al;->b:I

    iget v3, v0, Lcom/dropbox/android/util/al;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 440
    iput v4, v0, Lcom/dropbox/android/util/al;->b:I

    .line 447
    :cond_41
    :goto_41
    return-void

    .line 424
    :cond_42
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->g:Landroid/widget/TextView;

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_27

    .line 428
    :cond_4b
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c

    .line 441
    :cond_53
    iget v1, v0, Lcom/dropbox/android/util/al;->b:I

    if-eq v1, v4, :cond_41

    .line 444
    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 445
    iput v4, v0, Lcom/dropbox/android/util/al;->b:I

    goto :goto_41
.end method

.method public final bridge synthetic a(Ldbxyzptlk/a/d;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->a(Ldbxyzptlk/a/d;Landroid/database/Cursor;)V

    return-void
.end method

.method public final a()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 291
    iget-object v2, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    invoke-virtual {v2}, Lcom/dropbox/android/util/am;->d()I

    move-result v2

    if-gt v2, v1, :cond_b

    .line 298
    :goto_a
    return v0

    .line 295
    :cond_b
    iget-object v2, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    invoke-virtual {v2}, Lcom/dropbox/android/util/am;->c()Lcom/dropbox/android/util/al;

    .line 296
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->d_()Landroid/support/v4/app/w;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p0}, Landroid/support/v4/app/w;->b(ILandroid/os/Bundle;Landroid/support/v4/app/x;)Ldbxyzptlk/a/d;

    move v0, v1

    .line 298
    goto :goto_a
.end method

.method protected final b()Z
    .registers 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->W:Lcom/dropbox/android/activity/aq;

    sget-object v1, Lcom/dropbox/android/activity/aq;->b:Lcom/dropbox/android/activity/aq;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->d:Lcom/dropbox/android/util/am;

    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/am;->a(Landroid/widget/ListView;)V

    .line 254
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseFragment;->d()V

    .line 255
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragment;->d(Landroid/os/Bundle;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->c(Landroid/os/Bundle;)V

    .line 135
    invoke-direct {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->z()V

    .line 139
    invoke-virtual {p0}, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->d_()Landroid/support/v4/app/w;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/w;->a(ILandroid/os/Bundle;Landroid/support/v4/app/x;)Ldbxyzptlk/a/d;

    .line 140
    return-void
.end method

.method public final e(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragment;->e(Landroid/os/Bundle;)V

    .line 332
    const-string v0, "key_Mode"

    iget-object v1, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->W:Lcom/dropbox/android/activity/aq;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/aq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public final s()V
    .registers 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/dropbox/android/activity/base/BaseFragment;->s()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->Y:Lcom/dropbox/android/activity/ar;

    .line 90
    return-void
.end method

.method protected final y()Z
    .registers 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/dropbox/android/activity/LocalFileBrowseFragment;->W:Lcom/dropbox/android/activity/aq;

    sget-object v1, Lcom/dropbox/android/activity/aq;->a:Lcom/dropbox/android/activity/aq;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
