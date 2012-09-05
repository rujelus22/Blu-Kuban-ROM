.class Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$1;
.super Ljava/lang/Object;
.source "SlideLayoutActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->settingLayout(Landroid/widget/GridView;Landroid/widget/GridView;)V
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
.field final synthetic this$0:Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    .line 93
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$1;->this$0:Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;

    add-int/lit8 v1, p3, 0x1

    #calls: Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->makeSlide(I)V
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->access$1(Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;I)V

    .line 94
    return-void
.end method
