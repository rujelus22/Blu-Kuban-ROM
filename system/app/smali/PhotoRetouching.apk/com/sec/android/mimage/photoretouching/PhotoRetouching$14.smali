.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILjava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 2363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$12(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/app/Dialog;)V

    .line 2366
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, -0x1

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2368
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x2

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$36(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2369
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v1, 0xc001

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILandroid/os/Message;)Landroid/app/Dialog;

    .line 2370
    return-void
.end method
