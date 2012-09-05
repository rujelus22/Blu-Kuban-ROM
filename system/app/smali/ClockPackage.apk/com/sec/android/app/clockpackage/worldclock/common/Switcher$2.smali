.class Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;
.super Landroid/os/Handler;
.source "Switcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 164
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->scroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$700(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 165
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->scroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$700(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 166
    .local v0, currX:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$100(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I

    move-result v3

    sub-int v1, v3, v0

    .line 167
    .local v1, delta:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I
    invoke-static {v3, v0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$102(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;I)I

    .line 168
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$100(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I

    move-result v4

    #calls: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->getPackedViews(I)I
    invoke-static {v3, v4}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$400(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;I)I

    move-result v2

    .line 169
    .local v2, packed:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->manageViews(I)V
    invoke-static {v3, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$500(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;I)V

    .line 170
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->scroll(I)V
    invoke-static {v3, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$600(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;I)V

    .line 171
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->scroller:Landroid/widget/Scroller;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$700(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)Landroid/widget/Scroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4e

    .line 172
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$800(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)Landroid/os/Handler;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 181
    :goto_4d
    return-void

    .line 174
    :cond_4e
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_58

    .line 175
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->justify()V
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$900(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)V

    goto :goto_4d

    .line 177
    :cond_58
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$100(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$300(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I

    move-result v5

    div-int/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$2;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdpCount:I
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$200(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I

    move-result v5

    rem-int/2addr v4, v5

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mCenterIndex:I
    invoke-static {v3, v4}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$1002(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;I)I

    goto :goto_4d
.end method
