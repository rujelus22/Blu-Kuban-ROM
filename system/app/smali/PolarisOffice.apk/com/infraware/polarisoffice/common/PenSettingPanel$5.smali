.class Lcom/infraware/polarisoffice/common/PenSettingPanel$5;
.super Ljava/lang/Object;
.source "PenSettingPanel.java"

# interfaces
.implements Lcom/infraware/polarisoffice/common/GrdientColorPicker$GrdientColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/PenSettingPanel;->initGrdientColorPickerView()V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$5;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$5;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #getter for: Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oColorPickerView:Lcom/infraware/polarisoffice/common/ColorPickerView;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$7(Lcom/infraware/polarisoffice/common/PenSettingPanel;)Lcom/infraware/polarisoffice/common/ColorPickerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ColorPickerView;->setuserSet(Z)V

    .line 236
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$5;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #getter for: Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oColorPickerView:Lcom/infraware/polarisoffice/common/ColorPickerView;
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$7(Lcom/infraware/polarisoffice/common/PenSettingPanel;)Lcom/infraware/polarisoffice/common/ColorPickerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/common/ColorPickerView;->setSelectorColor(I)V

    .line 237
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$5;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #calls: Lcom/infraware/polarisoffice/common/PenSettingPanel;->setCurColor(I)V
    invoke-static {v0, p1}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$5(Lcom/infraware/polarisoffice/common/PenSettingPanel;I)V

    .line 238
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$5;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #calls: Lcom/infraware/polarisoffice/common/PenSettingPanel;->updatePreview()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$3(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V

    .line 239
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$5;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #calls: Lcom/infraware/polarisoffice/common/PenSettingPanel;->updateProgressColor()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$6(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V

    .line 240
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$5;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #calls: Lcom/infraware/polarisoffice/common/PenSettingPanel;->updateCircle()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$4(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V

    .line 241
    return-void
.end method
