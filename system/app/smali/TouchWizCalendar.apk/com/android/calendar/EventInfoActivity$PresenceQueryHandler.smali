.class Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresenceQueryHandler"
.end annotation


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/calendar/EventInfoActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EventInfoActivity;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter "cr"

    .prologue
    .line 3012
    iput-object p1, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->this$0:Lcom/android/calendar/EventInfoActivity;

    .line 3013
    invoke-direct {p0, p3}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 3014
    iput-object p3, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 3015
    iput-object p2, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->mContext:Landroid/content/Context;

    .line 3016
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 14
    .parameter "queryIndex"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 3020
    if-nez p3, :cond_3

    .line 3058
    :goto_2
    return-void

    .line 3028
    :cond_3
    const/4 v7, -0x1

    :try_start_4
    invoke-interface {p3, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3029
    :cond_7
    :goto_7
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_69

    .line 3030
    iget-object v7, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->this$0:Lcom/android/calendar/EventInfoActivity;

    iget v7, v7, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_EMAIL_INDEX:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3031
    .local v1, email:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->this$0:Lcom/android/calendar/EventInfoActivity;

    iget v7, v7, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_CONTACT_ID_INDEX:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3032
    .local v0, contactId:I
    iget-object v7, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->this$0:Lcom/android/calendar/EventInfoActivity;

    #getter for: Lcom/android/calendar/EventInfoActivity;->mViewHolders:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/calendar/EventInfoActivity;->access$1400(Lcom/android/calendar/EventInfoActivity;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/EventInfoActivity$ViewHolder;

    .line 3033
    .local v6, vh:Lcom/android/calendar/EventInfoActivity$ViewHolder;
    iget-object v7, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->this$0:Lcom/android/calendar/EventInfoActivity;

    iget v7, v7, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_PHOTO_ID_INDEX:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 3038
    .local v3, photoId:I
    if-eqz v6, :cond_7

    .line 3041
    iget-object v4, v6, Lcom/android/calendar/EventInfoActivity$ViewHolder;->presence:Landroid/widget/ImageView;

    .line 3042
    .local v4, presenceView:Landroid/widget/ImageView;
    if-eqz v4, :cond_4a

    .line 3043
    iget-object v7, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->this$0:Lcom/android/calendar/EventInfoActivity;

    iget v7, v7, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_PRESENCE_INDEX:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 3044
    .local v5, status:I
    invoke-static {v5}, Landroid/provider/ContactsContract$Presence;->getPresenceIconResourceId(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3045
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3048
    .end local v5           #status:I
    :cond_4a
    if-lez v3, :cond_7

    iget v7, v6, Lcom/android/calendar/EventInfoActivity$ViewHolder;->updateCounts:I

    if-ge v7, p1, :cond_7

    .line 3049
    iput p1, v6, Lcom/android/calendar/EventInfoActivity$ViewHolder;->updateCounts:I

    .line 3050
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v0

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 3051
    .local v2, personUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->mContext:Landroid/content/Context;

    iget-object v8, v6, Lcom/android/calendar/EventInfoActivity$ViewHolder;->badge:Landroid/widget/QuickContactBadge;

    const v9, 0x7f0200a4

    invoke-static {v7, v8, v2, v9}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    :try_end_63
    .catchall {:try_start_4 .. :try_end_63} :catchall_64

    goto :goto_7

    .line 3056
    .end local v0           #contactId:I
    .end local v1           #email:Ljava/lang/String;
    .end local v2           #personUri:Landroid/net/Uri;
    .end local v3           #photoId:I
    .end local v4           #presenceView:Landroid/widget/ImageView;
    .end local v6           #vh:Lcom/android/calendar/EventInfoActivity$ViewHolder;
    :catchall_64
    move-exception v7

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v7

    :cond_69
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method
