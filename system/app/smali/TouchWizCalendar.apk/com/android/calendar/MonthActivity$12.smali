.class Lcom/android/calendar/MonthActivity$12;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthActivity;->setBodyView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/android/calendar/MonthActivity$12;->this$0:Lcom/android/calendar/MonthActivity;

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
    .line 1221
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1222
    iget-object v0, p0, Lcom/android/calendar/MonthActivity$12;->this$0:Lcom/android/calendar/MonthActivity;

    #getter for: Lcom/android/calendar/MonthActivity;->mEvents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/MonthActivity;->access$200(Lcom/android/calendar/MonthActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 1223
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/calendar/Event;->id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1224
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1225
    iget-object v2, p0, Lcom/android/calendar/MonthActivity$12;->this$0:Lcom/android/calendar/MonthActivity;

    const-class v3, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1226
    const-string v2, "beginTime"

    iget-wide v3, v0, Lcom/android/calendar/Event;->startMillis:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1227
    const-string v2, "endTime"

    iget-wide v3, v0, Lcom/android/calendar/Event;->endMillis:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1228
    const-string v2, "event_day_time"

    iget-object v0, p0, Lcom/android/calendar/MonthActivity$12;->this$0:Lcom/android/calendar/MonthActivity;

    #getter for: Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;
    invoke-static {v0}, Lcom/android/calendar/MonthActivity;->access$400(Lcom/android/calendar/MonthActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->getSelectedMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1230
    const-string v0, "eventlist_type"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1231
    iget-object v0, p0, Lcom/android/calendar/MonthActivity$12;->this$0:Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0, v1}, Lcom/android/calendar/MonthActivity;->startActivity(Landroid/content/Intent;)V

    .line 1232
    return-void
.end method
