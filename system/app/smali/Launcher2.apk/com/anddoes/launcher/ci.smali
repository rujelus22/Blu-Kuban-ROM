.class final Lcom/anddoes/launcher/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/EditShortcutActivity;

.field private b:Landroid/widget/ArrayAdapter;

.field private c:Ljava/util/List;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/anddoes/launcher/EditShortcutActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    const-string v0, "default_icon"

    iput-object v0, p0, Lcom/anddoes/launcher/ci;->d:Ljava/lang/String;

    .line 480
    const-string v0, "select_picture"

    iput-object v0, p0, Lcom/anddoes/launcher/ci;->e:Ljava/lang/String;

    .line 481
    const-string v0, "crop_picture"

    iput-object v0, p0, Lcom/anddoes/launcher/ci;->f:Ljava/lang/String;

    .line 482
    const-string v0, "icon_pack"

    iput-object v0, p0, Lcom/anddoes/launcher/ci;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/anddoes/launcher/EditShortcutActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/ci;-><init>(Lcom/anddoes/launcher/EditShortcutActivity;)V

    return-void
.end method

.method private static a(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 552
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 557
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 552
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 553
    invoke-static {v0, p1}, Lcom/anddoes/launcher/ia;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 554
    const/4 v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method final a()Landroid/app/Dialog;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/ci;->c:Ljava/util/List;

    .line 486
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const v2, 0x7f030003

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/anddoes/launcher/ci;->b:Landroid/widget/ArrayAdapter;

    .line 487
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->b:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const v2, 0x7f060165

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/EditShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 488
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/anddoes/launcher/ci;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->b:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const v2, 0x7f060166

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/EditShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/anddoes/launcher/ci;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->b:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const v2, 0x7f060167

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/EditShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 492
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/anddoes/launcher/ci;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->a(Lcom/anddoes/launcher/EditShortcutActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c9

    .line 495
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/anddoes/launcher/EditShortcutActivity;->a(Lcom/anddoes/launcher/EditShortcutActivity;Ljava/util/List;)V

    .line 497
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->b(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/c/b;->a(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 498
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 500
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_78
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_121

    .line 505
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->b(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "org.adw.launcher.icons.ACTION_PICK_ICON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 506
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_98
    :goto_98
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13e

    .line 513
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->b(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/c/f;->a(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 514
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_ac
    :goto_ac
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_161

    .line 521
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->b(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/c/c;->a(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 522
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c0
    :goto_c0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_184

    .line 529
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 530
    :cond_c9
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->a(Lcom/anddoes/launcher/EditShortcutActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/anddoes/launcher/cg;

    invoke-direct {v1}, Lcom/anddoes/launcher/cg;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 534
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->a(Lcom/anddoes/launcher/EditShortcutActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f8

    .line 535
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->b:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const v2, 0x7f060168

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/EditShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 536
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/anddoes/launcher/ci;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_f8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 540
    iget-object v1, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const v2, 0x7f060163

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/EditShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 541
    iget-object v1, p0, Lcom/anddoes/launcher/ci;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 542
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 544
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 545
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 546
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 547
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 548
    return-object v0

    .line 500
    :cond_121
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 501
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v3, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v3}, Lcom/anddoes/launcher/EditShortcutActivity;->a(Lcom/anddoes/launcher/EditShortcutActivity;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/anddoes/launcher/cf;

    iget-object v5, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const-string v6, "apex_theme"

    invoke-direct {v4, v5, v0, v6}, Lcom/anddoes/launcher/cf;-><init>(Lcom/anddoes/launcher/EditShortcutActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_78

    .line 506
    :cond_13e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 507
    invoke-static {v1, v0}, Lcom/anddoes/launcher/ci;->a(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-nez v3, :cond_98

    .line 508
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v3, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v3}, Lcom/anddoes/launcher/EditShortcutActivity;->a(Lcom/anddoes/launcher/EditShortcutActivity;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/anddoes/launcher/cf;

    iget-object v5, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const-string v6, "adw_theme"

    invoke-direct {v4, v5, v0, v6}, Lcom/anddoes/launcher/cf;-><init>(Lcom/anddoes/launcher/EditShortcutActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_98

    .line 514
    :cond_161
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 515
    invoke-static {v1, v0}, Lcom/anddoes/launcher/ci;->a(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-nez v3, :cond_ac

    .line 516
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v3, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v3}, Lcom/anddoes/launcher/EditShortcutActivity;->a(Lcom/anddoes/launcher/EditShortcutActivity;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/anddoes/launcher/cf;

    iget-object v5, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const-string v6, "lp_theme"

    invoke-direct {v4, v5, v0, v6}, Lcom/anddoes/launcher/cf;-><init>(Lcom/anddoes/launcher/EditShortcutActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ac

    .line 522
    :cond_184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 523
    invoke-static {v1, v0}, Lcom/anddoes/launcher/ci;->a(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-nez v3, :cond_c0

    .line 524
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v3, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v3}, Lcom/anddoes/launcher/EditShortcutActivity;->a(Lcom/anddoes/launcher/EditShortcutActivity;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/anddoes/launcher/cf;

    iget-object v5, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const-string v6, "go_theme"

    invoke-direct {v4, v5, v0, v6}, Lcom/anddoes/launcher/cf;-><init>(Lcom/anddoes/launcher/EditShortcutActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter

    .prologue
    .line 562
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 574
    if-ltz p2, :cond_c

    iget-object v0, p0, Lcom/anddoes/launcher/ci;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_d

    .line 625
    :cond_c
    :goto_c
    return-void

    .line 577
    :cond_d
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 578
    iget-object v2, p0, Lcom/anddoes/launcher/ci;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 580
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->c(Lcom/anddoes/launcher/EditShortcutActivity;)Lcom/anddoes/launcher/ec;

    move-result-object v0

    instance-of v0, v0, Lcom/anddoes/launcher/kj;

    if-eqz v0, :cond_86

    .line 581
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->d(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 582
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    iget-object v2, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v2}, Lcom/anddoes/launcher/EditShortcutActivity;->d(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anddoes/launcher/EditShortcutActivity;->a(Lcom/anddoes/launcher/EditShortcutActivity;Landroid/content/Intent$ShortcutIconResource;)V

    .line 585
    :try_start_3a
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->b(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v2}, Lcom/anddoes/launcher/EditShortcutActivity;->e(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3a .. :try_end_4b} :catch_83

    move-result-object v0

    .line 589
    :goto_4c
    if-eqz v0, :cond_c

    .line 590
    iget-object v2, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v2}, Lcom/anddoes/launcher/EditShortcutActivity;->e(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 591
    if-eqz v1, :cond_c

    .line 592
    iget-object v2, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v2}, Lcom/anddoes/launcher/EditShortcutActivity;->f(Lcom/anddoes/launcher/EditShortcutActivity;)Lcom/anddoes/launcher/LauncherApplication;

    move-result-object v2

    iget-object v2, v2, Lcom/anddoes/launcher/LauncherApplication;->b:Lcom/anddoes/launcher/ds;

    invoke-virtual {v2, v0, v1}, Lcom/anddoes/launcher/ds;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 593
    iget-object v1, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    iget-object v2, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0, v2}, Lcom/anddoes/launcher/kw;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/anddoes/launcher/EditShortcutActivity;->a(Lcom/anddoes/launcher/EditShortcutActivity;Landroid/graphics/Bitmap;)V

    .line 594
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->g(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v1}, Lcom/anddoes/launcher/EditShortcutActivity;->h(Lcom/anddoes/launcher/EditShortcutActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_c

    .line 587
    :catch_83
    move-exception v0

    move-object v0, v1

    goto :goto_4c

    .line 598
    :cond_86
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->c(Lcom/anddoes/launcher/EditShortcutActivity;)Lcom/anddoes/launcher/ec;

    move-result-object v0

    instance-of v0, v0, Lcom/anddoes/launcher/dd;

    if-eqz v0, :cond_c

    .line 599
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    iget-object v1, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v1}, Lcom/anddoes/launcher/EditShortcutActivity;->c(Lcom/anddoes/launcher/EditShortcutActivity;)Lcom/anddoes/launcher/ec;

    invoke-static {v0}, Lcom/anddoes/launcher/EditShortcutActivity;->i(Lcom/anddoes/launcher/EditShortcutActivity;)V

    goto/16 :goto_c

    .line 601
    :cond_9c
    iget-object v1, p0, Lcom/anddoes/launcher/ci;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    iget-object v1, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    .line 606
    iget-object v2, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const v3, 0x7f060164

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/EditShortcutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 605
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/anddoes/launcher/EditShortcutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_c

    .line 607
    :cond_c4
    iget-object v1, p0, Lcom/anddoes/launcher/ci;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 611
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    iget-object v1, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    invoke-static {v1}, Lcom/anddoes/launcher/EditShortcutActivity;->j(Lcom/anddoes/launcher/EditShortcutActivity;)I

    move-result v1

    .line 614
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const-string v2, "outputX"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    const-string v2, "outputY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 617
    const-string v2, "aspectX"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    const-string v2, "aspectY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 619
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 620
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 621
    iget-object v1, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/anddoes/launcher/EditShortcutActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_c

    .line 622
    :cond_10b
    iget-object v1, p0, Lcom/anddoes/launcher/ci;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 623
    iget-object v0, p0, Lcom/anddoes/launcher/ci;->a:Lcom/anddoes/launcher/EditShortcutActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/EditShortcutActivity;->showDialog(I)V

    goto/16 :goto_c
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter

    .prologue
    .line 567
    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter

    .prologue
    .line 630
    return-void
.end method
