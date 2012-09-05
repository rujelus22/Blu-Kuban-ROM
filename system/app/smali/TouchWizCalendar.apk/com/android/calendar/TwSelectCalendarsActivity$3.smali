.class Lcom/android/calendar/TwSelectCalendarsActivity$3;
.super Ljava/lang/Object;
.source "TwSelectCalendarsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/TwSelectCalendarsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/TwSelectCalendarsActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/TwSelectCalendarsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
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
    const/4 v4, 0x0

    .line 179
    instance-of v0, p2, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarItemView;

    if-eqz v0, :cond_9b

    .line 180
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    #calls: Lcom/android/calendar/TwSelectCalendarsActivity;->updateAllCheckState()V
    invoke-static {v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$100(Lcom/android/calendar/TwSelectCalendarsActivity;)V

    .line 182
    const v0, 0x7f0f001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 183
    .local v6, checkbox:Landroid/widget/CheckBox;
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 184
    .local v8, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    iget-object v0, v0, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 185
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    iget-object v0, v0, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    const-string v1, "visible"

    iget-object v2, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    #getter for: Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$200(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 186
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "_id=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    invoke-virtual {v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    #getter for: Lcom/android/calendar/TwSelectCalendarsActivity;->PROJECTION:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$300(Lcom/android/calendar/TwSelectCalendarsActivity;)[Ljava/lang/String;

    move-result-object v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 193
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_8e

    .line 195
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 196
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    #getter for: Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$200(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 198
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    iget-object v0, v0, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    const-string v1, "sync_events"

    iget-object v2, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    #getter for: Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$200(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 200
    :cond_8b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_8e
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    #getter for: Lcom/android/calendar/TwSelectCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->access$400(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/TwSelectCalendarsActivity$3;->this$0:Lcom/android/calendar/TwSelectCalendarsActivity;

    iget-object v1, v1, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v8, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #checkbox:Landroid/widget/CheckBox;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_9b
    return-void
.end method
