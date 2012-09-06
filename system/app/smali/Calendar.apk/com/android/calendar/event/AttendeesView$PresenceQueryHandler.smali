.class Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AttendeesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/AttendeesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresenceQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/AttendeesView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/AttendeesView;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->this$0:Lcom/android/calendar/event/AttendeesView;

    .line 364
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 365
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 14
    .parameter "queryIndex"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 369
    if-eqz p3, :cond_4

    if-nez p2, :cond_5

    .line 417
    :cond_4
    :goto_4
    return-void

    :cond_5
    move-object v3, p2

    .line 376
    check-cast v3, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    .line 378
    .local v3, item:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    const/4 v7, -0x1

    :try_start_9
    invoke-interface {p3, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 379
    const/4 v2, 0x0

    .line 380
    .local v2, found:Z
    const/4 v0, 0x0

    .line 381
    .local v0, contactId:I
    const/4 v5, 0x0

    .line 382
    .local v5, photoId:I
    :goto_f
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 383
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, email:Ljava/lang/String;
    const/4 v6, 0x0

    .line 385
    .local v6, temp:I
    const/4 v7, 0x2

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 388
    if-lez v6, :cond_28

    .line 389
    move v5, v6

    .line 390
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 393
    :cond_28
    const/4 v2, 0x1

    .line 398
    goto :goto_f

    .line 399
    .end local v1           #email:Ljava/lang/String;
    .end local v6           #temp:I
    :cond_2a
    if-eqz v2, :cond_49

    .line 401
    if-lez v5, :cond_49

    iget v7, v3, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mUpdateCounts:I

    if-ge v7, p1, :cond_49

    .line 402
    iput p1, v3, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mUpdateCounts:I

    .line 403
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v0

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 406
    .local v4, personUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->this$0:Lcom/android/calendar/event/AttendeesView;

    #getter for: Lcom/android/calendar/event/AttendeesView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/calendar/event/AttendeesView;->access$000(Lcom/android/calendar/event/AttendeesView;)Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler$1;

    invoke-direct {v8, p0, v3}, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler$1;-><init>(Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)V

    invoke-static {v7, v3, v8, v4}, Lcom/android/calendar/ContactsAsyncHelper;->retrieveContactPhotoAsync(Landroid/content/Context;Lcom/android/calendar/event/EditEventHelper$AttendeeItem;Ljava/lang/Runnable;Landroid/net/Uri;)V
    :try_end_49
    .catchall {:try_start_9 .. :try_end_49} :catchall_4d

    .line 415
    .end local v4           #personUri:Landroid/net/Uri;
    :cond_49
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v0           #contactId:I
    .end local v2           #found:Z
    .end local v5           #photoId:I
    :catchall_4d
    move-exception v7

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v7
.end method
