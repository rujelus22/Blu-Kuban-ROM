.class Lcom/samsung/fumo/FirmwareUpdate$3;
.super Ljava/lang/Object;
.source "FirmwareUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/fumo/FirmwareUpdate;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/fumo/FirmwareUpdate;


# direct methods
.method constructor <init>(Lcom/samsung/fumo/FirmwareUpdate;)V
    .registers 2
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/samsung/fumo/FirmwareUpdate$3;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v0, 0x0

    .line 268
    const-string v1, "FirmwareUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKey ..... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    packed-switch p2, :pswitch_data_2e

    .line 285
    :goto_1c
    return v0

    .line 279
    :pswitch_1d
    iget-object v1, p0, Lcom/samsung/fumo/FirmwareUpdate$3;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    iget-object v1, v1, Lcom/samsung/fumo/FirmwareUpdate;->mFwUpdateHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate$3;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    iget-object v2, v2, Lcom/samsung/fumo/FirmwareUpdate;->mFwUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    const/4 v0, 0x1

    goto :goto_1c

    .line 269
    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method
