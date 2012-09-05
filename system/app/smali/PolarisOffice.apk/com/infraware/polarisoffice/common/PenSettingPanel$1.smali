.class Lcom/infraware/polarisoffice/common/PenSettingPanel$1;
.super Ljava/lang/Object;
.source "PenSettingPanel.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/PenSettingPanel;-><init>(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$1;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 5

    .prologue
    .line 80
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$1;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    .local v0, context:Landroid/content/Context;
    const-string v2, "PEN_PROP"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 82
    .local v1, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v2, "PENSIZE_KEY"

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$1;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #getter for: Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nPenSize:I
    invoke-static {v3}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$0(Lcom/infraware/polarisoffice/common/PenSettingPanel;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 83
    const-string v2, "PENCOLOR_KEY"

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$1;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #getter for: Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCurColor:I
    invoke-static {v3}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$1(Lcom/infraware/polarisoffice/common/PenSettingPanel;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$1;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/PenSettingPanel;->mPenSettingChangeListener:Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;

    if-eqz v2, :cond_55

    .line 87
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$1;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/PenSettingPanel;->mPenSettingChangeListener:Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$1;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #getter for: Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCurColor:I
    invoke-static {v3}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$1(Lcom/infraware/polarisoffice/common/PenSettingPanel;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;->onPenColorChanged(I)V

    .line 88
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$1;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/PenSettingPanel;->mPenSettingChangeListener:Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$1;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    #getter for: Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nPenSize:I
    invoke-static {v3}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->access$0(Lcom/infraware/polarisoffice/common/PenSettingPanel;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;->onPenSizeChanged(I)V

    .line 89
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$1;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/PenSettingPanel;->mPenSettingChangeListener:Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;

    invoke-interface {v2}, Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;->onDismiss()V

    .line 91
    :cond_55
    return-void
.end method
