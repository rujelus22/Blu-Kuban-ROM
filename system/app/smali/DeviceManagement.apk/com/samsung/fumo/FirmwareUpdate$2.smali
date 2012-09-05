.class Lcom/samsung/fumo/FirmwareUpdate$2;
.super Ljava/lang/Object;
.source "FirmwareUpdate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/fumo/FirmwareUpdate;->moveToHfaPrlFumoNoUpdateWindow()V
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
    .line 234
    iput-object p1, p0, Lcom/samsung/fumo/FirmwareUpdate$2;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 236
    const-string v0, "FirmwareUpdate"

    const-string v1, "moveToHfaPrlFumoNoUpdateWindow onClick "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate$2;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    #getter for: Lcom/samsung/fumo/FirmwareUpdate;->hfaPrlFumoWinBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/fumo/FirmwareUpdate;->access$100(Lcom/samsung/fumo/FirmwareUpdate;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/samsung/fumo/FirmwareUpdate$2;->this$0:Lcom/samsung/fumo/FirmwareUpdate;

    #calls: Lcom/samsung/fumo/FirmwareUpdate;->fumoDone()V
    invoke-static {v0}, Lcom/samsung/fumo/FirmwareUpdate;->access$300(Lcom/samsung/fumo/FirmwareUpdate;)V

    .line 239
    return-void
.end method
