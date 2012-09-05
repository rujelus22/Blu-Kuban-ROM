.class Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyGoodJobDialog;
.super Ljava/lang/Object;
.source "PanningTryActually.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanningTryActuallyGoodJobDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;


# direct methods
.method private constructor <init>(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;)V
    .registers 2
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyGoodJobDialog;->this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyGoodJobDialog;-><init>(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyGoodJobDialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyGoodJobDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private createDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 423
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyGoodJobDialog;->this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f04000a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 426
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 427
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 428
    const v2, 0x7f040009

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    const v2, 0x7f040003

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 433
    .local v1, dialog:Landroid/app/AlertDialog;
    return-object v1
.end method

.method private dismiss()V
    .registers 4

    .prologue
    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyGoodJobDialog;->this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->dismissDialog(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 442
    :goto_6
    return-void

    .line 439
    :catch_7
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyGoodJobDialog;->dismiss()V

    .line 447
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "arg0"
    .parameter "which"

    .prologue
    .line 451
    packed-switch p2, :pswitch_data_e

    .line 461
    :goto_3
    return-void

    .line 453
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyGoodJobDialog;->dismiss()V

    goto :goto_3

    .line 456
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually$PanningTryActuallyGoodJobDialog;->this$0:Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;

    invoke-virtual {v0}, Lcom/sec/android/motions/settings/panningtutorial/PanningTryActually;->finish()V

    goto :goto_3

    .line 451
    :pswitch_data_e
    .packed-switch -0x2
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method
