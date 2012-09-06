.class Lcom/google/android/apps/plus/hangout/HangoutTile$1;
.super Ljava/lang/Object;
.source "HangoutTile.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTile;->showError(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

.field final synthetic val$finishOnOk:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutTile;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$1;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iput-boolean p2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$1;->val$finishOnOk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 398
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 402
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 394
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$1;->val$finishOnOk:Z

    if-eqz v0, :cond_d

    .line 388
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$1;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->stopHangoutTile()V

    .line 390
    :cond_d
    return-void
.end method
