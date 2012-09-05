.class public Lcom/android/calendar/VCalListActivity;
.super Landroid/app/Activity;
.source "VCalListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/VCalListActivity$ICSEventAdapter;,
        Lcom/android/calendar/VCalListActivity$VCSEventAdapter;,
        Lcom/android/calendar/VCalListActivity$ImportVCalTask;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCalendar:Lcom/android/calendarcommon/ICalendar$Component;

.field private mCalendarType:I

.field private mContent:Landroid/net/Uri;

.field private mContentValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Ljava/lang/String;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendarcommon/ICalendar$Component;",
            ">;"
        }
    .end annotation
.end field

.field private mVCalManager:Lcom/android/calendar/vcal/VCalManager;

.field private mVcalList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 129
    const-string v0, "VCalListActivity"

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity;->TAG:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/android/calendar/VCalListActivity;->mCalendar:Lcom/android/calendarcommon/ICalendar$Component;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity;->mEvents:Ljava/util/ArrayList;

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/VCalListActivity;->mCalendarType:I

    .line 170
    iput-object v1, p0, Lcom/android/calendar/VCalListActivity;->mContent:Landroid/net/Uri;

    .line 1182
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/VCalListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget v0, p0, Lcom/android/calendar/VCalListActivity;->mCalendarType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/VCalListActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/VCalListActivity;->mContentValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/VCalListActivity;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/VCalListActivity;->mContent:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/VCalListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/calendar/VCalListActivity;->importCalendar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/VCalListActivity;)Lcom/android/calendar/vcal/VCalManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/VCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/VCalListActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/calendar/VCalListActivity;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method private importCalendar()Ljava/lang/String;
    .registers 12

    .prologue
    const v10, 0x7f0a00c6

    const v9, 0x7f0a00c5

    .line 720
    const/4 v7, 0x0

    .line 724
    .local v7, importString:Ljava/lang/String;
    iget v2, p0, Lcom/android/calendar/VCalListActivity;->mCalendarType:I

    if-nez v2, :cond_25

    .line 728
    iget-object v2, p0, Lcom/android/calendar/VCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    invoke-virtual {v2}, Lcom/android/calendar/vcal/VCalManager;->save()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 730
    invoke-virtual {p0}, Lcom/android/calendar/VCalListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 794
    :goto_1b
    return-object v7

    .line 734
    :cond_1c
    invoke-virtual {p0}, Lcom/android/calendar/VCalListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1b

    .line 742
    :cond_25
    invoke-virtual {p0}, Lcom/android/calendar/VCalListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 746
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 748
    .local v8, numImported:I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 752
    .local v5, values:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/calendar/VCalListActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendarcommon/ICalendar$Component;

    .line 756
    .local v1, component:Lcom/android/calendarcommon/ICalendar$Component;
    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->insertVEvent(Landroid/content/ContentResolver;Lcom/android/calendarcommon/ICalendar$Component;JILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 758
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 764
    .end local v1           #component:Lcom/android/calendarcommon/ICalendar$Component;
    :cond_4d
    if-lez v8, :cond_58

    .line 774
    invoke-virtual {p0}, Lcom/android/calendar/VCalListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1b

    .line 782
    :cond_58
    invoke-virtual {p0}, Lcom/android/calendar/VCalListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1b
.end method

.method private isVersion20(Ljava/lang/String;)Z
    .registers 9
    .parameter "vcalStr"

    .prologue
    const/4 v4, 0x0

    .line 176
    const-string v5, "\nVERSION:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 178
    .local v2, versionIdx:I
    const-string v1, "vcalendar1.0"

    .line 180
    .local v1, version:Ljava/lang/String;
    const/4 v5, -0x1

    if-eq v2, v5, :cond_22

    .line 183
    :try_start_c
    const-string v5, "\n"

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, versionStr:Ljava/lang/String;
    const-string v5, "2.0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_22

    .line 185
    const-string v1, "vcalendar2.0"
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_22} :catch_2c

    .line 192
    .end local v3           #versionStr:Ljava/lang/String;
    :cond_22
    const-string v5, "vcalendar2.0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 194
    const/4 v4, 0x1

    .line 196
    :cond_2b
    :goto_2b
    return v4

    .line 187
    :catch_2c
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/Exception;
    goto :goto_2b
