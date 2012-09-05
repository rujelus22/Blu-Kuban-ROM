.class public Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsFirstStartAnimationForDeleteCheckBox:Z

.field private mLayoutID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter "context"
    .parameter "layoutId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mIsFirstStartAnimationForDeleteCheckBox:Z

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    iput p2, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mLayoutID:I

    .line 56
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private isDaylightTime(Ljava/lang/String;)Z
    .registers 5
    .parameter "tzID"

    .prologue
    .line 277
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 278
    .local v1, tmpz:Ljava/util/TimeZone;
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 280
    .local v0, now:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 63
    .local v2, holder:Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;
    if-nez p2, :cond_2e

    .line 64
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v11, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mLayoutID:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance v2, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;

    .end local v2           #holder:Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;
    invoke-direct {v2, p0, p2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;-><init>(Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;Landroid/view/View;)V

    .line 66
    .restart local v2       #holder:Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_14
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 73
    .local v4, item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    if-eqz v4, :cond_2d

    .line 78
    const/4 v3, 0x0

    .line 81
    .local v3, isDST:Z
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getTopLabel()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mLayoutID:I

    sparse-switch v10, :sswitch_data_398

    .line 272
    .end local v3           #isDST:Z
    :cond_2d
    :goto_2d
    return-object p2

    .line 68
    .end local v4           #item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    :cond_2e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #holder:Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;
    check-cast v2, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;

    .restart local v2       #holder:Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;
    goto :goto_14

    .line 87
    .restart local v3       #isDST:Z
    .restart local v4       #item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    :sswitch_35
    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_12a

    .line 88
    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->isDaylightTime(Ljava/lang/String;)Z

    move-result v3

    .line 89
    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .line 96
    .local v9, tz:Ljava/util/TimeZone;
    :goto_4c
    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 98
    .local v0, calendar:Ljava/util/Calendar;
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 99
    .local v6, time:Landroid/text/format/Time;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, v6, Landroid/text/format/Time;->year:I

    .line 100
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, v6, Landroid/text/format/Time;->month:I

    .line 101
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, v6, Landroid/text/format/Time;->monthDay:I

    .line 102
    const/16 v10, 0xb

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, v6, Landroid/text/format/Time;->hour:I

    .line 103
    const/16 v10, 0xc

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, v6, Landroid/text/format/Time;->minute:I

    .line 104
    const/4 v10, 0x0

    iput v10, v6, Landroid/text/format/Time;->second:I

    .line 105
    iget v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mLayoutID:I

    const v11, 0x7f03003b

    if-ne v10, v11, :cond_148

    .line 106
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getDialogClock()Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setToNow(Landroid/text/format/Time;)V

    .line 109
    :goto_8b
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getDigitalClock()Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->setTime(Landroid/text/format/Time;)V

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_160

    .line 112
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v11

    const/16 v10, 0x9

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-nez v10, :cond_151

    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0b0094

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_bd
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_c0
    new-instance v7, Ljava/util/Date;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit16 v10, v10, -0x76c

    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-direct {v7, v10, v11, v12}, Ljava/util/Date;-><init>(III)V

    .line 128
    .local v7, timeZoneDate:Ljava/util/Date;
    const-string v10, "SPH-D710"

    const-string v11, "SGH-I927"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16a

    .line 129
    const-string v10, "E d MMM, yyyy"

    invoke-static {v10, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, dayValue:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .end local v1           #dayValue:Ljava/lang/String;
    :goto_f1
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getGap()Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 141
    const v5, 0x7f0202a2

    .line 143
    .local v5, resId:I
    const/4 v10, 0x1

    if-eq v3, v10, :cond_110

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_17f

    .line 144
    :cond_110
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getGap()Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 146
    const v5, 0x7f0202d8

    .line 152
    :cond_123
    :goto_123
    iget-object v10, v2, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2d

    .line 91
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v5           #resId:I
    .end local v6           #time:Landroid/text/format/Time;
    .end local v7           #timeZoneDate:Ljava/util/Date;
    .end local v9           #tz:Ljava/util/TimeZone;
    :cond_12a
    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 92
    .local v8, tmpz:Ljava/util/TimeZone;
    new-instance v9, Ljava/util/SimpleTimeZone;

    invoke-virtual {v8}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    const v11, 0x36ee80

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v12

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    const-string v11, "GMT"

    invoke-direct {v9, v10, v11}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .restart local v9       #tz:Ljava/util/TimeZone;
    goto/16 :goto_4c

    .line 108
    .end local v8           #tmpz:Ljava/util/TimeZone;
    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v6       #time:Landroid/text/format/Time;
    :cond_148
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getClock()Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setToNow(Landroid/text/format/Time;)V

    goto/16 :goto_8b

    .line 113
    :cond_151
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0b0095

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_bd

    .line 119
    :cond_160
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c0

    .line 133
    .restart local v7       #timeZoneDate:Ljava/util/Date;
    :cond_16a
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f1

    .line 147
    .restart local v5       #resId:I
    :cond_17f
    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_123

    .line 148
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getGap()Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 150
    const v5, 0x7f0202d9

    goto :goto_123

    .line 158
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v5           #resId:I
    .end local v6           #time:Landroid/text/format/Time;
    .end local v7           #timeZoneDate:Ljava/util/Date;
    .end local v9           #tz:Ljava/util/TimeZone;
    :sswitch_19a
    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_259

    .line 159
    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->isDaylightTime(Ljava/lang/String;)Z

    move-result v3

    .line 160
    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .line 167
    .restart local v9       #tz:Ljava/util/TimeZone;
    :goto_1b1
    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 169
    .restart local v0       #calendar:Ljava/util/Calendar;
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 170
    .restart local v6       #time:Landroid/text/format/Time;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, v6, Landroid/text/format/Time;->year:I

    .line 171
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, v6, Landroid/text/format/Time;->month:I

    .line 172
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, v6, Landroid/text/format/Time;->monthDay:I

    .line 173
    const/16 v10, 0xb

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, v6, Landroid/text/format/Time;->hour:I

    .line 174
    const/16 v10, 0xc

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, v6, Landroid/text/format/Time;->minute:I

    .line 175
    const/4 v10, 0x0

    iput v10, v6, Landroid/text/format/Time;->second:I

    .line 177
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getDigitalClock()Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->setTime(Landroid/text/format/Time;)V

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_285

    .line 180
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v11

    const/16 v10, 0x9

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-nez v10, :cond_277

    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0b0094

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_214
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :goto_217
    new-instance v7, Ljava/util/Date;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit16 v10, v10, -0x76c

    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-direct {v7, v10, v11, v12}, Ljava/util/Date;-><init>(III)V

    .line 195
    .restart local v7       #timeZoneDate:Ljava/util/Date;
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getCheckButton()Landroid/widget/CheckBox;

    move-result-object v10

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getSelected()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 200
    iget-boolean v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mIsFirstStartAnimationForDeleteCheckBox:Z

    if-eqz v10, :cond_2d

    .line 201
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getCheckButton()Landroid/widget/CheckBox;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_2d

    .line 162
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v6           #time:Landroid/text/format/Time;
    .end local v7           #timeZoneDate:Ljava/util/Date;
    .end local v9           #tz:Ljava/util/TimeZone;
    :cond_259
    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 163
    .restart local v8       #tmpz:Ljava/util/TimeZone;
    new-instance v9, Ljava/util/SimpleTimeZone;

    invoke-virtual {v8}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    const v11, 0x36ee80

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v12

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    const-string v11, "GMT"

    invoke-direct {v9, v10, v11}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .restart local v9       #tz:Ljava/util/TimeZone;
    goto/16 :goto_1b1

    .line 181
    .end local v8           #tmpz:Ljava/util/TimeZone;
    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v6       #time:Landroid/text/format/Time;
    :cond_277
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0b0095

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_214

    .line 187
    :cond_285
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_217

    .line 206
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v6           #time:Landroid/text/format/Time;
    .end local v9           #tz:Ljava/util/TimeZone;
    :sswitch_28e
    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_34a

    .line 207
    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->isDaylightTime(Ljava/lang/String;)Z

    move-result v3

    .line 208
    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .line 215
    .restart local v9       #tz:Ljava/util/TimeZone;
    :goto_2a5
    invoke-static {v9}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 217
    .restart local v0       #calendar:Ljava/util/Calendar;
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 218
    .restart local v6       #time:Landroid/text/format/Time;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, v6, Landroid/text/format/Time;->year:I

    .line 219
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, v6, Landroid/text/format/Time;->month:I

    .line 220
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, v6, Landroid/text/format/Time;->monthDay:I

    .line 221
    const/16 v10, 0xb

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, v6, Landroid/text/format/Time;->hour:I

    .line 222
    const/16 v10, 0xc

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, v6, Landroid/text/format/Time;->minute:I

    .line 223
    const/4 v10, 0x0

    iput v10, v6, Landroid/text/format/Time;->second:I

    .line 225
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getDigitalClock()Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->setTime(Landroid/text/format/Time;)V

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_376

    .line 228
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v11

    const/16 v10, 0x9

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-nez v10, :cond_368

    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0b0094

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_308
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :goto_30b
    new-instance v7, Ljava/util/Date;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit16 v10, v10, -0x76c

    const/4 v11, 0x2

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-direct {v7, v10, v11, v12}, Ljava/util/Date;-><init>(III)V

    .line 243
    .restart local v7       #timeZoneDate:Ljava/util/Date;
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const v5, 0x7f0202a2

    .line 247
    .restart local v5       #resId:I
    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_37f

    .line 248
    const v5, 0x7f0202a0

    .line 253
    :cond_341
    :goto_341
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2d

    .line 210
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v5           #resId:I
    .end local v6           #time:Landroid/text/format/Time;
    .end local v7           #timeZoneDate:Ljava/util/Date;
    .end local v9           #tz:Ljava/util/TimeZone;
    :cond_34a
    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 211
    .restart local v8       #tmpz:Ljava/util/TimeZone;
    new-instance v9, Ljava/util/SimpleTimeZone;

    invoke-virtual {v8}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    const v11, 0x36ee80

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v12

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    const-string v11, "GMT"

    invoke-direct {v9, v10, v11}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .restart local v9       #tz:Ljava/util/TimeZone;
    goto/16 :goto_2a5

    .line 229
    .end local v8           #tmpz:Ljava/util/TimeZone;
    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v6       #time:Landroid/text/format/Time;
    :cond_368
    iget-object v10, p0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0b0095

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_308

    .line 235
    :cond_376
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_30b

    .line 249
    .restart local v5       #resId:I
    .restart local v7       #timeZoneDate:Ljava/util/Date;
    :cond_37f
    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_341

    .line 250
    const v5, 0x7f0202a1

    goto :goto_341

    .line 259
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v5           #resId:I
    .end local v6           #time:Landroid/text/format/Time;
    .end local v7           #timeZoneDate:Ljava/util/Date;
    .end local v9           #tz:Ljava/util/TimeZone;
    :sswitch_38a
    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter$ViewHolder;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getBottomLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2d

    .line 83
    nop

    :sswitch_data_398
    .sparse-switch
        0x7f030033 -> :sswitch_19a
        0x7f030037 -> :sswitch_28e
        0x7f03003b -> :sswitch_35
        0x7f03003c -> :sswitch_35
        0x7f03003e -> :sswitch_38a
    .end sparse-switch
.end method
