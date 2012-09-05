.class Lcom/infraware/polarisoffice/common/ShapeActivity$1;
.super Ljava/lang/Object;
.source "ShapeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/ShapeActivity;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 76
    :goto_7
    return-void

    .line 66
    :pswitch_8
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    #calls: Lcom/infraware/polarisoffice/common/ShapeActivity;->OnApplyData()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->access$0(Lcom/infraware/polarisoffice/common/ShapeActivity;)V

    .line 67
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->finish()V

    goto :goto_7

    .line 71
    :pswitch_13
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity$1;->this$0:Lcom/infraware/polarisoffice/common/ShapeActivity;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->finish()V

    goto :goto_7

    .line 64
    nop

    :pswitch_data_1a
    .packed-switch 0x7f0c01fd
        :pswitch_8
        :pswitch_13
    .end packed-switch
.end method
