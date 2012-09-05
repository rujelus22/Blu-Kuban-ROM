.class Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$1;
.super Ljava/lang/Object;
.source "MasterTemplateActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->settingLayout(Landroid/widget/GridView;Landroid/widget/GridView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;

    invoke-virtual {v0, p3}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->startSlide(I)V

    .line 49
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/ppt/MasterTemplateActivity;->finish()V

    .line 50
    return-void
.end method
