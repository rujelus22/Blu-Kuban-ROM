.class public Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectCalendarsSyncAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    }
.end annotation


# static fields
.field private static COLOR_CHIP_SIZE:I


# instance fields
.field private mChanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;",
            ">;"
        }
    .end annotation
.end field

.field private mColorColumn:I

.field private mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

.field private mIdColumn:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNameColumn:I

.field private final mNotSyncedString:Ljava/lang/String;

.field private mRowCount:I

.field private mSyncedColumn:I

.field private final mSyncedString:Ljava/lang/String;

.field private r:Landroid/graphics/drawable/shapes/RectShape;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/16 v0, 0x1e

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 7
    .parameter "context"
    .parameter "c"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->r:Landroid/graphics/drawable/shapes/RectShape;

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    .line 69
    invoke-direct {p0, p2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->initData(Landroid/database/Cursor;)V

    .line 70
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    .line 72
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->r:Landroid/graphics/drawable/shapes/RectShape;

    sget v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedString:Ljava/lang/String;

    .line 75
    const v1, 0x7f0c001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNotSyncedString:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private initData(Landroid/database/Cursor;)V
    .registers 9
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 79
    if-nez p1, :cond_9

    .line 80
    iput v4, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    .line 81
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 108
    :cond_8
    return-void

    .line 85
    :cond_9
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mIdColumn:I

    .line 86
    const-string v3, "calendar_displayName"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNameColumn:I

    .line 87
    const-string v3, "calendar_color"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mColorColumn:I

    .line 88
    const-string v3, "sync_events"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedColumn:I

    .line 90
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    .line 91
    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    new-array v3, v3, [Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    iput-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 92
    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, p:I
    :goto_3a
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 95
    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mIdColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 96
    .local v0, id:J
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    new-instance v5, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    invoke-direct {v5, p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;-><init>(Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;)V

    aput-object v5, v3, v2

    .line 97
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iput-wide v0, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    .line 98
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iget v5, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNameColumn:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 99
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iget v5, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mColorColumn:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->color:I

    .line 100
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v5, v3, v2

    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_9f

    const/4 v3, 0x1

    :goto_7a
    iput-boolean v3, v5, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->originalSynced:Z

    .line 101
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 102
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v5, v3, v2

    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    iget-boolean v3, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    iput-boolean v3, v5, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    .line 106
    :goto_9c
    add-int/lit8 v2, v2, 0x1

    .line 107
    goto :goto_3a

    :cond_9f
    move v3, v4

    .line 100
    goto :goto_7a

    .line 104
    :cond_a1
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iget-object v5, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->originalSynced:Z

    iput-boolean v5, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    goto :goto_9c
.end method

.method private static setText(Landroid/view/View;ILjava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 150
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 155
    :goto_6
    return-void

    .line 153
    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->initData(Landroid/database/Cursor;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->notifyDataSetChanged()V

    .line 113
    return-void
.end method

.method public getChanges()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 164
    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    if-lt p1, v1, :cond_6

    .line 165
    const/4 v0, 0x0

    .line 168
    :goto_5
    return-object v0

    .line 167
    :cond_6
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v0, v1, p1

    .line 168
    .local v0, item:Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    goto :goto_5
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 173
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    if-lt p1, v0, :cond_7

    .line 174
    const-wide/16 v0, 0x0

    .line 176
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    goto :goto_6
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f100032

    .line 117
    iget v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    if-lt p1, v6, :cond_9

    .line 118
    const/4 v5, 0x0

    .line 146
    :goto_8
    return-object v5

    .line 120
    :cond_9
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v6, v6, p1

    iget-object v3, v6, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 121
    .local v3, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v6, v6, p1

    iget-boolean v4, v6, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    .line 122
    .local v4, selected:Z
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v6, v6, p1

    iget v6, v6, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->color:I

    invoke-static {v6}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v1

    .line 124
    .local v1, color:I
    if-nez p2, :cond_56

    .line 125
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040011

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 130
    .local v5, view:Landroid/view/View;
    :goto_2b
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    const v6, 0x7f100033

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 133
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    if-eqz v4, :cond_58

    .line 136
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedString:Ljava/lang/String;

    invoke-static {v5, v9, v6}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 141
    :goto_45
    const v6, 0x7f100030

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 143
    .local v2, colorView:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    const v6, 0x7f100031

    invoke-static {v5, v6, v3}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_8

    .line 127
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v2           #colorView:Landroid/view/View;
    .end local v5           #view:Landroid/view/View;
    :cond_56
    move-object v5, p2

    .restart local v5       #view:Landroid/view/View;
    goto :goto_2b

    .line 138
    .restart local v0       #cb:Landroid/widget/CheckBox;
    :cond_58
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNotSyncedString:Ljava/lang/String;

    invoke-static {v5, v9, v6}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_45
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 191
    .local v1, row:Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    iget-boolean v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    if-nez v3, :cond_33

    const/4 v3, 0x1

    :goto_b
    iput-boolean v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    .line 194
    iget-boolean v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    if-eqz v3, :cond_35

    .line 195
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedString:Ljava/lang/String;

    .line 199
    .local v2, status:Ljava/lang/String;
    :goto_13
    const v3, 0x7f100032

    invoke-static {p2, v3, v2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 201
    const v3, 0x7f100033

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 202
    .local v0, cb:Landroid/widget/CheckBox;
    iget-boolean v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 206
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    iget-wide v4, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void

    .line 191
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v2           #status:Ljava/lang/String;
    :cond_33
    const/4 v3, 0x0

    goto :goto_b

    .line 197
    :cond_35
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNotSyncedString:Ljava/lang/String;

    .restart local v2       #status:Ljava/lang/String;
    goto :goto_13
.end method
