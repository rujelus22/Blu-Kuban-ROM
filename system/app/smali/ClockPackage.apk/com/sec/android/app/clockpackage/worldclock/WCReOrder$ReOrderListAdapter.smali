.class Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WCReOrder.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwDndController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReOrderListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
        ">;",
        "Lcom/sec/android/touchwiz/widget/TwDndController;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutID:I

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;Landroid/content/Context;ILjava/util/List;)V
    .registers 6
    .parameter
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
    .line 243
    .local p0, this:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>;"
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;

    .line 244
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 245
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 246
    iput p3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->mLayoutID:I

    .line 247
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->mContext:Landroid/content/Context;

    .line 248
    return-void
.end method

.method private isDaylightTime(Ljava/lang/String;)Z
    .registers 5
    .parameter "tzID"

    .prologue
    .line 325
    .local p0, this:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>;"
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 326
    .local v1, tmpz:Ljava/util/TimeZone;
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 327
    .local v0, now:Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public allowDrag(I)Z
    .registers 3
    .parameter "startPos"

    .prologue
    .line 399
    .local p0, this:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public allowDrop(II)Z
    .registers 4
    .parameter "startPos"
    .parameter "destPos"

    .prologue
    .line 403
    .local p0, this:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public dropDone(II)V
    .registers 5
    .parameter "startPos"
    .parameter "destPos"

    .prologue
    .line 406
    .local p0, this:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 411
    .local v0, draggedObj:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->setNotifyOnChange(Z)V

    .line 412
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->remove(Ljava/lang/Object;)V

    .line 413
    if-ge p1, p2, :cond_1d

    .line 414
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->insert(Ljava/lang/Object;I)V

    .line 418
    :goto_14
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->notifyDataSetChanged()V

    .line 419
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->softkeyStatus()V

    .line 420
    return-void

    .line 416
    :cond_1d
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->insert(Ljava/lang/Object;I)V

    goto :goto_14
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 251
    .local p0, this:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>;"
    const/4 v1, 0x0

    .line 252
    .local v1, holder:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>.ViewHolder;"
    if-nez p2, :cond_2e

    .line 253
    iget-object v9, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v10, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->mLayoutID:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 254
    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;

    .end local v1           #holder:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>.ViewHolder;"
    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;Landroid/view/View;)V

    .line 255
    .restart local v1       #holder:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>.ViewHolder;"
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 259
    :goto_14
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 260
    .local v3, item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    if-eqz v3, :cond_2d

    .line 266
    const/4 v2, 0x0

    .line 268
    .local v2, isDST:Z
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->getTopLabel()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget v9, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->mLayoutID:I

    packed-switch v9, :pswitch_data_16e

    .line 322
    .end local v2           #isDST:Z
    :cond_2d
    :goto_2d
    return-object p2

    .line 257
    .end local v3           #item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    :cond_2e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>.ViewHolder;"
    check-cast v1, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;,"Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter<TT;>.ViewHolder;"
    goto :goto_14

    .line 273
    .restart local v2       #isDST:Z
    .restart local v3       #item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    :pswitch_35
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_11b

    .line 274
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->isDaylightTime(Ljava/lang/String;)Z

    move-result v2

    .line 275
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 281
    .local v8, tz:Ljava/util/TimeZone;
    :goto_4c
    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 282
    .local v0, calendar:Ljava/util/Calendar;
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 283
    .local v5, time:Landroid/text/format/Time;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, v5, Landroid/text/format/Time;->year:I

    .line 284
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, v5, Landroid/text/format/Time;->month:I

    .line 285
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, v5, Landroid/text/format/Time;->monthDay:I

    .line 286
    const/16 v9, 0xb

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, v5, Landroid/text/format/Time;->hour:I

    .line 287
    const/16 v9, 0xc

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, v5, Landroid/text/format/Time;->minute:I

    .line 288
    const/4 v9, 0x0

    iput v9, v5, Landroid/text/format/Time;->second:I

    .line 289
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->getClock()Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/sec/android/app/clockpackage/worldclock/common/AnalogClock;->setToNow(Landroid/text/format/Time;)V

    .line 290
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->getDigitalClock()Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/sec/android/app/clockpackage/worldclock/common/DigitalClock;->setTime(Landroid/text/format/Time;)V

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_148

    .line 292
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v10

    const/16 v9, 0x9

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-nez v9, :cond_139

    iget-object v9, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0b0094

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_b6
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :goto_b9
    new-instance v6, Ljava/util/Date;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit16 v9, v9, -0x76c

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x5

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-direct {v6, v9, v10, v11}, Ljava/util/Date;-><init>(III)V

    .line 302
    .local v6, timeZoneDate:Ljava/util/Date;
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->getBottomLabel()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->getGap()Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 306
    const v4, 0x7f0202a2

    .line 307
    .local v4, resId:I
    const/4 v9, 0x1

    if-eq v2, v9, :cond_101

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_152

    .line 308
    :cond_101
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->getGap()Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 310
    const v4, 0x7f0202d8

    .line 316
    :cond_114
    :goto_114
    iget-object v9, v1, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2d

    .line 277
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v4           #resId:I
    .end local v5           #time:Landroid/text/format/Time;
    .end local v6           #timeZoneDate:Ljava/util/Date;
    .end local v8           #tz:Ljava/util/TimeZone;
    :cond_11b
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 278
    .local v7, tmpz:Ljava/util/TimeZone;
    new-instance v8, Ljava/util/SimpleTimeZone;

    invoke-virtual {v7}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    const v10, 0x36ee80

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v11

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    const-string v10, "GMT"

    invoke-direct {v8, v9, v10}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .restart local v8       #tz:Ljava/util/TimeZone;
    goto/16 :goto_4c

    .line 293
    .end local v7           #tmpz:Ljava/util/TimeZone;
    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v5       #time:Landroid/text/format/Time;
    :cond_139
    iget-object v9, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0b0095

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_b6

    .line 298
    :cond_148
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->getBottomRightLabel()Landroid/widget/TextView;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b9

    .line 311
    .restart local v4       #resId:I
    .restart local v6       #timeZoneDate:Ljava/util/Date;
    :cond_152
    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_114

    .line 312
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter$ViewHolder;->getGap()Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 314
    const v4, 0x7f0202d9

    goto :goto_114

    .line 269
    nop

    :pswitch_data_16e
    .packed-switch 0x7f030040
        :pswitch_35
    .end packed-switch
.end method
