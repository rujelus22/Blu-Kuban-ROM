.class Lcom/android/calendar/EventInfoActivity$2;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoActivity;->goTo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 897
    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$2;->this$0:Lcom/android/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 899
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity$2;->this$0:Lcom/android/calendar/EventInfoActivity;

    #getter for: Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;
    invoke-static {v1}, Lcom/android/calendar/EventInfoActivity;->access$300(Lcom/android/calendar/EventInfoActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .line 900
    .local v0, next:Landroid/view/View;
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity$2;->this$0:Lcom/android/calendar/EventInfoActivity;

    #getter for: Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;
    invoke-static {v1}, Lcom/android/calendar/EventInfoActivity;->access$300(Lcom/android/calendar/EventInfoActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 901
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity$2;->this$0:Lcom/android/calendar/EventInfoActivity;

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity$2;->this$0:Lcom/android/calendar/EventInfoActivity;

    #getter for: Lcom/android/calendar/EventInfoActivity;->mSwitcher:Landroid/widget/ViewSwitcher;
    invoke-static {v2}, Lcom/android/calendar/EventInfoActivity;->access$300(Lcom/android/calendar/EventInfoActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    #calls: Lcom/android/calendar/EventInfoActivity;->UpdateView(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/android/calendar/EventInfoActivity;->access$400(Lcom/android/calendar/EventInfoActivity;Landroid/view/View;)V

    .line 902
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 903
    return-void
.end method
