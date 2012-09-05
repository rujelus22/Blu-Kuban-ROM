.class Lcom/infraware/polarisoffice/common/FillBordersActivity$6;
.super Ljava/lang/Object;
.source "FillBordersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/FillBordersActivity;->OnSelectColor(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FillBordersActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$6;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity$6;->this$0:Lcom/infraware/polarisoffice/common/FillBordersActivity;

    #calls: Lcom/infraware/polarisoffice/common/FillBordersActivity;->onClickColorButton(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->access$5(Lcom/infraware/polarisoffice/common/FillBordersActivity;Landroid/view/View;)V

    .line 393
    return-void
.end method
