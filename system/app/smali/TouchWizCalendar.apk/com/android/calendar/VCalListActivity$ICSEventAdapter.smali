.class Lcom/android/calendar/VCalListActivity$ICSEventAdapter;
.super Landroid/widget/BaseAdapter;
.source "VCalListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/VCalListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ICSEventAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mFormatter:Ljava/util/Formatter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNoTitleLabel:Ljava/lang/String;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/calendar/VCalListActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/VCalListActivity;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1234
    iput-object p2, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mContext:Landroid/content/Context;

    .line 1236
    iget-object v0, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1238
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mNoTitleLabel:Ljava/lang/String;

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1242
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mFormatter:Ljava/util/Formatter;

    .line 1244
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->this$0:Lcom/android/calendar/VCalListActivity;

    #getter for: Lcom/android/calendar/VCalListActivity;->mEvents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/calendar/VCalListActivity;->access$500(Lcom/android/calendar/VCalListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 1258
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 1266
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 31
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1276
    const/16 v25, 0x0

    .line 1278
    .local v25, view:Landroid/view/View;
    const/16 v17, 0x0

    .line 1282
    .local v17, holder:Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;
    if-eqz p2, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1288
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    .line 1290
    .local v19, tag:Ljava/lang/Object;
    move-object/from16 v0, v19

    instance-of v2, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;

    if-eqz v2, :cond_1c

    .line 1292
    move-object/from16 v25, p2

    move-object/from16 v17, v19

    .line 1294
    check-cast v17, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;

    .line 1302
    .end local v19           #tag:Ljava/lang/Object;
    :cond_1c
    if-nez v17, :cond_76

    .line 1308
    new-instance v17, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;

    .end local v17           #holder:Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;-><init>(Lcom/android/calendar/VCalListActivity$ICSEventAdapter;)V

    .line 1310
    .restart local v17       #holder:Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030020

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    .line 1314
    const v2, 0x7f0f0013

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 1316
    const v2, 0x7f0f0099

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;->when:Landroid/widget/TextView;

    .line 1318
    const v2, 0x7f0f0015

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;->calendar:Landroid/view/View;

    .line 1320
    const v2, 0x7f0f0096

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 1324
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1330
    :cond_76
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v20, v0

    .line 1332
    .local v20, title:Landroid/widget/TextView;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v26, v0

    .line 1334
    .local v26, when:Landroid/widget/TextView;
    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter$ViewHolder;->calendar:Landroid/view/View;

    .line 1338
    .local v10, calendar:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->this$0:Lcom/android/calendar/VCalListActivity;

    #getter for: Lcom/android/calendar/VCalListActivity;->mEvents:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/calendar/VCalListActivity;->access$500(Lcom/android/calendar/VCalListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/calendarcommon/ICalendar$Component;

    .line 1344
    .local v16, event:Lcom/android/calendarcommon/ICalendar$Component;
    const v2, -0xfb4a01

    invoke-virtual {v10, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1350
    const-string v2, "SUMMARY"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v21

    .line 1352
    .local v21, titleProp:Lcom/android/calendarcommon/ICalendar$Property;
    const/16 v22, 0x0

    .line 1354
    .local v22, titleString:Ljava/lang/String;
    if-eqz v21, :cond_ac

    .line 1358
    invoke-static/range {v21 .. v21}, Lcom/android/calendar/Utils;->decodePropertyValue(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v22

    .line 1362
    :cond_ac
    if-eqz v22, :cond_b4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_ba

    .line 1364
    :cond_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1368
    :cond_ba
    const-string v2, "=0D"

    const-string v8, "\r"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, "=0A"

    const-string v9, "\n"

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1370
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1380
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 1382
    .local v18, startTime:Landroid/text/format/Time;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 1384
    .local v15, endTime:Landroid/text/format/Time;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1386
    .local v23, tz:Ljava/lang/String;
    const-string v2, "UTC"

    move-object/from16 v0, v18

    iput-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1388
    const-string v2, "UTC"

    iput-object v2, v15, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1390
    const/4 v13, 0x0

    .line 1392
    .local v13, dtstart:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1394
    .local v11, dtend:Ljava/lang/String;
    const-string v2, "DTSTART"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v14

    .line 1398
    .local v14, dtstartProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v14, :cond_154

    .line 1400
    invoke-virtual {v14}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 1402
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_131

    .line 1404
    const-string v2, "TZID"

    invoke-virtual {v14, v2}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v24

    .line 1406
    .local v24, tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-eqz v24, :cond_11a

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    if-eqz v2, :cond_11a

    .line 1408
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1428
    :cond_11a
    :try_start_11a
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1430
    move-object/from16 v0, v18

    iget-boolean v2, v0, Landroid/text/format/Time;->allDay:Z

    if-eqz v2, :cond_131

    .line 1432
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1434
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_131} :catch_1d7

    .line 1452
    .end local v24           #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_131
    :goto_131
    const-string v2, "DTEND"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v12

    .line 1454
    .local v12, dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v12, :cond_154

    .line 1456
    invoke-virtual {v12}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 1458
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_154

    .line 1466
    :try_start_145
    invoke-virtual {v15, v11}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1468
    iget-boolean v2, v15, Landroid/text/format/Time;->allDay:Z

    if-eqz v2, :cond_154

    .line 1470
    move-object/from16 v0, v23

    iput-object v0, v15, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1472
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/text/format/Time;->normalize(Z)J
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_154} :catch_1d4

    .line 1494
    .end local v12           #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    :cond_154
    :goto_154
    move-object/from16 v0, v18

    iget-boolean v3, v0, Landroid/text/format/Time;->allDay:Z

    .line 1496
    .local v3, allDay:Z
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 1498
    .local v4, begin:J
    if-eqz v3, :cond_173

    .line 1500
    iget v2, v15, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_173

    iget v2, v15, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_173

    .line 1502
    iget v2, v15, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v15, Landroid/text/format/Time;->monthDay:I

    .line 1504
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1510
    :cond_173
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 1514
    .local v6, end:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/calendar/Utils;->formatDateTimeString(Landroid/content/Context;ZJJZZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1516
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1520
    const v2, 0x7f0f0095

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1522
    const v2, 0x7f0f0093

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1524
    const v2, 0x7f0f009a

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1526
    const v2, 0x7f0f007e

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1528
    const v2, 0x7f0f0016

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1532
    return-object v25

    .line 1476
    .end local v3           #allDay:Z
    .end local v4           #begin:J
    .end local v6           #end:J
    .restart local v12       #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    :catch_1d4
    move-exception v2

    goto/16 :goto_154

    .line 1438
    .end local v12           #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    .restart local v24       #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    :catch_1d7
    move-exception v2

    goto/16 :goto_131
.end method
