.class Lcom/infraware/polarisoffice/common/PenSettingPanel$2;
.super Ljava/lang/Object;
.source "PenSettingPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/PenSettingPanel;->initCloseButton()V
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$2;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel$2;->this$0:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->dismiss()V

    .line 172
    return-void
.end method
