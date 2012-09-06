.class Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;
.super Landroid/content/AsyncQueryHandler;
.source "SelectSyncedCalendarsMultiAccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncCalendarsUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;->this$0:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    .line 125
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 126
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 130
    if-nez p3, :cond_3

    .line 161
    .end local p2
    :cond_2
    :goto_2
    return-void

    .line 134
    .restart local p2
    :cond_3
    invoke-static {}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->access$100()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 136
    .local v0, currentCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_19

    .line 137
    invoke-static {v0, p3}, Lcom/android/calendar/Utils;->compareCursors(Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 138
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 143
    :cond_19
    invoke-static {p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v2

    .line 144
    .local v2, newCursor:Landroid/database/MatrixCursor;
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 146
    invoke-static {}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->access$200()Ljava/util/HashMap;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v2, v4}, Lcom/android/calendar/Utils;->checkForDuplicateNames(Ljava/util/Map;Landroid/database/Cursor;I)V

    .line 148
    invoke-static {}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->access$100()Ljava/util/Map;

    move-result-object v3

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :try_start_31
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;->this$0:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    invoke-virtual {v3, p1, v2}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    .line 151
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;->this$0:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    #getter for: Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mActivity:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;
    invoke-static {v3}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->access$300(Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;)Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->startManagingCursor(Landroid/database/Cursor;)V
    :try_end_3f
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_3f} :catch_4e

    .line 157
    :goto_3f
    if-eqz v0, :cond_2

    .line 158
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;->this$0:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    #getter for: Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mActivity:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;
    invoke-static {v3}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->access$300(Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;)Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 159
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 152
    :catch_4e
    move-exception v1

    .line 153
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "Calendar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adapter expired, try again on the next query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method
