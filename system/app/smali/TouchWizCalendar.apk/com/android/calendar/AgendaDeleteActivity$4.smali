.class Lcom/android/calendar/AgendaDeleteActivity$4;
.super Ljava/lang/Object;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaDeleteActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 12
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f02009c

    .line 408
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v6}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v6

    invoke-interface {v4, v5, v8, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 409
    .local v0, allItemView:Landroid/view/View;
    const/4 v1, 0x0

    .line 410
    .local v1, beforeTodayView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z
    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 411
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v6}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v6

    invoke-interface {v4, v5, v8, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 414
    :cond_37
    if-nez p2, :cond_4a

    .line 415
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 421
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z
    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v4

    if-eqz v4, :cond_49

    if-eqz v1, :cond_49

    .line 422
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 464
    :cond_49
    :goto_49
    return-void

    .line 431
    :cond_4a
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/AgendaListView;->getSelectedItemId()J

    move-result-wide v2

    .line 433
    .local v2, id:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_6b

    .line 434
    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z
    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v4

    if-eqz v4, :cond_49

    if-eqz v1, :cond_49

    .line 438
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_49

    .line 441
    :cond_6b
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_82

    .line 442
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 443
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z
    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v4

    if-eqz v4, :cond_49

    if-eqz v1, :cond_49

    .line 444
    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_49

    .line 447
    :cond_82
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 453
    iget-object v4, p0, Lcom/android/calendar/AgendaDeleteActivity$4;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z
    invoke-static {v4}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v4

    if-eqz v4, :cond_49

    if-eqz v1, :cond_49

    .line 454
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_49
.end method
