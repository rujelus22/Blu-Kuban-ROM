.class Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog$2;
.super Ljava/lang/Object;
.source "HangoutTile.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;Landroid/app/AlertDialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog$2;->this$1:Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;

    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 448
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog$2;->val$dialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 449
    .local v0, ok:Landroid/widget/Button;
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 450
    return-void
.end method
