.class Lcom/android/calendar/ComposeHeaderView$ToButton$1;
.super Ljava/lang/Object;
.source "ComposeHeaderView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ComposeHeaderView$ToButton;->setKeyListen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/ComposeHeaderView$ToButton;


# direct methods
.method constructor <init>(Lcom/android/calendar/ComposeHeaderView$ToButton;)V
    .registers 2
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton$1;->this$1:Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 547
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_25

    const/16 v1, 0x43

    if-ne p2, v1, :cond_25

    .line 553
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton$1;->this$1:Lcom/android/calendar/ComposeHeaderView$ToButton;

    #getter for: Lcom/android/calendar/ComposeHeaderView$ToButton;->mDeleteButton:Z
    invoke-static {v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$000(Lcom/android/calendar/ComposeHeaderView$ToButton;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 597
    :goto_13
    return v0

    .line 565
    :cond_14
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton$1;->this$1:Lcom/android/calendar/ComposeHeaderView$ToButton;

    #setter for: Lcom/android/calendar/ComposeHeaderView$ToButton;->mDeleteButton:Z
    invoke-static {v1, v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$002(Lcom/android/calendar/ComposeHeaderView$ToButton;Z)Z

    .line 567
    iget-object v1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton$1;->this$1:Lcom/android/calendar/ComposeHeaderView$ToButton;

    iget-object v1, v1, Lcom/android/calendar/ComposeHeaderView$ToButton;->this$0:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/ComposeHeaderView;->removeToBtn(I)V

    goto :goto_13

    .line 597
    :cond_25
    const/4 v0, 0x0

    goto :goto_13
.end method
