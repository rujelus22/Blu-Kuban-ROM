.class Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;
.super Ljava/lang/Object;
.source "FirmwareUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/fumo/FirmwareUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDlgDismiss"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/fumo/FirmwareUpdate;


# direct methods
.method private constructor <init>(Lcom/samsung/fumo/FirmwareUpdate;)V
    .registers 2
    .parameter

    .prologue
    .line 844
    iput-object p1, p0, Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/fumo/FirmwareUpdate;Lcom/samsung/fumo/FirmwareUpdate$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 844
    invoke-direct {p0, p1}, Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;-><init>(Lcom/samsung/fumo/FirmwareUpdate;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dlg"

    .prologue
    .line 847
    const-string v0, "FirmwareUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDlgDismiss dlg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const-string v0, "FirmwareUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDlgDismiss mPrgDlg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    #getter for: Lcom/samsung/fumo/FirmwareUpdate;->mPrgDlg:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/samsung/fumo/FirmwareUpdate;->access$400(Lcom/samsung/fumo/FirmwareUpdate;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate$OnDlgDismiss;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    #calls: Lcom/samsung/fumo/FirmwareUpdate;->fumoDone()V
    invoke-static {v0}, Lcom/samsung/fumo/FirmwareUpdate;->access$300(Lcom/samsung/fumo/FirmwareUpdate;)V

    .line 850
    return-void
.end method
