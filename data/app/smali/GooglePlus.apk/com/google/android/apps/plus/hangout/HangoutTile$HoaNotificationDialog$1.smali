.class Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog$1;
.super Ljava/lang/Object;
.source "HangoutTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog$1;->this$1:Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog$1;->this$1:Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/plus/hangout/HangoutTile;->mHoaConsented:Z

    .line 436
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog$1;->this$1:Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isShown()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog$1;->this$1:Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 437
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog$1;->this$1:Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/HangoutTile$HoaNotificationDialog;->mJoinButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 439
    :cond_22
    return-void
.end method
