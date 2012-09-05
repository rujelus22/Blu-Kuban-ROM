.class public Lcom/android/calendar/DayEventListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DayEventListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/DayEventListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mDeclinedColor:I

.field private mFormatter:Ljava/util/Formatter;

.field public mImageLoader:Lcom/android/calendar/ImageLoader;

.field private mInflater:Landroid/view/LayoutInflater;

.field mListView:Lcom/android/calendar/DayEventListView;

.field private mNoTitleLabel:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/DayEventListView;)V
    .registers 6
    .parameter "context"
    .parameter "list"

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/calendar/DayEventListAdapter;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/calendar/DayEventListAdapter;->mListView:Lcom/android/calendar/DayEventListView;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mResources:Landroid/content/res/Resources;

    .line 97
    iget-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mNoTitleLabel:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayEventListAdapter;->mDeclinedColor:I

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/DayEventListAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mFormatter:Ljava/util/Formatter;

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 102
    new-instance v0, Lcom/android/calendar/ImageLoader;

    invoke-direct {v0, p1}, Lcom/android/calendar/ImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mImageLoader:Lcom/android/calendar/ImageLoader;

    .line 103
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mListView:Lcom/android/calendar/DayEventListView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mListView:Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->getEventList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_e

    .line 107
    :cond_c
    const/4 v0, 0x0

    .line 109
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/android/calendar/DayEventListAdapter;->mListView:Lcom/android/calendar/DayEventListView;

    invoke-virtual {v0}, Lcom/android/calendar/DayEventListView;->getEventList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_d
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 117
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 33
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 121
    const/16 v20, 0x0

    .line 132
    .local v20, holder:Lcom/android/calendar/DayEventListAdapter$ViewHolder;
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1a8

    move-object/from16 v27, p2

    :goto_a
    check-cast v27, Landroid/widget/LinearLayout;

    .line 133
    .local v27, view:Landroid/widget/LinearLayout;
    if-nez v27, :cond_1e

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayEventListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030020

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v27

    .end local v27           #view:Landroid/widget/LinearLayout;
    check-cast v27, Landroid/widget/LinearLayout;

    .line 139
    .restart local v27       #view:Landroid/widget/LinearLayout;
    :cond_1e
    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v23

    .line 140
    .local v23, tag:Ljava/lang/Object;
    move-object/from16 v0, v23

    instance-of v2, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;

    if-eqz v2, :cond_2e

    .line 141
    invoke-virtual/range {v27 .. v27}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v20

    .end local v20           #holder:Lcom/android/calendar/DayEventListAdapter$ViewHolder;
    check-cast v20, Lcom/android/calendar/DayEventListAdapter$ViewHolder;

    .line 144
    .restart local v20       #holder:Lcom/android/calendar/DayEventListAdapter$ViewHolder;
    :cond_2e
    if-nez v20, :cond_69

    .line 145
    new-instance v20, Lcom/android/calendar/DayEventListAdapter$ViewHolder;

    .end local v20           #holder:Lcom/android/calendar/DayEventListAdapter$ViewHolder;
    invoke-direct/range {v20 .. v20}, Lcom/android/calendar/DayEventListAdapter$ViewHolder;-><init>()V

    .line 146
    .restart local v20       #holder:Lcom/android/calendar/DayEventListAdapter$ViewHolder;
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 147
    const v2, 0x7f0f0013

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 148
    const v2, 0x7f0f0099

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->when:Landroid/widget/TextView;

    .line 149
    const v2, 0x7f0f0096

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 152
    :cond_69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayEventListAdapter;->mListView:Lcom/android/calendar/DayEventListView;

    invoke-virtual {v2}, Lcom/android/calendar/DayEventListView;->getEventList()Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/calendar/Event;

    .line 162
    .local v17, event:Lcom/android/calendar/Event;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v24, v0

    .line 163
    .local v24, title:Landroid/widget/TextView;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v28, v0

    .line 195
    .local v28, when:Landroid/widget/TextView;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/calendar/Event;->color:I

    move/from16 v16, v0

    .line 196
    .local v16, color:I
    if-nez v16, :cond_90

    .line 197
    const v16, -0x222223

    .line 199
    :cond_90
    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->calendarColor:I

    .line 200
    const v2, 0x7f0f0015

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 203
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .line 204
    .local v25, titleString:Ljava/lang/String;
    if-eqz v25, :cond_b4

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_ba

    .line 205
    :cond_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayEventListAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 283
    :cond_ba
    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    move-object/from16 v0, v17

    iget-boolean v14, v0, Lcom/android/calendar/Event;->allDay:Z

    .line 288
    .local v14, allDay:Z
    if-eqz v14, :cond_1ac

    .line 289
    const/16 v2, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    :goto_ca
    const/16 v19, 0x0

    .line 359
    .local v19, hasPhoto:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayEventListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 361
    .local v8, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/calendar/Event;->contactDataId:I

    if-lez v2, :cond_1cf

    .line 362
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/calendar/Event;->contactDataId:I

    int-to-long v9, v3

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v26

    .line 364
    .local v26, uri:Landroid/net/Uri;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayEventListAdapter;->mImageLoader:Lcom/android/calendar/ImageLoader;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    const v10, 0x7f0f0095

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v3, v9, v10}, Lcom/android/calendar/ImageLoader;->DisplayImage(Landroid/net/Uri;Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;)Z

    move-result v19

    .line 404
    .end local v26           #uri:Landroid/net/Uri;
    :cond_106
    :goto_106
    const v2, 0x7f0f0095

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v19, :cond_223

    const/4 v2, 0x0

    :goto_112
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 405
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    if-eqz v19, :cond_227

    const/4 v2, 0x0

    :goto_11c
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    const v2, 0x7f0f0097

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 421
    const v2, 0x7f0f0093

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/Event;->isRepeating:Z

    if-eqz v2, :cond_22b

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    if-eqz v2, :cond_22b

    const/4 v2, 0x0

    :goto_143
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 423
    const v2, 0x7f0f009a

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/Event;->isRepeating:Z

    if-nez v2, :cond_161

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    if-nez v2, :cond_161

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/Event;->isFacebook()Z

    move-result v2

    if-eqz v2, :cond_22f

    :cond_161
    const/4 v2, 0x0

    :goto_162
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 426
    const v2, 0x7f0f007e

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 427
    .local v22, reminder:Landroid/view/View;
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/Event;->isRepeating:Z

    if-nez v2, :cond_17a

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    if-eqz v2, :cond_233

    :cond_17a
    const/4 v2, 0x0

    :goto_17b
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 428
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/Event;->isRepeating:Z

    if-eqz v2, :cond_237

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    if-nez v2, :cond_237

    .line 429
    const v2, 0x7f020026

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 433
    :goto_194
    const v2, 0x7f0f0016

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/Event;->isFacebook()Z

    move-result v2

    if-eqz v2, :cond_241

    const/4 v2, 0x0

    :goto_1a4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 436
    return-object v27

    .line 132
    .end local v8           #cr:Landroid/content/ContentResolver;
    .end local v14           #allDay:Z
    .end local v16           #color:I
    .end local v17           #event:Lcom/android/calendar/Event;
    .end local v19           #hasPhoto:Z
    .end local v22           #reminder:Landroid/view/View;
    .end local v23           #tag:Ljava/lang/Object;
    .end local v24           #title:Landroid/widget/TextView;
    .end local v25           #titleString:Ljava/lang/String;
    .end local v27           #view:Landroid/widget/LinearLayout;
    .end local v28           #when:Landroid/widget/TextView;
    :cond_1a8
    const/16 v27, 0x0

    goto/16 :goto_a

    .line 291
    .restart local v14       #allDay:Z
    .restart local v16       #color:I
    .restart local v17       #event:Lcom/android/calendar/Event;
    .restart local v23       #tag:Ljava/lang/Object;
    .restart local v24       #title:Landroid/widget/TextView;
    .restart local v25       #titleString:Ljava/lang/String;
    .restart local v27       #view:Landroid/widget/LinearLayout;
    .restart local v28       #when:Landroid/widget/TextView;
    :cond_1ac
    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 292
    .local v4, begin:J
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 311
    .local v6, end:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/DayEventListAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/Event;->isFacebook()Z

    move-result v9

    invoke-static/range {v2 .. v9}, Lcom/android/calendar/Utils;->formatDateTimeString(Landroid/content/Context;ZJJZZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ca

    .line 389
    .end local v4           #begin:J
    .end local v6           #end:J
    .restart local v8       #cr:Landroid/content/ContentResolver;
    .restart local v19       #hasPhoto:Z
    :cond_1cf
    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/Event;->hasFacebookPhoto()Z

    move-result v2

    if-eqz v2, :cond_106

    .line 390
    sget-object v9, Lcom/android/calendar/Utils;->FACEBOOK_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "photo"

    aput-object v3, v10, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    iget-wide v11, v0, Lcom/android/calendar/Event;->id:J

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 393
    .local v18, fbCursor:Landroid/database/Cursor;
    if-eqz v18, :cond_106

    .line 394
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_21e

    .line 395
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 396
    .local v21, photo:[B
    const/4 v2, 0x0

    move-object/from16 v0, v21

    array-length v3, v0

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 397
    .local v15, bm:Landroid/graphics/Bitmap;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/calendar/DayEventListAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 398
    const/16 v19, 0x1

    .line 400
    .end local v15           #bm:Landroid/graphics/Bitmap;
    .end local v21           #photo:[B
    :cond_21e
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_106

    .line 404
    .end local v18           #fbCursor:Landroid/database/Cursor;
    :cond_223
    const/16 v2, 0x8

    goto/16 :goto_112

    .line 405
    :cond_227
    const/16 v2, 0x8

    goto/16 :goto_11c

    .line 421
    :cond_22b
    const/16 v2, 0x8

    goto/16 :goto_143

    .line 423
    :cond_22f
    const/16 v2, 0x8

    goto/16 :goto_162

    .line 427
    .restart local v22       #reminder:Landroid/view/View;
    :cond_233
    const/16 v2, 0x8

    goto/16 :goto_17b

    .line 431
    :cond_237
    const v2, 0x7f02001e

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_194

    .line 433
    :cond_241
    const/16 v2, 0x8

    goto/16 :goto_1a4
.end method
