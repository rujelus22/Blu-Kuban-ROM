.class Lcom/infraware/polarisoffice/common/ShapeActivity$5;
.super Ljava/lang/Object;
.source "ShapeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/ShapeActivity;->OnSelectColor(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/ShapeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$5;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    #calls: Lcom/infraware/polarisoffice/common/ShapeActivity;->onClickColorButton(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/infraware/polarisoffice/common/ShapeActivity;->access$10(Lcom/infraware/polarisoffice/common/ShapeActivity;Landroid/view/View;)V

    .line 317
    return-void
.end method
