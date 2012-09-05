.class public Lcom/android/providers/downloads/ui/SecDownloadAdapter;
.super Landroid/widget/CursorAdapter;
.source "SecDownloadAdapter.java"


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private final mDateColumnId:I

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mDescriptionColumnId:I

.field private final mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

.field private final mFileNameColumnId:I

.field private final mIdColumnId:I

.field private final mMediaTypeColumnId:I

.field private final mReasonColumnId:I

.field private mResources:Landroid/content/res/Resources;

.field private final mStatusColumnId:I

.field private mTimeFormat:Ljava/text/DateFormat;

.field private final mTitleColumnId:I

.field private final mTotalBytesColumnId:I


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/SecDownloadList;Landroid/database/Cursor;)V
    .registers 5
    .parameter "downloadList"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x3

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 69
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    .line 70
    iput-object p2, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mResources:Landroid/content/res/Resources;

    .line 72
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mDateFormat:Ljava/text/DateFormat;

    .line 73
    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mTimeFormat:Ljava/text/DateFormat;

    .line 77
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mIdColumnId:I

    .line 78
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mTitleColumnId:I

    .line 79
    const-string v0, "description"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mDescriptionColumnId:I

    .line 80
    const-string v0, "status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mStatusColumnId:I

    .line 81
    const-string v0, "reason"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mReasonColumnId:I

    .line 82
    const-string v0, "total_size"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mTotalBytesColumnId:I

    .line 83
    const-string v0, "media_type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mMediaTypeColumnId:I

    .line 84
    const-string v0, "last_modified_timestamp"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mDateColumnId:I

    .line 86
    const-string v0, "local_filename"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mFileNameColumnId:I

    .line 88
    return-void
.end method

.method private getDateString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 141
    new-instance v6, Ljava/util/Date;

    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mDateColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 142
    .local v6, date:Ljava/util/Date;
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->getStartOfToday()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 143
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_1d
    return-object v0

    .line 148
    :cond_1e
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 149
    const/16 v5, 0x81

    .line 153
    .local v5, flags:I
    :goto_28
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 151
    .end local v5           #flags:I
    :cond_37
    const/4 v5, 0x1

    .restart local v5       #flags:I
    goto :goto_28
.end method

.method private getSizeText()Ljava/lang/String;
    .registers 6

    .prologue
    .line 169
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mTotalBytesColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 170
    .local v1, totalBytes:J
    const-string v0, ""

    .line 171
    .local v0, sizeText:Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_16

    .line 172
    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_16
    return-object v0
.end method

.method private getStartOfToday()Ljava/util/Date;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 160
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 161
    .local v0, today:Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 162
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 163
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 164
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 165
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private getStatusStringId()I
    .registers 5

    .prologue
    const v0, 0x7f080008

    .line 178
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mStatusColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_46

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mStatusColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :sswitch_2f
    const v0, 0x7f08000a

    .line 194
    :cond_32
    :goto_32
    :sswitch_32
    return v0

    .line 183
    :sswitch_33
    const v0, 0x7f080009

    goto :goto_32

    .line 191
    :sswitch_37
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mReasonColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_32

    .line 192
    const v0, 0x7f080007

    goto :goto_32

    .line 178
    :sswitch_data_46
    .sparse-switch
        0x1 -> :sswitch_32
        0x2 -> :sswitch_32
        0x4 -> :sswitch_37
        0x8 -> :sswitch_33
        0x10 -> :sswitch_2f
        0x40 -> :sswitch_32
    .end sparse-switch
.end method

.method private retrieveAndSetIcon(Landroid/view/View;)V
    .registers 12
    .parameter "convertView"

    .prologue
    const/4 v9, 0x0

    .line 201
    iget-object v6, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v7, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mMediaTypeColumnId:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, mediaType:Ljava/lang/String;
    const v6, 0x7f0b000a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 203
    .local v1, iconView:Landroid/widget/ImageView;
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    if-nez v4, :cond_19

    .line 226
    :goto_18
    return-void

    .line 209
    :cond_19
    const-string v6, "application/vnd.oma.drm.message"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 210
    const v6, 0x7f020005

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 225
    :goto_27
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18

    .line 212
    :cond_2b
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "file"

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v6, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 215
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/high16 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 217
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_57

    .line 219
    const v6, 0x7f020001

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 221
    :cond_57
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 222
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27
.end method

.method private setTextForView(Landroid/view/View;ILjava/lang/String;)V
    .registers 5
    .parameter "parent"
    .parameter "textViewId"
    .parameter "text"

    .prologue
    .line 229
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 230
    .local v0, view:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .registers 14
    .parameter "convertView"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 98
    instance-of v0, p1, Lcom/android/providers/downloads/ui/SecDownloadItem;

    if-nez v0, :cond_6

    .line 138
    .end local p1
    :cond_5
    :goto_5
    return-void

    .line 102
    .restart local p1
    :cond_6
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mIdColumnId:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .local v1, downloadId:J
    move-object v0, p1

    .line 103
    check-cast v0, Lcom/android/providers/downloads/ui/SecDownloadItem;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mFileNameColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mMediaTypeColumnId:I

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/ui/SecDownloadItem;->setData(JILjava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->retrieveAndSetIcon(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mTitleColumnId:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mStatusColumnId:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 113
    .local v9, status:I
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 114
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f080004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 116
    :cond_47
    const v0, 0x7f0b000b

    invoke-direct {p0, p1, v0, v10}, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 117
    const v0, 0x7f0b000c

    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mDescriptionColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 118
    const v0, 0x7f0b000f

    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->getSizeText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 119
    const v0, 0x7f0b000e

    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->getStatusStringId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 120
    const v0, 0x7f0b000d

    invoke-direct {p0}, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->getDateString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 122
    check-cast p1, Lcom/android/providers/downloads/ui/SecDownloadItem;

    .end local p1
    invoke-virtual {p1}, Lcom/android/providers/downloads/ui/SecDownloadItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v3, v1, v2}, Lcom/android/providers/downloads/ui/SecDownloadList;->isDownloadSelected(J)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 125
    const/16 v0, 0x40

    if-ne v9, v0, :cond_a9

    .line 128
    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/providers/downloads/ui/SecDownloadList;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    iget-object v5, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/providers/downloads/ui/SecDownloadList;->viewOMADDInfo(Landroid/database/Cursor;IJ)V

    goto/16 :goto_5

    .line 132
    :cond_a9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 133
    invoke-static {}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->getSingleton()Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    iget-object v0, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasOperations;->viewSaveasScreen(Landroid/app/Activity;Landroid/database/Cursor;IJ)V

    goto/16 :goto_5
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 242
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->bindView(Landroid/view/View;I)V

    .line 243
    return-void
.end method

.method public newView()Landroid/view/View;
    .registers 5

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/SecDownloadItem;

    .line 93
    .local v0, view:Lcom/android/providers/downloads/ui/SecDownloadItem;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/SecDownloadItem;->setDownloadListObj(Lcom/android/providers/downloads/ui/SecDownloadList;)V

    .line 94
    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/SecDownloadAdapter;->newView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
