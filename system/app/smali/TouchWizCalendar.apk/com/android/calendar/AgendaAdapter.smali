.class public Lcom/android/calendar/AgendaAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AgendaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaAdapter$ViewHolder;
    }
.end annotation


# static fields
.field static final CALENDARS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field public mImageLoader:Lcom/android/calendar/ImageLoader;

.field private mNoTitleLabel:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/AgendaAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 122
    iput-object p1, p0, Lcom/android/calendar/AgendaAdapter;->mContext:Landroid/content/Context;

    move-object v0, p1

    .line 123
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mActivity:Landroid/app/Activity;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    .line 125
    iget-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 129
    new-instance v0, Lcom/android/calendar/ImageLoader;

    invoke-direct {v0, p1}, Lcom/android/calendar/ImageLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaAdapter;->mImageLoader:Lcom/android/calendar/ImageLoader;

    .line 130
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 44
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 134
    const/16 v28, 0x0

    .line 145
    .local v28, holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v35

    .line 146
    .local v35, tag:Ljava/lang/Object;
    move-object/from16 v0, v35

    instance-of v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    if-eqz v2, :cond_12

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v28

    .end local v28           #holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    check-cast v28, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    .line 150
    .restart local v28       #holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    :cond_12
    if-nez v28, :cond_76

    .line 151
    new-instance v28, Lcom/android/calendar/AgendaAdapter$ViewHolder;

    .end local v28           #holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    invoke-direct/range {v28 .. v28}, Lcom/android/calendar/AgendaAdapter$ViewHolder;-><init>()V

    .line 152
    .restart local v28       #holder:Lcom/android/calendar/AgendaAdapter$ViewHolder;
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 156
    const v2, 0x7f0f0013

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 157
    const v2, 0x7f0f0099

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    .line 158
    const v2, 0x7f0f0015

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->calendar:Landroid/view/View;

    .line 159
    const v2, 0x7f0f0096

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 160
    const v2, 0x7f0f001b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 161
    const v2, 0x7f0f0095

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v28

    iput-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photoContainer:Landroid/view/View;

    .line 180
    :cond_76
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v36, v0

    .line 181
    .local v36, title:Landroid/widget/TextView;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v39, v0

    .line 182
    .local v39, when:Landroid/widget/TextView;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->calendar:Landroid/view/View;

    move-object/from16 v16, v0

    .line 215
    .local v16, calendar:Landroid/view/View;
    if-eqz v36, :cond_8e

    if-eqz v39, :cond_8e

    if-nez v16, :cond_8f

    .line 455
    :cond_8e
    :goto_8e
    return-void

    .line 222
    :cond_8f
    const-string v2, "contact_data_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 223
    .local v19, contactDataId:I
    const-string v2, "contact_account_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 225
    .local v18, contactAccountType:Ljava/lang/String;
    const-string v2, "facebook_schedule_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 227
    .local v24, fbEventId:Ljava/lang/String;
    if-nez v24, :cond_c7

    if-eqz v18, :cond_1f8

    const-string v2, "com.sec.android.app.snsaccountfacebook.account_type"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f8

    :cond_c7
    const/16 v29, 0x1

    .line 231
    .local v29, isFacebook:Z
    :goto_c9
    const/4 v2, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 232
    .local v17, color:I
    if-nez v17, :cond_d5

    .line 233
    const v17, -0x222223

    .line 238
    :cond_d5
    if-eqz v16, :cond_da

    .line 239
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setBackgroundColor(I)V

    .line 242
    :cond_da
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 243
    .local v37, titleString:Ljava/lang/String;
    if-eqz v37, :cond_e9

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_ef

    .line 244
    :cond_e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 320
    :cond_ef
    invoke-virtual/range {v36 .. v37}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    const/4 v2, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1fc

    const/4 v15, 0x1

    .line 325
    .local v15, allDay:Z
    :goto_fc
    if-eqz v15, :cond_1ff

    .line 326
    const/16 v2, 0x8

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    :goto_105
    const/16 v27, 0x0

    .line 372
    .local v27, hasPhoto:Z
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 374
    .local v22, eventId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 376
    .local v8, cr:Landroid/content/ContentResolver;
    if-lez v19, :cond_253

    .line 377
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v19

    int-to-long v9, v0

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    .line 378
    .local v38, uri:Landroid/net/Uri;
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter;->mImageLoader:Lcom/android/calendar/ImageLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AgendaAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v28

    iget-object v9, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v28

    iget-object v10, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photoContainer:Landroid/view/View;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0, v3, v9, v10}, Lcom/android/calendar/ImageLoader;->DisplayImage(Landroid/net/Uri;Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;)Z

    move-result v27

    .line 420
    .end local v38           #uri:Landroid/net/Uri;
    :cond_144
    :goto_144
    const v2, 0x7f0f0095

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v27, :cond_2b3

    const/4 v2, 0x0

    :goto_150
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 421
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    if-eqz v27, :cond_2b7

    const/4 v2, 0x0

    :goto_15a
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    const v2, 0x7f0f0097

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 428
    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 429
    .local v34, rrule:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2bb

    const/16 v26, 0x1

    .line 431
    .local v26, hasAlarm:Z
    :goto_17d
    const v2, 0x7f0f0093

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v34, :cond_2bf

    if-eqz v26, :cond_2bf

    const/4 v2, 0x0

    :goto_18b
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 433
    const v2, 0x7f0f009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v34, :cond_19d

    if-nez v26, :cond_19d

    if-eqz v29, :cond_2c3

    :cond_19d
    const/4 v2, 0x0

    :goto_19e
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 435
    const v2, 0x7f0f007e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 436
    .local v33, reminder:Landroid/view/View;
    if-nez v34, :cond_1ae

    if-eqz v26, :cond_2c7

    :cond_1ae
    const/4 v2, 0x0

    :goto_1af
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 437
    if-eqz v34, :cond_2cb

    if-nez v26, :cond_2cb

    .line 438
    const v2, 0x7f020026

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 442
    :goto_1c0
    const v2, 0x7f0f0016

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v29, :cond_2d5

    const/4 v2, 0x0

    :goto_1cc
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    .line 447
    .local v14, action:Ljava/lang/String;
    if-eqz v14, :cond_1e5

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d9

    :cond_1e5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/android/calendar/AgendaDeleteActivity;

    if-nez v2, :cond_2d9

    .line 453
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_8e

    .line 227
    .end local v8           #cr:Landroid/content/ContentResolver;
    .end local v14           #action:Ljava/lang/String;
    .end local v15           #allDay:Z
    .end local v17           #color:I
    .end local v22           #eventId:Ljava/lang/Long;
    .end local v26           #hasAlarm:Z
    .end local v27           #hasPhoto:Z
    .end local v29           #isFacebook:Z
    .end local v33           #reminder:Landroid/view/View;
    .end local v34           #rrule:Ljava/lang/String;
    .end local v37           #titleString:Ljava/lang/String;
    :cond_1f8
    const/16 v29, 0x0

    goto/16 :goto_c9

    .line 324
    .restart local v17       #color:I
    .restart local v29       #isFacebook:Z
    .restart local v37       #titleString:Ljava/lang/String;
    :cond_1fc
    const/4 v15, 0x0

    goto/16 :goto_fc

    .line 328
    .restart local v15       #allDay:Z
    :cond_1ff
    const/4 v2, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 329
    .local v4, begin:J
    const/16 v2, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 332
    .local v6, end:J
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-nez v2, :cond_230

    .line 333
    const/16 v2, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 334
    .local v20, duration:Ljava/lang/String;
    if-eqz v20, :cond_24f

    .line 335
    new-instance v30, Lcom/android/calendar/vcal/pim/vcalendar/Duration;

    invoke-direct/range {v30 .. v30}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;-><init>()V

    .line 337
    .local v30, parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :try_start_223
    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_22a
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_223 .. :try_end_22a} :catch_24a

    .line 342
    :goto_22a
    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->addTo(J)J

    move-result-wide v6

    .line 363
    .end local v20           #duration:Ljava/lang/String;
    .end local v30           #parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :cond_230
    :goto_230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v8, 0x0

    if-eqz v24, :cond_251

    const/4 v9, 0x1

    :goto_239
    invoke-static/range {v2 .. v9}, Lcom/android/calendar/Utils;->formatDateTimeString(Landroid/content/Context;ZJJZZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_105

    .line 338
    .restart local v20       #duration:Ljava/lang/String;
    .restart local v30       #parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :catch_24a
    move-exception v21

    .line 340
    .local v21, e:Lcom/android/calendar/vcal/pim/vcalendar/DateException;
    invoke-virtual/range {v21 .. v21}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;->printStackTrace()V

    goto :goto_22a

    .line 344
    .end local v21           #e:Lcom/android/calendar/vcal/pim/vcalendar/DateException;
    .end local v30           #parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :cond_24f
    move-wide v6, v4

    goto :goto_230

    .line 363
    .end local v20           #duration:Ljava/lang/String;
    :cond_251
    const/4 v9, 0x0

    goto :goto_239

    .line 401
    .end local v4           #begin:J
    .end local v6           #end:J
    .restart local v8       #cr:Landroid/content/ContentResolver;
    .restart local v22       #eventId:Ljava/lang/Long;
    .restart local v27       #hasPhoto:Z
    :cond_253
    if-eqz v29, :cond_144

    .line 402
    const-string v2, "facebook_schedule_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 403
    .local v25, fbPhotoUrl:Ljava/lang/String;
    if-eqz v25, :cond_144

    .line 404
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

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 407
    .local v23, fbCursor:Landroid/database/Cursor;
    if-eqz v23, :cond_144

    .line 408
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2ae

    .line 409
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    .line 410
    .local v32, photoBlob:[B
    const/4 v2, 0x0

    move-object/from16 v0, v32

    array-length v3, v0

    move-object/from16 v0, v32

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 412
    .local v31, photo:Landroid/graphics/Bitmap;
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 413
    const/16 v27, 0x1

    .line 415
    .end local v31           #photo:Landroid/graphics/Bitmap;
    .end local v32           #photoBlob:[B
    :cond_2ae
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_144

    .line 420
    .end local v23           #fbCursor:Landroid/database/Cursor;
    .end local v25           #fbPhotoUrl:Ljava/lang/String;
    :cond_2b3
    const/16 v2, 0x8

    goto/16 :goto_150

    .line 421
    :cond_2b7
    const/16 v2, 0x8

    goto/16 :goto_15a

    .line 429
    .restart local v34       #rrule:Ljava/lang/String;
    :cond_2bb
    const/16 v26, 0x0

    goto/16 :goto_17d

    .line 431
    .restart local v26       #hasAlarm:Z
    :cond_2bf
    const/16 v2, 0x8

    goto/16 :goto_18b

    .line 433
    :cond_2c3
    const/16 v2, 0x8

    goto/16 :goto_19e

    .line 436
    .restart local v33       #reminder:Landroid/view/View;
    :cond_2c7
    const/16 v2, 0x8

    goto/16 :goto_1af

    .line 440
    :cond_2cb
    const v2, 0x7f02001e

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1c0

    .line 442
    :cond_2d5
    const/16 v2, 0x8

    goto/16 :goto_1cc

    .line 451
    .restart local v14       #action:Ljava/lang/String;
    :cond_2d9
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/calendar/AgendaAdapter$ViewHolder;->check:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_8e
.end method
