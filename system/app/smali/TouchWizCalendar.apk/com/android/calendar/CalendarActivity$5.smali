.class Lcom/android/calendar/CalendarActivity$5;
.super Ljava/lang/Object;
.source "CalendarActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/CalendarActivity;->switchViews(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/calendar/CalendarActivity$5;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 613
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$5;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .local v0, nextView:Landroid/view/View;
    move-object v1, v0

    .line 614
    check-cast v1, Lcom/android/calendar/CalendarInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/calendar/CalendarInterface;->reloadEvents(Z)V

    .line 615
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$5;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 616
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 617
    return-void
.end method
