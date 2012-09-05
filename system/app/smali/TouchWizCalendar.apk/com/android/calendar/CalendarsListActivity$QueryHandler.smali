.class Lcom/android/calendar/CalendarsListActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarsListActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/CalendarsListActivity;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/calendar/CalendarsListActivity$QueryHandler;->this$0:Lcom/android/calendar/CalendarsListActivity;

    .line 135
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity$QueryHandler;->this$0:Lcom/android/calendar/CalendarsListActivity;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarsListActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 151
    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity$QueryHandler;->this$0:Lcom/android/calendar/CalendarsListActivity;

    invoke-virtual {v2, p3}, Lcom/android/calendar/CalendarsListActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 153
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_10
    :goto_10
    return-void

    .line 157
    :cond_11
    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity$QueryHandler;->this$0:Lcom/android/calendar/CalendarsListActivity;

    #setter for: Lcom/android/calendar/CalendarsListActivity;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2, p3}, Lcom/android/calendar/CalendarsListActivity;->access$002(Lcom/android/calendar/CalendarsListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 159
    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity$QueryHandler;->this$0:Lcom/android/calendar/CalendarsListActivity;

    invoke-virtual {v2, p3}, Lcom/android/calendar/CalendarsListActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 163
    new-instance v0, Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;

    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity$QueryHandler;->this$0:Lcom/android/calendar/CalendarsListActivity;

    iget-object v3, p0, Lcom/android/calendar/CalendarsListActivity$QueryHandler;->this$0:Lcom/android/calendar/CalendarsListActivity;

    iget-object v4, p0, Lcom/android/calendar/CalendarsListActivity$QueryHandler;->this$0:Lcom/android/calendar/CalendarsListActivity;

    #getter for: Lcom/android/calendar/CalendarsListActivity;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/calendar/CalendarsListActivity;->access$000(Lcom/android/calendar/CalendarsListActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;-><init>(Lcom/android/calendar/CalendarsListActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 167
    .local v0, adapter:Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;
    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity$QueryHandler;->this$0:Lcom/android/calendar/CalendarsListActivity;

    #getter for: Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/calendar/CalendarsListActivity;->access$100(Lcom/android/calendar/CalendarsListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    const/4 v1, 0x0

    .local v1, position:I
    :goto_34
    invoke-virtual {v0}, Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 171
    invoke-static {}, Lcom/android/calendar/CalendarsListActivity;->access$200()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5b

    .line 173
    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity$QueryHandler;->this$0:Lcom/android/calendar/CalendarsListActivity;

    #getter for: Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/calendar/CalendarsListActivity;->access$100(Lcom/android/calendar/CalendarsListActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 175
    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity$QueryHandler;->this$0:Lcom/android/calendar/CalendarsListActivity;

    #getter for: Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/calendar/CalendarsListActivity;->access$100(Lcom/android/calendar/CalendarsListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidate()V

    goto :goto_10

    .line 169
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_34
.end method
