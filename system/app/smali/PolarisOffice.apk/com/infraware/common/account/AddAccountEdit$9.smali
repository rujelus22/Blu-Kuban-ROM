.class Lcom/infraware/common/account/AddAccountEdit$9;
.super Ljava/lang/Object;
.source "AddAccountEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/common/account/AddAccountEdit;->setControlAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/account/AddAccountEdit;


# direct methods
.method constructor <init>(Lcom/infraware/common/account/AddAccountEdit;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/account/AddAccountEdit$9;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/infraware/common/account/AddAccountEdit$9;->this$0:Lcom/infraware/common/account/AddAccountEdit;

    iget-object v0, v0, Lcom/infraware/common/account/AddAccountEdit;->mEventHandler:Landroid/os/Handler;

    const/16 v1, 0x190

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 290
    return-void
.end method
