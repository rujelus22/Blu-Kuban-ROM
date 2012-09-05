.class Lcom/infraware/office/basetoolbar/SubToolbarBtn$1;
.super Landroid/os/Handler;
.source "SubToolbarBtn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/basetoolbar/SubToolbarBtn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/basetoolbar/SubToolbarBtn;


# direct methods
.method constructor <init>(Lcom/infraware/office/basetoolbar/SubToolbarBtn;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn$1;->this$0:Lcom/infraware/office/basetoolbar/SubToolbarBtn;

    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 52
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn$1;->this$0:Lcom/infraware/office/basetoolbar/SubToolbarBtn;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->invalidate()V

    .line 57
    :cond_a
    :goto_a
    return-void

    .line 54
    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 55
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn$1;->this$0:Lcom/infraware/office/basetoolbar/SubToolbarBtn;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->showTooltip()V

    goto :goto_a
.end method