.end method

.method private parseICalendar(Ljava/lang/String;)Z
    .registers 16
    .parameter "data"

    .prologue
    const v13, 0x7f0a00c4

    const/4 v10, 0x0

    .line 558
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/calendar/VCalListActivity;->mCalendar:Lcom/android/calendarcommon/ICalendar$Component;

    .line 562
    :try_start_7
    invoke-static {p1}, Lcom/android/calendarcommon/ICalendar;->parseCalendar(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;

    move-result-object v11

    iput-object v11, p0, Lcom/android/calendar/VCalListActivity;->mCalendar:Lcom/android/calendarcommon/ICalendar$Component;
    :try_end_d
    .catch Lcom/android/calendarcommon/ICalendar$FormatException; {:try_start_7 .. :try_end_d} :catch_1d

    .line 580
    iget-object v11, p0, Lcom/android/calendar/VCalListActivity;->mCalendar:Lcom/android/calendarcommon/ICalendar$Component;

    invoke-virtual {v11}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_26

    .line 582
    invoke-static {p0, v13, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 712
    :goto_1c
    return v10

    .line 564
    :catch_1d
    move-exception v6

    .line 568
    .local v6, fe:Lcom/android/calendarcommon/ICalendar$FormatException;
    invoke-static {p0, v13, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_1c

    .line 592
    .end local v6           #fe:Lcom/android/calendarcommon/ICalendar$FormatException;
    :cond_26
    iget-object v11, p0, Lcom/android/calendar/VCalListActivity;->mCalendar:Lcom/android/calendarcommon/ICalendar$Component;

    invoke-virtual {v11}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_30
    :goto_30
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_96

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendarcommon/ICalendar$Component;

    .line 594
    .local v5, event:Lcom/android/calendarcommon/ICalendar$Component;
    const-string v11, "VEVENT"

    invoke-virtual {v5}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_30

    .line 596
    new-instance v8, Landroid/text/format/Time;

    const-string v11, "UTC"

    invoke-direct {v8, v11}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 598
    .local v8, time:Landroid/text/format/Time;
    const/4 v2, 0x0

    .line 600
    .local v2, dtstart:Ljava/lang/String;
    const/4 v0, 0x0

    .line 602
    .local v0, dtend:Ljava/lang/String;
    const-string v11, "DTSTART"

    invoke-virtual {v5, v11}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v3

    .line 606
    .local v3, dtstartProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v3, :cond_30

    .line 608
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 610
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_77

    .line 612
    const-string v11, "TZID"

    invoke-virtual {v3, v11}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v9

    .line 614
    .local v9, tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-eqz v9, :cond_74

    iget-object v11, v9, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    if-eqz v11, :cond_74

    .line 616
    iget-object v11, v9, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 622
    :cond_74
    :try_start_74
    invoke-virtual {v8, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_92

    .line 646
    .end local v9           #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_77
    const-string v11, "DTEND"

    invoke-virtual {v5, v11}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v1

    .line 648
    .local v1, dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v1, :cond_30

    .line 650
    invoke-virtual {v1}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 652
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8c

    .line 660
    :try_start_89
    invoke-virtual {v8, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_94

    .line 692
    :cond_8c
    iget-object v11, p0, Lcom/android/calendar/VCalListActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 624
    .end local v1           #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    .restart local v9       #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    :catch_92
    move-exception v4

    .line 638
    .local v4, e:Ljava/lang/Exception;
    goto :goto_30

    .line 662
    .end local v4           #e:Ljava/lang/Exception;
    .end local v9           #tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    .restart local v1       #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    :catch_94
    move-exception v4

    .line 676
    .restart local v4       #e:Ljava/lang/Exception;
    goto :goto_30

    .line 700
    .end local v0           #dtend:Ljava/lang/String;
    .end local v1           #dtendProp:Lcom/android/calendarcommon/ICalendar$Property;
    .end local v2           #dtstart:Ljava/lang/String;
    .end local v3           #dtstartProp:Lcom/android/calendarcommon/ICalendar$Property;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #event:Lcom/android/calendarcommon/ICalendar$Component;
    .end local v8           #time:Landroid/text/format/Time;
    :cond_96
    iget-object v11, p0, Lcom/android/calendar/VCalListActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gtz v11, :cond_a7

    .line 702
    invoke-static {p0, v13, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1c

    .line 712
    :cond_a7
    const/4 v10, 0x1

    goto/16 :goto_1c
.end method

.method private parseVCalendar(Ljava/lang/String;)Z
    .registers 3
    .parameter "data"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/calendar/VCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    invoke-virtual {v0, p1}, Lcom/android/calendar/vcal/VCalManager;->parseVCalendar(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity;->mContentValues:Ljava/util/ArrayList;

    .line 520
    iget-object v0, p0, Lcom/android/calendar/VCalListActivity;->mContentValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 29
    .parameter "savedInstanceState"

    .prologue
    .line 205
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 211
    .local v15, intent:Landroid/content/Intent;
    const-string v23, "ics"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/VCalListActivity;->mData:Ljava/lang/String;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mData:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_7f

    .line 215
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 217
    .local v8, content:Landroid/net/Uri;
    if-nez v8, :cond_31

    .line 219
    const-string v23, "android.intent.extra.STREAM"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #content:Landroid/net/Uri;
    check-cast v8, Landroid/net/Uri;

    .line 225
    .restart local v8       #content:Landroid/net/Uri;
    :cond_31
    if-eqz v8, :cond_7f

    .line 228
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/calendar/VCalListActivity;->mContent:Landroid/net/Uri;

    .line 230
    const/16 v18, 0x0

    .line 234
    .local v18, is:Ljava/io/InputStream;
    :try_start_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    .line 236
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 240
    .local v3, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->available()I

    move-result v19

    .line 242
    .local v19, length:I
    if-lez v19, :cond_7a

    .line 244
    move/from16 v0, v19

    new-array v4, v0, [B

    .line 246
    .local v4, buf:[B
    const/4 v5, -0x1

    .line 248
    .local v5, bytesRead:I
    const/16 v21, 0x0

    .line 250
    .local v21, pos:I
    :goto_55
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_69

    .line 252
    move/from16 v0, v21

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 254
    add-int v21, v21, v5

    goto :goto_55

    .line 258
    :cond_69
    new-instance v23, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    const-string v25, "UTF-8"

    invoke-direct/range {v23 .. v25}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/VCalListActivity;->mData:Ljava/lang/String;
    :try_end_7a
    .catchall {:try_start_39 .. :try_end_7a} :catchall_de
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_7a} :catch_a2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_39 .. :try_end_7a} :catch_b1
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_7a} :catch_c0
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_7a} :catch_cf

    .line 282
    .end local v4           #buf:[B
    .end local v5           #bytesRead:I
    .end local v21           #pos:I
    :cond_7a
    if-eqz v18, :cond_7f

    .line 286
    :try_start_7c
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_9d

    .line 304
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #content:Landroid/net/Uri;
    .end local v18           #is:Ljava/io/InputStream;
    .end local v19           #length:I
    :cond_7f
    :goto_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mData:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_ea

    .line 306
    const v23, 0x7f0a00c4

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalListActivity;->finish()V

    .line 510
    :goto_9c
    return-void

    .line 288
    .restart local v3       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #content:Landroid/net/Uri;
    .restart local v18       #is:Ljava/io/InputStream;
    .restart local v19       #length:I
    :catch_9d
    move-exception v16

    .line 290
    .local v16, ioe:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7f

    .line 264
    .end local v3           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v16           #ioe:Ljava/io/IOException;
    .end local v19           #length:I
    :catch_a2
    move-exception v12

    .line 266
    .local v12, fnfe:Ljava/io/FileNotFoundException;
    :try_start_a3
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_de

    .line 282
    if-eqz v18, :cond_7f

    .line 286
    :try_start_a8
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_7f

    .line 288
    :catch_ac
    move-exception v16

    .line 290
    .restart local v16       #ioe:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7f

    .line 268
    .end local v12           #fnfe:Ljava/io/FileNotFoundException;
    .end local v16           #ioe:Ljava/io/IOException;
    :catch_b1
    move-exception v17

    .line 270
    .local v17, ioobe:Ljava/lang/IndexOutOfBoundsException;
    :try_start_b2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_de

    .line 282
    if-eqz v18, :cond_7f

    .line 286
    :try_start_b7
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_7f

    .line 288
    :catch_bb
    move-exception v16

    .line 290
    .restart local v16       #ioe:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7f

    .line 272
    .end local v16           #ioe:Ljava/io/IOException;
    .end local v17           #ioobe:Ljava/lang/IndexOutOfBoundsException;
    :catch_c0
    move-exception v16

    .line 274
    .restart local v16       #ioe:Ljava/io/IOException;
    :try_start_c1
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_de

    .line 282
    if-eqz v18, :cond_7f

    .line 286
    :try_start_c6
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ca

    goto :goto_7f

    .line 288
    :catch_ca
    move-exception v16

    .line 290
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7f

    .line 276
    .end local v16           #ioe:Ljava/io/IOException;
    :catch_cf
    move-exception v9

    .line 278
    .local v9, e:Ljava/lang/Exception;
    :try_start_d0
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_de

    .line 282
    if-eqz v18, :cond_7f

    .line 286
    :try_start_d5
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_d9

    goto :goto_7f

    .line 288
    :catch_d9
    move-exception v16

    .line 290
    .restart local v16       #ioe:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7f

    .line 282
    .end local v9           #e:Ljava/lang/Exception;
    .end local v16           #ioe:Ljava/io/IOException;
    :catchall_de
    move-exception v23

    if-eqz v18, :cond_e4

    .line 286
    :try_start_e1
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_e5

    .line 292
    :cond_e4
    :goto_e4
    throw v23

    .line 288
    :catch_e5
    move-exception v16

    .line 290
    .restart local v16       #ioe:Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e4

    .line 316
    .end local v8           #content:Landroid/net/Uri;
    .end local v16           #ioe:Ljava/io/IOException;
    .end local v18           #is:Ljava/io/InputStream;
    :cond_ea
    new-instance v23, Lcom/android/calendar/vcal/VCalManager;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/vcal/VCalManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/VCalListActivity;->mVCalManager:Lcom/android/calendar/vcal/VCalManager;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mData:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity;->parseVCalendar(Ljava/lang/String;)Z

    move-result v22

    .line 320
    .local v22, valid:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mData:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity;->isVersion20(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_156

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mData:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity;->parseICalendar(Ljava/lang/String;)Z

    move-result v22

    .line 324
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/VCalListActivity;->mCalendarType:I

    .line 332
    :goto_12d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->TAG:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "calendar type = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/VCalListActivity;->mCalendarType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-nez v22, :cond_15f

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalListActivity;->finish()V

    goto/16 :goto_9c

    .line 328
    :cond_156
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/VCalListActivity;->mCalendarType:I

    goto :goto_12d

    .line 346
    :cond_15f
    if-nez p1, :cond_1d4

    sget-boolean v23, Lcom/android/calendar/Utils;->CHECK_ACCOUNT:Z

    if-eqz v23, :cond_1d4

    .line 348
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v23

    const-string v24, "com.google"

    invoke-virtual/range {v23 .. v24}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v13

    .line 350
    .local v13, googleAccounts:[Landroid/accounts/Account;
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v23

    const-string v24, "com.android.exchange"

    invoke-virtual/range {v23 .. v24}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    .line 354
    .local v10, exchangeAccounts:[Landroid/accounts/Account;
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v23

    const-string v24, "com.sec.android.app.snsaccountfacebook.account_type"

    invoke-virtual/range {v23 .. v24}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v11

    .line 358
    .local v11, facebookAccounts:[Landroid/accounts/Account;
    array-length v0, v13

    move/from16 v23, v0

    array-length v0, v10

    move/from16 v24, v0

    add-int v23, v23, v24

    array-length v0, v11

    move/from16 v24, v0

    add-int v6, v23, v24

    .line 362
    .local v6, calendarAccountSum:I
    if-nez v6, :cond_1d4

    .line 376
    new-instance v20, Landroid/content/Intent;

    const-string v23, "android.settings.ADD_ACCOUNT_SETTINGS"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v20, loginIntent:Landroid/content/Intent;
    const/high16 v23, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 380
    const-string v23, "authorities"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, "com.android.calendar"

    aput-object v26, v24, v25

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/calendar/VCalListActivity;->startActivity(Landroid/content/Intent;)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/VCalListActivity;->finish()V

    .line 394
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/calendar/VCalListActivity;->requestWindowFeature(I)Z

    goto/16 :goto_9c

    .line 404
    .end local v6           #calendarAccountSum:I
    .end local v10           #exchangeAccounts:[Landroid/accounts/Account;
    .end local v11           #facebookAccounts:[Landroid/accounts/Account;
    .end local v13           #googleAccounts:[Landroid/accounts/Account;
    .end local v20           #loginIntent:Landroid/content/Intent;
    :cond_1d4
    const v23, 0x7f03003a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/calendar/VCalListActivity;->setContentView(I)V

    .line 408
    const v23, 0x7f0f00d4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/calendar/VCalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ListView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/VCalListActivity;->mVcalList:Landroid/widget/ListView;

    .line 410
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/VCalListActivity;->mCalendarType:I

    move/from16 v23, v0

    if-nez v23, :cond_267

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mVcalList:Landroid/widget/ListView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/VCalListActivity$VCSEventAdapter;-><init>(Lcom/android/calendar/VCalListActivity;Landroid/content/Context;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mVcalList:Landroid/widget/ListView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/calendar/VCalListActivity$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity$1;-><init>(Lcom/android/calendar/VCalListActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 478
    :goto_21f
    const v23, 0x7f0f00c9

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/calendar/VCalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 480
    .local v14, importButton:Landroid/widget/Button;
    const v23, 0x7f0a0058

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setText(I)V

    .line 482
    new-instance v23, Lcom/android/calendar/VCalListActivity$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity$3;-><init>(Lcom/android/calendar/VCalListActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    const v23, 0x7f0f00ca

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/calendar/VCalListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 498
    .local v7, cancelButton:Landroid/widget/Button;
    const v23, 0x7f0a0087

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setText(I)V

    .line 500
    new-instance v23, Lcom/android/calendar/VCalListActivity$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity$4;-><init>(Lcom/android/calendar/VCalListActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9c

    .line 444
    .end local v7           #cancelButton:Landroid/widget/Button;
    .end local v14           #importButton:Landroid/widget/Button;
    :cond_267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mVcalList:Landroid/widget/ListView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/VCalListActivity$ICSEventAdapter;-><init>(Lcom/android/calendar/VCalListActivity;Landroid/content/Context;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/VCalListActivity;->mVcalList:Landroid/widget/ListView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/calendar/VCalListActivity$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/VCalListActivity$2;-><init>(Lcom/android/calendar/VCalListActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_21f
.end method
