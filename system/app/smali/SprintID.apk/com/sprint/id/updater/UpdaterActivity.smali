.class public abstract Lcom/sprint/id/updater/UpdaterActivity;
.super Landroid/app/Activity;
.source "UpdaterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/id/updater/UpdaterActivity$UpdateThreadHandler;
    }
.end annotation


# static fields
.field protected static final DIALOG_FORCE_UPDATE:I = 0x1

.field protected static final DIALOG_UPDATE:I = 0x2


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const-class v0, Lcom/sprint/id/updater/UpdaterActivity;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/id/updater/UpdaterActivity;->log:Lcom/sprint/id/logger/Logger;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/id/updater/UpdaterActivity;)Lcom/sprint/id/logger/Logger;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sprint/id/updater/UpdaterActivity;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method private showUpdateDialog(Landroid/content/Context;Z)Landroid/app/Dialog;
    .registers 13
    .parameter "ctx"
    .parameter "force"

    .prologue
    const/4 v9, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/sprint/id/updater/UpdaterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 41
    .local v2, inflater:Landroid/view/LayoutInflater;
    sget v5, Lcom/sprint/id/updater/R$layout;->updater_dialog:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, dView:Landroid/view/View;
    sget v5, Lcom/sprint/id/updater/R$id;->dialog_body:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 43
    .local v4, tv:Landroid/widget/TextView;
    if-eqz p2, :cond_60

    sget v5, Lcom/sprint/id/updater/R$string;->update_force_dialog_msg:I

    :goto_18
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 45
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 47
    sget v6, Lcom/sprint/id/updater/R$string;->update_dialog_title:I

    invoke-virtual {p0, v6}, Lcom/sprint/id/updater/UpdaterActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sprint/id/updater/UpdaterActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v8}, Lcom/sprint/id/updater/UpdaterActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 48
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 49
    sget v6, Lcom/sprint/id/updater/R$string;->install:I

    new-instance v7, Lcom/sprint/id/updater/UpdaterActivity$1;

    invoke-direct {v7, p0}, Lcom/sprint/id/updater/UpdaterActivity$1;-><init>(Lcom/sprint/id/updater/UpdaterActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    if-nez p2, :cond_5b

    .line 64
    sget v5, Lcom/sprint/id/updater/R$string;->skip:I

    new-instance v6, Lcom/sprint/id/updater/UpdaterActivity$2;

    invoke-direct {v6, p0}, Lcom/sprint/id/updater/UpdaterActivity$2;-><init>(Lcom/sprint/id/updater/UpdaterActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    :cond_5b
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 73
    .local v3, introDialog:Landroid/app/AlertDialog;
    return-object v3

    .line 43
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #introDialog:Landroid/app/AlertDialog;
    :cond_60
    sget v5, Lcom/sprint/id/updater/R$string;->update_dialog_msg:I

    goto :goto_18
.end method


# virtual methods
.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_18

    .line 36
    :goto_4
    return-object v0

    .line 28
    :pswitch_5
    const/4 v1, 0x1

    invoke-direct {p0, p0, v1}, Lcom/sprint/id/updater/UpdaterActivity;->showUpdateDialog(Landroid/content/Context;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_4

    .line 32
    :pswitch_e
    const/4 v1, 0x0

    invoke-direct {p0, p0, v1}, Lcom/sprint/id/updater/UpdaterActivity;->showUpdateDialog(Landroid/content/Context;Z)Landroid/app/Dialog;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_4

    .line 26
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_5
        :pswitch_e
    .end packed-switch
.end method
