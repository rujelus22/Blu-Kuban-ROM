.class Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;
.super Ljava/lang/Object;
.source "PanningTryActually.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanningTryActuallyInfoDialog"
.end annotation


# instance fields
.field private mAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;


# direct methods
.method private constructor <init>(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;)V
    .registers 2
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;-><init>(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private createDialog()Landroid/app/Dialog;
    .registers 7

    .prologue
    .line 363
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 364
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 366
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030001

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 368
    .local v3, layout:Landroid/view/View;
    const v4, 0x7f05000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->mImage:Landroid/widget/ImageView;

    .line 369
    iget-object v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v4, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 371
    const v4, 0x7f040006

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 372
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 373
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 374
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 375
    const v4, 0x7f040008

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 377
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 378
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 379
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 381
    return-object v1
.end method

.method private dismiss()V
    .registers 4

    .prologue
    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->dismissDialog(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 390
    :goto_6
    return-void

    .line 387
    :catch_7
    move-exception v0

    .line 388
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->dismiss()V

    .line 412
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->dismiss()V

    .line 417
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_9

    .line 395
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 397
    :cond_9
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_17

    .line 402
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 403
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 405
    :cond_12
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyInfoDialog;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 407
    :cond_17
    return-void
.end method
