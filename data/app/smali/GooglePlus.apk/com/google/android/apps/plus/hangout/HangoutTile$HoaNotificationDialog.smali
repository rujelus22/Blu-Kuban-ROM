.class Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;
.super Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
.source "HangoutTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoaNotificationDialog"
.end annotation


# instance fields
.field mJoinButton:Landroid/widget/Button;

.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTile;Landroid/widget/Button;)V
    .registers 3
    .parameter
    .parameter "joinButton"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;-><init>()V

    .line 415
    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;->mJoinButton:Landroid/widget/Button;

    .line 416
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 421
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;->getDialogContext()Landroid/content/Context;

    move-result-object v1

    .line 422
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 423
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f03004c

    invoke-virtual {v4, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 424
    .local v3, dialogView:Landroid/view/View;
    const v7, 0x7f0900f3

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 427
    .local v6, understood:Landroid/widget/CheckBox;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x1080027

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f080370

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08036e

    new-instance v9, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog$1;

    invoke-direct {v9, p0}, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog$1;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08036f

    invoke-virtual {v7, v8, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 443
    .local v2, dialog:Landroid/app/AlertDialog;
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 444
    .local v5, ok:Landroid/widget/Button;
    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 445
    new-instance v7, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog$2;

    invoke-direct {v7, p0, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog$2;-><init>(Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 453
    return-object v2
.end method
