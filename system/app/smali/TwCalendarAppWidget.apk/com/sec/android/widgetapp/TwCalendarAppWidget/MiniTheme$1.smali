.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$1;
.super Ljava/lang/Object;
.source "MiniTheme.java"

# interfaces
.implements Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->updateView(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;

.field final synthetic val$clickEvent:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;

    iput-object p2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$1;->val$clickEvent:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp()V
    .registers 6

    .prologue
    .line 186
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;
    invoke-static {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->playSoundEffect(I)V

    .line 187
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$1;->val$clickEvent:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    if-nez v2, :cond_18

    .line 188
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->launchEditEvent(Landroid/content/Context;)V

    .line 200
    :goto_17
    return-void

    .line 190
    :cond_18
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$1;->val$clickEvent:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    iget-wide v3, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 191
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 192
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1420

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    const-string v2, "beginTime"

    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$1;->val$clickEvent:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    iget-wide v3, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 196
    const-string v2, "endTime"

    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$1;->val$clickEvent:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    iget-wide v3, v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endMillis:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 197
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$1;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_17
.end method
