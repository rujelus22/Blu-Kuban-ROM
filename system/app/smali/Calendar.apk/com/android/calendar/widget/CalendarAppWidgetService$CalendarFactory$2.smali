.class Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;
.super Ljava/lang/Object;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;


# direct methods
.method constructor <init>(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    #getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;
    invoke-static {v2}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 141
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    #calls: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->createLoaderUri()Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$100(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/net/Uri;

    move-result-object v1

    .line 142
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    #getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;
    invoke-static {v2}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 143
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    #getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$200(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->getHideDeclinedEvents(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_59

    const-string v0, "visible=1 AND selfAttendeeStatus!=2"

    .line 145
    .local v0, selection:Ljava/lang/String;
    :goto_25
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    #getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;
    invoke-static {v2}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$300()Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3

    .line 147
    :try_start_33
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$300()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$302(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    #setter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLastLock:I
    invoke-static {v2, v4}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$402(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;I)I

    .line 148
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_5c

    .line 149
    iget-object v2, p0, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;

    #getter for: Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;
    invoke-static {v2}, Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcom/android/calendar/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/CursorLoader;->forceLoad()V

    .line 151
    .end local v0           #selection:Ljava/lang/String;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_58
    return-void

    .line 143
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_59
    const-string v0, "visible=1"

    goto :goto_25

    .line 148
    .restart local v0       #selection:Ljava/lang/String;
    :catchall_5c
    move-exception v2

    :try_start_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v2
.end method
