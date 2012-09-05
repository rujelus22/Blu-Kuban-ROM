.class Lcom/infraware/polarisoffice/common/PenSettingPanel$3;
.super Ljava/lang/Object;
.source "PenSettingPanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/PenSettingPanel;->initPenSizeBar(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$3;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 192
    const/4 v0, 0x2

    if-ge p2, v0, :cond_7

    .line 193
    const/4 p2, 0x2

    .line 194
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 197
    :cond_7
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$3;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #calls: Lcom/infraware/polarisoffice/common/PenSettingPanel;->setPenSize(I)V
    invoke-static {v0, p2}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$2(Lcom/infraware/polarisoffice/common/PenSettingPanel;I)V

    .line 198
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$3;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #calls: Lcom/infraware/polarisoffice/common/PenSettingPanel;->updatePreview()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$3(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V

    .line 199
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$3;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #calls: Lcom/infraware/polarisoffice/common/PenSettingPanel;->updateCircle()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$4(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V

    .line 200
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 188
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 184
    return-void
.end method
