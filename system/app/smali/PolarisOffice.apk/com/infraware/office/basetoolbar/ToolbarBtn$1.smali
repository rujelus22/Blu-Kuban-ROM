.class Lcom/infraware/office/basetoolbar/ToolbarBtn$1;
.super Landroid/os/Handler;
.source "ToolbarBtn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/basetoolbar/ToolbarBtn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/basetoolbar/ToolbarBtn;


# direct methods
.method constructor <init>(Lcom/infraware/office/basetoolbar/ToolbarBtn;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn$1;->this$0:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 37
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn$1;->this$0:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->invalidate()V

    .line 39
    :cond_a
    return-void
.end method
