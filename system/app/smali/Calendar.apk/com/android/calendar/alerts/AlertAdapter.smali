.class public Lcom/android/calendar/alerts/AlertAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AlertAdapter.java"


# static fields
.field private static mFirstTime:Z

.field private static mOtherColor:I

.field private static mPastEventColor:I

.field private static mTitleColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/alerts/AlertAdapter;->mFirstTime:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 45
    return-void
.end method

.method public static updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .registers 26
    .parameter "context"
    .parameter "view"
    .parameter "eventName"
    .parameter "location"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "allDay"

    .prologue
    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 84
    .local v9, res:Landroid/content/res/Resources;
    const v2, 0x7f10001c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 85
    .local v12, titleView:Landroid/widget/TextView;
    const v2, 0x7f100013

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 86
    .local v15, whenView:Landroid/widget/TextView;
    const v2, 0x7f100014

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 87
    .local v16, whereView:Landroid/widget/TextView;
    sget-boolean v2, Lcom/android/calendar/alerts/AlertAdapter;->mFirstTime:Z

    if-eqz v2, :cond_47

    .line 88
    const v2, 0x7f08004a

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/calendar/alerts/AlertAdapter;->mPastEventColor:I

    .line 89
    const v2, 0x7f080048

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/calendar/alerts/AlertAdapter;->mTitleColor:I

    .line 90
    const v2, 0x7f080049

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sput v2, Lcom/android/calendar/alerts/AlertAdapter;->mOtherColor:I

    .line 91
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/calendar/alerts/AlertAdapter;->mFirstTime:Z

    .line 94
    :cond_47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, p6, v2

    if-gez v2, :cond_dc

    .line 95
    sget v2, Lcom/android/calendar/alerts/AlertAdapter;->mPastEventColor:I

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    sget v2, Lcom/android/calendar/alerts/AlertAdapter;->mPastEventColor:I

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    sget v2, Lcom/android/calendar/alerts/AlertAdapter;->mPastEventColor:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    :goto_60
    if-eqz p2, :cond_68

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6f

    .line 106
    :cond_68
    const v2, 0x7f0c0007

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 108
    :cond_6f
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v13

    .line 114
    .local v13, tz:Ljava/lang/String;
    if-eqz p8, :cond_ef

    .line 115
    const/16 v7, 0x2012

    .line 117
    .local v7, flags:I
    const-string v13, "UTC"

    .line 121
    :goto_81
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 122
    or-int/lit16 v7, v7, 0x80

    .line 125
    :cond_89
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 126
    .local v11, time:Landroid/text/format/Time;
    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 127
    iget v2, v11, Landroid/text/format/Time;->isDst:I

    if-eqz v2, :cond_f2

    const/4 v8, 0x1

    .line 128
    .local v8, isDST:Z
    :goto_98
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .local v10, sb:Ljava/lang/StringBuilder;
    if-nez p8, :cond_c5

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    if-eq v13, v2, :cond_c5

    .line 131
    const-string v2, " "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v8, v4, v5}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_c5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 136
    .local v14, when:Ljava/lang/String;
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    if-eqz p3, :cond_d4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f4

    .line 140
    :cond_d4
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :goto_db
    return-void

    .line 99
    .end local v7           #flags:I
    .end local v8           #isDST:Z
    .end local v10           #sb:Ljava/lang/StringBuilder;
    .end local v11           #time:Landroid/text/format/Time;
    .end local v13           #tz:Ljava/lang/String;
    .end local v14           #when:Ljava/lang/String;
    :cond_dc
    sget v2, Lcom/android/calendar/alerts/AlertAdapter;->mTitleColor:I

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    sget v2, Lcom/android/calendar/alerts/AlertAdapter;->mOtherColor:I

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    sget v2, Lcom/android/calendar/alerts/AlertAdapter;->mOtherColor:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_60

    .line 119
    .restart local v13       #tz:Ljava/lang/String;
    :cond_ef
    const/16 v7, 0x11

    .restart local v7       #flags:I
    goto :goto_81

    .line 127
    .restart local v11       #time:Landroid/text/format/Time;
    :cond_f2
    const/4 v8, 0x0

    goto :goto_98

    .line 142
    .restart local v8       #isDST:Z
    .restart local v10       #sb:Ljava/lang/StringBuilder;
    .restart local v14       #when:Ljava/lang/String;
    :cond_f4
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_db
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 49
    const v1, 0x7f10001b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 50
    .local v13, square:Landroid/view/View;
    const/4 v1, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v10

    .line 51
    .local v10, color:I
    invoke-virtual {v13, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    const v1, 0x7f10001d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 55
    .local v11, repeatContainer:Landroid/view/View;
    const/16 v1, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 56
    .local v12, rrule:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :goto_2e
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, eventName:Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, location:Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 74
    .local v5, startMillis:J
    const/4 v1, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 75
    .local v7, endMillis:J
    const/4 v1, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_61

    const/4 v9, 0x1

    .local v9, allDay:Z
    :goto_54
    move-object/from16 v1, p2

    move-object v2, p1

    .line 77
    invoke-static/range {v1 .. v9}, Lcom/android/calendar/alerts/AlertAdapter;->updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 78
    return-void

    .line 59
    .end local v3           #eventName:Ljava/lang/String;
    .end local v4           #location:Ljava/lang/String;
    .end local v5           #startMillis:J
    .end local v7           #endMillis:J
    .end local v9           #allDay:Z
    :cond_5b
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2e

    .line 75
    .restart local v3       #eventName:Ljava/lang/String;
    .restart local v4       #location:Ljava/lang/String;
    .restart local v5       #startMillis:J
    .restart local v7       #endMillis:J
    :cond_61
    const/4 v9, 0x0

    goto :goto_54
.end method
