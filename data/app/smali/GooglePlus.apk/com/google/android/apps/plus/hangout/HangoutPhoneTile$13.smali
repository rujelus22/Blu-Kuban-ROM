.class Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$13;
.super Ljava/lang/Object;
.source "HangoutPhoneTile.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->showUpgradeClientDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;)V
    .registers 2
    .parameter

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$13;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1299
    return-void
.end method

.method public onDialogListClick(ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .parameter "which"
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1303
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1295
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 5
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 1282
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$13;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->stopHangoutTile()V

    .line 1284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1285
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1286
    const-string v1, "market://details?id=com.google.android.apps.plus"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1289
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1290
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile$13;->this$0:Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1291
    return-void
.end method
