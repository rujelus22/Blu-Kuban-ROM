.class Lcom/android/calendar/AgendaDeleteActivity$3;
.super Ljava/lang/Object;
.source "AgendaDeleteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 353
    iput-object p1, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f02009c

    .line 356
    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, allItemView:Landroid/view/View;
    const/4 v1, 0x0

    .line 358
    .local v1, beforeTodayView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z
    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 359
    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, v6, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 361
    :cond_2b
    if-nez p3, :cond_47

    .line 362
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z
    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v2

    if-eqz v2, :cond_3d

    if-eqz v1, :cond_3d

    .line 366
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 388
    :cond_3d
    :goto_3d
    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/AgendaListView;->invalidate()V

    .line 389
    return-void

    .line 369
    :cond_47
    if-ne p3, v6, :cond_5a

    .line 370
    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z
    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v2

    if-eqz v2, :cond_56

    if-eqz v1, :cond_56

    .line 371
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    :cond_56
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3d

    .line 377
    :cond_5a
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 383
    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z
    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v2

    if-eqz v2, :cond_3d

    if-eqz v1, :cond_3d

    .line 384
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3d
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    const v4, 0x7f02009c

    .line 392
    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 393
    .local v0, allItemView:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 399
    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mIsBeforeToday:Z
    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$500(Lcom/android/calendar/AgendaDeleteActivity;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 400
    iget-object v2, p0, Lcom/android/calendar/AgendaDeleteActivity$3;->this$0:Lcom/android/calendar/AgendaDeleteActivity;

    #getter for: Lcom/android/calendar/AgendaDeleteActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static {v2}, Lcom/android/calendar/AgendaDeleteActivity;->access$400(Lcom/android/calendar/AgendaDeleteActivity;)Lcom/android/calendar/AgendaListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/AgendaListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 401
    .local v1, beforeTodayView:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 403
    .end local v1           #beforeTodayView:Landroid/view/View;
    :cond_30
    return-void
.end method
