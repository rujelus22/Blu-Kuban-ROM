.class Lcom/infraware/polarisoffice/common/PenSettingPanel$4;
.super Ljava/lang/Object;
.source "PenSettingPanel.java"

# interfaces
.implements Lcom/infraware/polarisoffice/common/ColorPickerView$ColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/PenSettingPanel;->initColorPickerView(I)V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$4;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$4;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #calls: Lcom/infraware/polarisoffice/common/PenSettingPanel;->setCurColor(I)V
    invoke-static {v0, p1}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$5(Lcom/infraware/polarisoffice/common/PenSettingPanel;I)V

    .line 222
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$4;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #calls: Lcom/infraware/polarisoffice/common/PenSettingPanel;->updatePreview()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$3(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V

    .line 223
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$4;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #calls: Lcom/infraware/polarisoffice/common/PenSettingPanel;->updateProgressColor()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$6(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V

    .line 224
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$4;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #calls: Lcom/infraware/polarisoffice/common/PenSettingPanel;->updateCircle()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$4(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V

    .line 225
    return-void
.end method
