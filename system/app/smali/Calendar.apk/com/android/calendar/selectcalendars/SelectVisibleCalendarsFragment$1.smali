.class Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment$1;
.super Lcom/android/calendar/AsyncQueryService;
.source "SelectVisibleCalendarsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment$1;->this$0:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-direct {p0, p2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment$1;->this$0:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    #getter for: Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
    invoke-static {v0}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->access$000(Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;)Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 85
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment$1;->this$0:Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    #setter for: Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->access$102(Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 86
    return-void
.end method
