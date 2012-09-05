.class Lcom/android/calendar/RecentlyParticipants$EventAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "RecentlyParticipants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/RecentlyParticipants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/RecentlyParticipants;


# direct methods
.method public constructor <init>(Lcom/android/calendar/RecentlyParticipants;Landroid/content/Context;I)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/calendar/RecentlyParticipants$EventAdapter;->this$0:Lcom/android/calendar/RecentlyParticipants;

    .line 441
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 443
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 21
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 451
    const v1, 0x7f0f0013

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 453
    .local v14, titleView:Landroid/widget/TextView;
    const v1, 0x7f0f00bc

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 457
    .local v8, attendeeView:Landroid/widget/TextView;
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 459
    .local v13, title:Ljava/lang/String;
    if-eqz v13, :cond_25

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d3

    .line 461
    :cond_25
    const v1, 0x7f0a0025

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(I)V

    .line 471
    :goto_2b
    const-string v9, ""

    .line 475
    .local v9, attendees:Ljava/lang/String;
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 477
    .local v2, uri:Landroid/net/Uri;
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "event_id=%d AND (attendeeRelationship<>2 or attendeeRelationship is null)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v5, v6

    invoke-static {v1, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/RecentlyParticipants$EventAdapter;->this$0:Lcom/android/calendar/RecentlyParticipants;

    invoke-virtual {v1}, Lcom/android/calendar/RecentlyParticipants;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/calendar/RecentlyParticipants;->access$400()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "attendeeName ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 490
    .local v10, attendeesCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_c5

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_c5

    .line 492
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 496
    :cond_69
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v7, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 500
    .local v7, attendee:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 502
    .local v12, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 512
    .local v11, email:Ljava/lang/String;
    if-eqz v12, :cond_dd

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_dd

    .line 516
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_d8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    .line 536
    :cond_9f
    :goto_9f
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_bc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 540
    :cond_bc
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_69

    .line 544
    .end local v7           #attendee:Ljava/lang/StringBuffer;
    .end local v11           #email:Ljava/lang/String;
    .end local v12           #name:Ljava/lang/String;
    :cond_c2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 552
    :cond_c5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_108

    .line 562
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    :goto_d2
    return-void

    .line 465
    .end local v2           #uri:Landroid/net/Uri;
    .end local v4           #where:Ljava/lang/String;
    .end local v9           #attendees:Ljava/lang/String;
    .end local v10           #attendeesCursor:Landroid/database/Cursor;
    :cond_d3
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b

    .line 516
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v4       #where:Ljava/lang/String;
    .restart local v7       #attendee:Ljava/lang/StringBuffer;
    .restart local v9       #attendees:Ljava/lang/String;
    .restart local v10       #attendeesCursor:Landroid/database/Cursor;
    .restart local v11       #email:Ljava/lang/String;
    .restart local v12       #name:Ljava/lang/String;
    :cond_d8
    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    goto :goto_9f

    .line 518
    :cond_dd
    if-eqz v11, :cond_9f

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9f

    .line 520
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_103

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    :goto_102
    goto :goto_9f

    :cond_103
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    goto :goto_102

    .line 570
    .end local v7           #attendee:Ljava/lang/StringBuffer;
    .end local v11           #email:Ljava/lang/String;
    .end local v12           #name:Ljava/lang/String;
    :cond_108
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d2
.end method
