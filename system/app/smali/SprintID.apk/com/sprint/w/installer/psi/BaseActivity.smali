.class public abstract Lcom/sprint/w/installer/psi/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field public static final DEV_BUILD:Z = false

.field protected static final DIALOG_ERROR_RETRY:I = 0x64

.field protected static final DIALOG_MOBILE_NETWORK_REQUIRED:I = 0x65

.field protected static final DIALOG_NO_NETWORK:I = 0x67

.field protected static final DIALOG_NO_SERVER:I = 0x66


# instance fields
.field protected mProgress:Landroid/widget/ProgressBar;

.field protected sIgnoreNoMobileData:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    const v5, 0x7f060047

    const/high16 v4, 0x104

    const/4 v8, 0x0

    const v7, 0x104000a

    const/4 v6, 0x0

    .line 35
    packed-switch p1, :pswitch_data_fe

    .line 99
    invoke-static {p0, p1}, Lcom/sprint/w/installer/DialogFactory;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    :goto_11
    return-object v0

    .line 37
    :pswitch_12
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f060075

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/psi/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060076

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/psi/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprint/w/installer/psi/BaseActivity$3;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/psi/BaseActivity$3;-><init>(Lcom/sprint/w/installer/psi/BaseActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprint/w/installer/psi/BaseActivity$2;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/psi/BaseActivity$2;-><init>(Lcom/sprint/w/installer/psi/BaseActivity;)V

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprint/w/installer/psi/BaseActivity$1;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/psi/BaseActivity$1;-><init>(Lcom/sprint/w/installer/psi/BaseActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_11

    .line 59
    :pswitch_51
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0600ad

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/psi/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0600ae

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/psi/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprint/w/installer/psi/BaseActivity$6;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/psi/BaseActivity$6;-><init>(Lcom/sprint/w/installer/psi/BaseActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprint/w/installer/psi/BaseActivity$5;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/psi/BaseActivity$5;-><init>(Lcom/sprint/w/installer/psi/BaseActivity;)V

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sprint/w/installer/psi/BaseActivity$4;

    invoke-direct {v3, p0}, Lcom/sprint/w/installer/psi/BaseActivity$4;-><init>(Lcom/sprint/w/installer/psi/BaseActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_11

    .line 87
    :pswitch_90
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0600ce

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0600cf

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_11

    .line 90
    :pswitch_ad
    invoke-static {p0}, Lcom/sprint/w/installer/util/Util;->getZoneLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, zone_label:Ljava/lang/String;
    if-eqz v1, :cond_e1

    .line 93
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0600d3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0600d4

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/psi/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getCarrier()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .local v0, d3:Landroid/app/AlertDialog;
    goto/16 :goto_11

    .line 95
    .end local v0           #d3:Landroid/app/AlertDialog;
    :cond_e1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0600d3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0600f1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .restart local v0       #d3:Landroid/app/AlertDialog;
    goto/16 :goto_11

    .line 35
    :pswitch_data_fe
    .packed-switch 0x64
        :pswitch_12
        :pswitch_51
        :pswitch_90
        :pswitch_ad
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lcom/sprint/w/installer/DialogFactory;->prepareDialog(Landroid/content/Context;ILandroid/app/Dialog;)V

    .line 32
    return-void
.end method

.method protected abstract retryLastAction()V
.end method
