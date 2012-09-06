.class Lcom/android/calendar/DeleteEventHelper$1;
.super Lcom/android/calendar/AsyncQueryService;
.source "DeleteEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DeleteEventHelper;


# direct methods
.method constructor <init>(Lcom/android/calendar/DeleteEventHelper;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0, p2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 113
    if-nez p3, :cond_3

    .line 121
    :goto_2
    return-void

    .line 116
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 117
    new-instance v5, Lcom/android/calendar/CalendarEventModel;

    invoke-direct {v5}, Lcom/android/calendar/CalendarEventModel;-><init>()V

    .line 118
    .local v5, mModel:Lcom/android/calendar/CalendarEventModel;
    invoke-static {v5, p3}, Lcom/android/calendar/event/EditEventHelper;->setModelFromCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)V

    .line 119
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 120
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #getter for: Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J
    invoke-static {v1}, Lcom/android/calendar/DeleteEventHelper;->access$000(Lcom/android/calendar/DeleteEventHelper;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #getter for: Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J
    invoke-static {v3}, Lcom/android/calendar/DeleteEventHelper;->access$100(Lcom/android/calendar/DeleteEventHelper;)J

    move-result-wide v3

    iget-object v6, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    #getter for: Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I
    invoke-static {v6}, Lcom/android/calendar/DeleteEventHelper;->access$200(Lcom/android/calendar/DeleteEventHelper;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/DeleteEventHelper;->delete(JJLcom/android/calendar/CalendarEventModel;I)V

    goto :goto_2
.end method
