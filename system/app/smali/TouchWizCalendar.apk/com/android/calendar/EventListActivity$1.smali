.class Lcom/android/calendar/EventListActivity$1;
.super Ljava/lang/Object;
.source "EventListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/calendar/EventListActivity$1;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 321
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$1;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mEvents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/EventListActivity;->access$000(Lcom/android/calendar/EventListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 325
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/calendar/Event;->id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 327
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 329
    iget-object v2, p0, Lcom/android/calendar/EventListActivity$1;->this$0:Lcom/android/calendar/EventListActivity;

    const-class v3, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v2, "beginTime"

    iget-wide v3, v0, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 333
    const-string v2, "endTime"

    iget-wide v3, v0, Lcom/android/calendar/Event;->endMillis:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 335
    const-string v0, "event_day_time"

    iget-object v2, p0, Lcom/android/calendar/EventListActivity$1;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mCurrentMilli:J
    invoke-static {v2}, Lcom/android/calendar/EventListActivity;->access$100(Lcom/android/calendar/EventListActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 337
    const-string v0, "eventlist_type"

    iget-object v2, p0, Lcom/android/calendar/EventListActivity$1;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mEventListType:I
    invoke-static {v2}, Lcom/android/calendar/EventListActivity;->access$200(Lcom/android/calendar/EventListActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    const-string v0, "more_event_id"

    iget-object v2, p0, Lcom/android/calendar/EventListActivity$1;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mMoreEventId:J
    invoke-static {v2}, Lcom/android/calendar/EventListActivity;->access$300(Lcom/android/calendar/EventListActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 341
    const-string v0, "more_event_group"

    iget-object v2, p0, Lcom/android/calendar/EventListActivity$1;->this$0:Lcom/android/calendar/EventListActivity;

    #getter for: Lcom/android/calendar/EventListActivity;->mMoreEventGp:I
    invoke-static {v2}, Lcom/android/calendar/EventListActivity;->access$400(Lcom/android/calendar/EventListActivity;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    iget-object v0, p0, Lcom/android/calendar/EventListActivity$1;->this$0:Lcom/android/calendar/EventListActivity;

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventListActivity;->startActivity(Landroid/content/Intent;)V

    .line 345
    return-void
.end method
