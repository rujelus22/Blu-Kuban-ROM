.class Lcom/android/calendar/ComposeHeaderView$ToButton$2;
.super Ljava/lang/Object;
.source "ComposeHeaderView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ComposeHeaderView$ToButton;->setFocusListen()V
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
    .line 609
    iput-object p1, p0, Lcom/android/calendar/ComposeHeaderView$ToButton$2;->this$1:Lcom/android/calendar/ComposeHeaderView$ToButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v1, 0x0

    .line 617
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton$2;->this$1:Lcom/android/calendar/ComposeHeaderView$ToButton;

    iget-object v0, v0, Lcom/android/calendar/ComposeHeaderView$ToButton;->this$0:Lcom/android/calendar/ComposeHeaderView;

    #setter for: Lcom/android/calendar/ComposeHeaderView;->mAlreadyValidatedAddress:Z
    invoke-static {v0, v1}, Lcom/android/calendar/ComposeHeaderView;->access$102(Lcom/android/calendar/ComposeHeaderView;Z)Z

    .line 621
    if-eqz p2, :cond_b

    .line 653
    :cond_a
    :goto_a
    return-void

    .line 627
    :cond_b
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton$2;->this$1:Lcom/android/calendar/ComposeHeaderView$ToButton;

    #getter for: Lcom/android/calendar/ComposeHeaderView$ToButton;->mDeleteButton:Z
    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$000(Lcom/android/calendar/ComposeHeaderView$ToButton;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 629
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 631
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 633
    invoke-static {}, Lcom/android/calendar/ComposeHeaderView;->getInstance()Lcom/android/calendar/ComposeHeaderView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 635
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton$2;->this$1:Lcom/android/calendar/ComposeHeaderView$ToButton;

    #getter for: Lcom/android/calendar/ComposeHeaderView$ToButton;->mKeepTextFocus:Z
    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$200(Lcom/android/calendar/ComposeHeaderView$ToButton;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 637
    invoke-static {}, Lcom/android/calendar/ComposeHeaderView;->getInstance()Lcom/android/calendar/ComposeHeaderView;

    move-result-object v0

    #calls: Lcom/android/calendar/ComposeHeaderView;->looseFocusFromEditText()V
    invoke-static {v0}, Lcom/android/calendar/ComposeHeaderView;->access$300(Lcom/android/calendar/ComposeHeaderView;)V

    goto :goto_a

    .line 641
    :cond_2f
    invoke-static {}, Lcom/android/calendar/ComposeHeaderView;->getInstance()Lcom/android/calendar/ComposeHeaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->validateEmailAddress()V

    goto :goto_a

    .line 647
    :cond_37
    iget-object v0, p0, Lcom/android/calendar/ComposeHeaderView$ToButton$2;->this$1:Lcom/android/calendar/ComposeHeaderView$ToButton;

    #setter for: Lcom/android/calendar/ComposeHeaderView$ToButton;->mDeleteButton:Z
    invoke-static {v0, v1}, Lcom/android/calendar/ComposeHeaderView$ToButton;->access$002(Lcom/android/calendar/ComposeHeaderView$ToButton;Z)Z

    goto :goto_a
.end method
