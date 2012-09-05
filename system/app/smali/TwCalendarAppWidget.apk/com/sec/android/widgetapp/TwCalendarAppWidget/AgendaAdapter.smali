.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AgendaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;
    }
.end annotation


# static fields
.field static final CALENDARS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDeclinedColor:I

.field private mFormatter:Ljava/util/Formatter;

.field public mImageLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

.field private mNoTitleLabel:Ljava/lang/String;

.field private mNotificationMoment:Z

.field private mResources:Landroid/content/res/Resources;

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 95
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mContext:Landroid/content/Context;

    move-object v0, p1

    .line 96
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mActivity:Landroid/app/Activity;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    .line 98
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mDeclinedColor:I

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 101
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mFormatter:Ljava/util/Formatter;

    .line 103
    invoke-static {p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getCalendarPreferenceNotificationMoment(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mNotificationMoment:Z

    .line 105
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mImageLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

    .line 106
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 58
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 118
    const/16 v37, 0x0

    .line 122
    .local v37, holder:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v46

    .line 123
    .local v46, tag:Ljava/lang/Object;
    move-object/from16 v0, v46

    instance-of v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;

    if-eqz v3, :cond_12

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v37

    .end local v37           #holder:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;
    check-cast v37, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;

    .line 127
    .restart local v37       #holder:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;
    :cond_12
    if-nez v37, :cond_94

    .line 128
    new-instance v37, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;

    .end local v37           #holder:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;
    invoke-direct/range {v37 .. v37}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;-><init>()V

    .line 129
    .restart local v37       #holder:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    const v3, 0x7f0b000e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v37

    iput-object v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 131
    const v3, 0x7f0b000d

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v37

    iput-object v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->alldayTitle:Landroid/widget/TextView;

    .line 132
    const v3, 0x7f0b000f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v37

    iput-object v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    .line 133
    const v3, 0x7f0b0009

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v37

    iput-object v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->calendar:Landroid/view/View;

    .line 134
    const v3, 0x7f0b000b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, v37

    iput-object v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 135
    const v3, 0x7f0b0008

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v37

    iput-object v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->container:Landroid/view/View;

    .line 136
    const v3, 0x7f0b0012

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, v37

    iput-object v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    .line 137
    const v3, 0x7f0b000a

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v37

    iput-object v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->photoContainer:Landroid/view/View;

    .line 148
    :cond_94
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v47, v0

    .line 149
    .local v47, title:Landroid/widget/TextView;
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->alldayTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    .line 150
    .local v19, alldayTitle:Landroid/widget/TextView;
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v52, v0

    .line 151
    .local v52, when:Landroid/widget/TextView;
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->calendar:Landroid/view/View;

    move-object/from16 v20, v0

    .line 152
    .local v20, calendar:Landroid/view/View;
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->container:Landroid/view/View;

    move-object/from16 v24, v0

    .line 153
    .local v24, container:Landroid/view/View;
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    move-object/from16 v53, v0

    .line 164
    .local v53, where:Landroid/widget/TextView;
    const-string v3, "contact_data_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 165
    .local v23, contactDataId:I
    const-string v3, "contact_account_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 166
    .local v22, contactAccountType:Ljava/lang/String;
    const-string v3, "facebook_schedule_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 168
    .local v33, fbEventId:Ljava/lang/String;
    if-nez v33, :cond_f0

    if-eqz v22, :cond_217

    const-string v3, "com.sec.android.app.snsaccountfacebook.account_type"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_217

    :cond_f0
    const/16 v38, 0x1

    .line 172
    .local v38, isFacebook:Z
    :goto_f2
    const/4 v3, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 173
    .local v21, color:I
    if-nez v21, :cond_fe

    .line 174
    const v21, -0x222223

    .line 177
    :cond_fe
    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setBackgroundColor(I)V

    .line 180
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 181
    .local v48, titleString:Ljava/lang/String;
    if-eqz v48, :cond_110

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_116

    .line 182
    :cond_110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v48, v0

    .line 231
    :cond_116
    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_21b

    const/16 v18, 0x1

    .line 232
    .local v18, allDay:Z
    :goto_121
    if-eqz v18, :cond_21f

    .line 233
    move-object/from16 v0, v19

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    const/16 v3, 0x8

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    const/16 v3, 0x8

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    :goto_13e
    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 287
    .local v39, locationString:Ljava/lang/String;
    if-eqz v39, :cond_2ec

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2ec

    .line 288
    const/4 v3, 0x0

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    move-object/from16 v0, v53

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :goto_15a
    const/16 v36, 0x0

    .line 297
    .local v36, hasPhoto:Z
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    .line 298
    .local v30, eventId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 299
    .local v11, cr:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v7, 0x0

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v50

    .line 300
    .local v50, u:Landroid/net/Uri;
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 301
    if-lez v23, :cond_2f4

    .line 302
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v23

    int-to-long v7, v0

    invoke-static {v3, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v51

    .line 303
    .local v51, uri:Landroid/net/Uri;
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mImageLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v37

    iget-object v7, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v37

    iget-object v8, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->photoContainer:Landroid/view/View;

    move-object/from16 v0, v51

    invoke-virtual {v3, v0, v4, v7, v8}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ImageLoader;->DisplayImage(Landroid/net/Uri;Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;)Z

    move-result v36

    .line 322
    .end local v51           #uri:Landroid/net/Uri;
    :cond_1aa
    :goto_1aa
    const v3, 0x7f0b000a

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v36, :cond_355

    const/4 v3, 0x0

    :goto_1b6
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 323
    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    if-eqz v36, :cond_359

    const/4 v3, 0x0

    :goto_1c0
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    const v3, 0x7f0b000c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v38, :cond_35d

    const/4 v3, 0x0

    :goto_1cf
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 326
    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_361

    const/16 v35, 0x1

    .line 327
    .local v35, hasAlarm:Z
    :goto_1dd
    const/4 v3, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 329
    .local v44, rrule:Ljava/lang/String;
    const v3, 0x7f0b0010

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 330
    .local v17, alarm:Landroid/view/View;
    const v3, 0x7f0b0011

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    .line 331
    .local v43, repeat:Landroid/view/View;
    if-eqz v44, :cond_365

    if-eqz v35, :cond_365

    const/4 v3, 0x0

    :goto_1fb
    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 332
    if-nez v44, :cond_204

    if-eqz v35, :cond_368

    :cond_204
    const/4 v3, 0x0

    :goto_205
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 333
    if-eqz v44, :cond_36b

    if-nez v35, :cond_36b

    .line 334
    const v3, 0x7f020017

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 339
    :goto_216
    return-void

    .line 168
    .end local v11           #cr:Landroid/content/ContentResolver;
    .end local v17           #alarm:Landroid/view/View;
    .end local v18           #allDay:Z
    .end local v21           #color:I
    .end local v30           #eventId:Ljava/lang/Long;
    .end local v35           #hasAlarm:Z
    .end local v36           #hasPhoto:Z
    .end local v38           #isFacebook:Z
    .end local v39           #locationString:Ljava/lang/String;
    .end local v43           #repeat:Landroid/view/View;
    .end local v44           #rrule:Ljava/lang/String;
    .end local v48           #titleString:Ljava/lang/String;
    .end local v50           #u:Landroid/net/Uri;
    :cond_217
    const/16 v38, 0x0

    goto/16 :goto_f2

    .line 231
    .restart local v21       #color:I
    .restart local v38       #isFacebook:Z
    .restart local v48       #titleString:Ljava/lang/String;
    :cond_21b
    const/16 v18, 0x0

    goto/16 :goto_121

    .line 239
    .restart local v18       #allDay:Z
    :cond_21f
    invoke-virtual/range {v47 .. v48}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    const/4 v3, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    const/16 v3, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 244
    .local v5, begin:J
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 245
    .local v27, end:J
    const-wide/16 v3, 0x0

    cmp-long v3, v27, v3

    if-nez v3, :cond_260

    .line 246
    const/16 v3, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 247
    .local v25, duration:Ljava/lang/String;
    if-eqz v25, :cond_2e5

    .line 248
    new-instance v40, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Duration;

    invoke-direct/range {v40 .. v40}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Duration;-><init>()V

    .line 250
    .local v40, parser:Lcom/sec/android/widgetapp/TwCalendarAppWidget/Duration;
    :try_start_253
    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Duration;->parse(Ljava/lang/String;)V
    :try_end_25a
    .catch Lcom/sec/android/widgetapp/TwCalendarAppWidget/DateException; {:try_start_253 .. :try_end_25a} :catch_2df

    .line 255
    :goto_25a
    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Duration;->addTo(J)J

    move-result-wide v27

    .line 261
    .end local v25           #duration:Ljava/lang/String;
    .end local v40           #parser:Lcom/sec/android/widgetapp/TwCalendarAppWidget/Duration;
    :cond_260
    :goto_260
    if-eqz v33, :cond_2b0

    .line 262
    new-instance v45, Landroid/text/format/Time;

    invoke-direct/range {v45 .. v45}, Landroid/text/format/Time;-><init>()V

    .line 263
    .local v45, startTime:Landroid/text/format/Time;
    new-instance v29, Landroid/text/format/Time;

    invoke-direct/range {v29 .. v29}, Landroid/text/format/Time;-><init>()V

    .line 265
    .local v29, endTime:Landroid/text/format/Time;
    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v49, v0

    .line 266
    .local v49, tz:Ljava/lang/String;
    const-string v3, "UTC"

    move-object/from16 v0, v45

    iput-object v3, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 267
    move-object/from16 v0, v45

    invoke-virtual {v0, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 268
    move-object/from16 v0, v49

    move-object/from16 v1, v45

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 269
    const/4 v3, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 270
    const/4 v3, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 272
    const-string v3, "UTC"

    move-object/from16 v0, v29

    iput-object v3, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 273
    move-object/from16 v0, v29

    move-wide/from16 v1, v27

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 274
    move-object/from16 v0, v49

    move-object/from16 v1, v29

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 275
    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 276
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v27

    .line 279
    .end local v29           #endTime:Landroid/text/format/Time;
    .end local v45           #startTime:Landroid/text/format/Time;
    .end local v49           #tz:Ljava/lang/String;
    :cond_2b0
    const/16 v3, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 280
    .local v31, eventTimezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mNotificationMoment:Z

    if-nez v3, :cond_2c6

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c6

    if-eqz v33, :cond_2e9

    :cond_2c6
    const/4 v10, 0x0

    .line 281
    .local v10, timezone:Ljava/lang/String;
    :goto_2c7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-wide v7, v5

    invoke-static/range {v3 .. v10}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->formatDateTimeString(Landroid/content/Context;ZJJZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_13e

    .line 251
    .end local v10           #timezone:Ljava/lang/String;
    .end local v31           #eventTimezone:Ljava/lang/String;
    .restart local v25       #duration:Ljava/lang/String;
    .restart local v40       #parser:Lcom/sec/android/widgetapp/TwCalendarAppWidget/Duration;
    :catch_2df
    move-exception v26

    .line 253
    .local v26, e:Lcom/sec/android/widgetapp/TwCalendarAppWidget/DateException;
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/DateException;->printStackTrace()V

    goto/16 :goto_25a

    .line 257
    .end local v26           #e:Lcom/sec/android/widgetapp/TwCalendarAppWidget/DateException;
    .end local v40           #parser:Lcom/sec/android/widgetapp/TwCalendarAppWidget/Duration;
    :cond_2e5
    move-wide/from16 v27, v5

    goto/16 :goto_260

    .end local v25           #duration:Ljava/lang/String;
    .restart local v31       #eventTimezone:Ljava/lang/String;
    :cond_2e9
    move-object/from16 v10, v31

    .line 280
    goto :goto_2c7

    .line 291
    .end local v5           #begin:J
    .end local v27           #end:J
    .end local v31           #eventTimezone:Ljava/lang/String;
    .restart local v39       #locationString:Ljava/lang/String;
    :cond_2ec
    const/4 v3, 0x4

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15a

    .line 305
    .restart local v11       #cr:Landroid/content/ContentResolver;
    .restart local v30       #eventId:Ljava/lang/Long;
    .restart local v36       #hasPhoto:Z
    .restart local v50       #u:Landroid/net/Uri;
    :cond_2f4
    if-eqz v38, :cond_1aa

    .line 306
    const-string v3, "facebook_schedule_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 307
    .local v34, fbPhotoUrl:Ljava/lang/String;
    if-eqz v34, :cond_1aa

    .line 308
    sget-object v12, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->FACEBOOK_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "photo"

    aput-object v4, v13, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 310
    .local v32, fbCursor:Landroid/database/Cursor;
    if-eqz v32, :cond_1aa

    .line 311
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_350

    .line 312
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v42

    .line 313
    .local v42, photoBlob:[B
    const/4 v3, 0x0

    move-object/from16 v0, v42

    array-length v4, v0

    move-object/from16 v0, v42

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v41

    .line 314
    .local v41, photo:Landroid/graphics/Bitmap;
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 315
    const/16 v36, 0x1

    .line 317
    .end local v41           #photo:Landroid/graphics/Bitmap;
    .end local v42           #photoBlob:[B
    :cond_350
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1aa

    .line 322
    .end local v32           #fbCursor:Landroid/database/Cursor;
    .end local v34           #fbPhotoUrl:Ljava/lang/String;
    :cond_355
    const/16 v3, 0x8

    goto/16 :goto_1b6

    .line 323
    :cond_359
    const/16 v3, 0x8

    goto/16 :goto_1c0

    .line 324
    :cond_35d
    const/16 v3, 0x8

    goto/16 :goto_1cf

    .line 326
    :cond_361
    const/16 v35, 0x0

    goto/16 :goto_1dd

    .line 331
    .restart local v17       #alarm:Landroid/view/View;
    .restart local v35       #hasAlarm:Z
    .restart local v43       #repeat:Landroid/view/View;
    .restart local v44       #rrule:Ljava/lang/String;
    :cond_365
    const/4 v3, 0x4

    goto/16 :goto_1fb

    .line 332
    :cond_368
    const/4 v3, 0x4

    goto/16 :goto_205

    .line 336
    :cond_36b
    const v3, 0x7f020015

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_216
.end method

.method public setCount(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 113
    iput p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mCount:I

    .line 114
    return-void
.end method

.method public setNotificationMoment(Z)V
    .registers 2
    .parameter "notificationMoment"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaAdapter;->mNotificationMoment:Z

    .line 110
    return-void
.end method
