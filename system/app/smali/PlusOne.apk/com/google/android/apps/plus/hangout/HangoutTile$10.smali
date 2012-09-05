.class Lcom/google/android/apps/plus/hangout/HangoutTile$10;
.super Ljava/lang/Object;
.source "HangoutTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutTile;->createDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 1248
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$10;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iput-boolean p2, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$10;->val$finishOnOk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1251
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$10;->val$finishOnOk:Z

    if-eqz v0, :cond_d

    .line 1252
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutTile$10;->this$0:Lcom/google/android/apps/plus/hangout/HangoutTile;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutTile;->getHangoutTileActivity()Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->access$1100(Lcom/google/android/apps/plus/hangout/HangoutTile;)Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;->stopHangoutTile()V

    .line 1254
    :cond_d
    return-void
.end method
