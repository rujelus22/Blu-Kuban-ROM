.class public Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;
.super Ljava/lang/Object;
.source "CallLogGroupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;
    }
.end annotation


# static fields
.field private static mCalendar:Ljava/util/Calendar;

.field public static mDateFormat:Ljava/lang/String;

.field private static systemTime:Landroid/text/format/Time;

.field private static time:Landroid/text/format/Time;


# instance fields
.field private final CALL:I

.field private final MESSAGE:I

.field private final NOR_INT:I

.field private final SEP_INT:I

.field private mBuffer1:Landroid/database/CharArrayBuffer;

.field private mBuffer2:Landroid/database/CharArrayBuffer;

.field private final mContext:Landroid/content/Context;

.field private final mGroupCreator:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;

.field private seperatorIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private strSeparatorArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const-string v0, "MM-dd-yyyy"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mDateFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;Landroid/content/Context;)V
    .registers 5
    .parameter "groupCreator"
    .parameter "context"

    .prologue
    const/16 v1, 0x80

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mBuffer1:Landroid/database/CharArrayBuffer;

    .line 60
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mBuffer2:Landroid/database/CharArrayBuffer;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->CALL:I

    .line 68
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->MESSAGE:I

    .line 73
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->NOR_INT:I

    .line 74
    const/16 v0, 0x37

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->SEP_INT:I

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mCalendar:Ljava/util/Calendar;

    .line 90
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->systemTime:Landroid/text/format/Time;

    .line 91
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->time:Landroid/text/format/Time;

    .line 92
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;

    .line 93
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method private addGroup(II)V
    .registers 5
    .parameter "cursorPosition"
    .parameter "size"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;->addGroup(IIZ)V

    .line 339
    return-void
.end method

.method private equalPhoneNumbers(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)Z
    .registers 8
    .parameter "buffer1"
    .parameter "buffer2"

    .prologue
    const/4 v4, 0x0

    .line 367
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    iget v2, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p2, Landroid/database/CharArrayBuffer;->data:[C

    iget v3, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "date"

    .prologue
    const/16 v8, 0x30

    const/16 v7, 0x2f

    const/16 v6, 0xa

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v0, dateBuffer:Ljava/lang/StringBuffer;
    invoke-static {p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->isToday(J)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0264

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :goto_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 110
    :cond_24
    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->isToday(J)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0265

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 113
    :cond_3d
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 114
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 115
    .local v3, year:I
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 116
    .local v2, month:I
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 118
    .local v1, day:I
    const-string v4, "MM-dd-yyyy"

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 119
    if-ge v2, v6, :cond_68

    .line 120
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 122
    :cond_68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    if-ge v1, v6, :cond_73

    .line 125
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 127
    :cond_73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 130
    :cond_7d
    const-string v4, "dd-MM-yyyy"

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mDateFormat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 132
    if-ge v1, v6, :cond_8c

    .line 133
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    :cond_8c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    if-ge v2, v6, :cond_97

    .line 139
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 141
    :cond_97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_1f

    .line 146
    :cond_a2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    if-ge v2, v6, :cond_ad

    .line 149
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 151
    :cond_ad
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 153
    if-ge v1, v6, :cond_b8

    .line 154
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    :cond_b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_1f
.end method

.method public static isToday(J)Z
    .registers 4
    .parameter "when"

    .prologue
    .line 97
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->time:Landroid/text/format/Time;

    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 99
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->time:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->systemTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_25

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->time:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->systemTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_25

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->time:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->systemTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->monthDay:I

    if-ne v0, v1, :cond_25

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method public addGroups(Landroid/database/Cursor;)V
    .registers 30
    .parameter "cursor"

    .prologue
    .line 176
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 178
    .local v5, count:I
    const-string v16, ""

    .local v16, firstDateFormat:Ljava/lang/String;
    const-string v8, ""

    .line 179
    .local v8, currentDateFormat:Ljava/lang/String;
    const/4 v3, 0x0

    .line 180
    .local v3, bSameDate:Z
    const/16 v22, 0x0

    .line 182
    .local v22, sepCount:I
    if-nez v5, :cond_e

    .line 328
    :cond_d
    :goto_d
    return-void

    .line 186
    :cond_e
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorIDList:Ljava/util/ArrayList;

    .line 187
    add-int/lit8 v25, v5, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    .line 189
    const/4 v9, 0x1

    .line 191
    .local v9, currentGroupSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mBuffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v19, v0

    .line 193
    .local v19, firstNumber:Landroid/database/CharArrayBuffer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mBuffer2:Landroid/database/CharArrayBuffer;

    .line 194
    .local v12, currentNumber:Landroid/database/CharArrayBuffer;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 195
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 198
    const/16 v25, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 201
    .local v13, firstCallType:I
    const/16 v25, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 202
    .local v18, firstLogType:I
    const/16 v25, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 203
    .local v11, currentLogType:I
    const/16 v17, 0x0

    .local v17, firstLogGroup:I
    const/4 v10, 0x0

    .line 205
    .local v10, currentLogGroup:I
    sparse-switch v18, :sswitch_data_218

    .line 218
    :goto_66
    const/16 v25, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 220
    .local v14, firstDate:J
    sget-object v25, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->systemTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Landroid/text/format/Time;->set(J)V

    .line 222
    const/16 v22, 0x0

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    if-eqz v25, :cond_95

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "date_format"

    invoke-static/range {v25 .. v26}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mDateFormat:Ljava/lang/String;

    .line 227
    :cond_95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ab

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v14, v15}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    .line 230
    :cond_ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorIDList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x37

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v16, v25, v22

    .line 233
    :goto_c2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-eqz v25, :cond_206

    .line 234
    const/16 v25, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 235
    .local v6, currentDate:J
    add-int/lit8 v22, v22, 0x1

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ea

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 240
    :cond_ea
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14b

    .line 241
    const/4 v3, 0x1

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorIDList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0xa

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, ""

    aput-object v26, v25, v22

    .line 251
    :goto_10c
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1, v12}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 255
    const/16 v25, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 256
    sparse-switch v11, :sswitch_data_22e

    .line 268
    :goto_122
    const/16 v25, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 269
    .local v4, callType:I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->equalPhoneNumbers(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)Z

    move-result v21

    .line 270
    .local v21, sameNumber:Z
    move/from16 v0, v17

    if-ne v0, v10, :cond_168

    const/16 v20, 0x1

    .line 273
    .local v20, sameLogType:Z
    :goto_13a
    if-nez v21, :cond_16b

    .line 275
    const/16 v23, 0x0

    .line 300
    .local v23, shouldGroup:Z
    :goto_13e
    if-eqz v23, :cond_1e3

    .line 303
    add-int/lit8 v9, v9, 0x1

    goto :goto_c2

    .line 209
    .end local v4           #callType:I
    .end local v6           #currentDate:J
    .end local v14           #firstDate:J
    .end local v20           #sameLogType:Z
    .end local v21           #sameNumber:Z
    .end local v23           #shouldGroup:Z
    :sswitch_143
    const/16 v17, 0x1

    .line 210
    goto/16 :goto_66

    .line 213
    :sswitch_147
    const/16 v17, 0x2

    goto/16 :goto_66

    .line 245
    .restart local v6       #currentDate:J
    .restart local v14       #firstDate:J
    :cond_14b
    const/4 v3, 0x0

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorIDList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x37

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v8, v25, v22

    goto :goto_10c

    .line 260
    :sswitch_164
    const/4 v10, 0x1

    .line 261
    goto :goto_122

    .line 264
    :sswitch_166
    const/4 v10, 0x2

    goto :goto_122

    .line 270
    .restart local v4       #callType:I
    .restart local v21       #sameNumber:Z
    :cond_168
    const/16 v20, 0x0

    goto :goto_13a

    .line 276
    .restart local v20       #sameLogType:Z
    :cond_16b
    if-nez v3, :cond_170

    .line 277
    const/16 v23, 0x0

    .restart local v23       #shouldGroup:Z
    goto :goto_13e

    .line 279
    .end local v23           #shouldGroup:Z
    :cond_170
    if-nez v20, :cond_175

    .line 280
    const/16 v23, 0x0

    .restart local v23       #shouldGroup:Z
    goto :goto_13e

    .line 281
    .end local v23           #shouldGroup:Z
    :cond_175
    const/16 v25, 0x2

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_193

    .line 282
    const/16 v25, 0x12c

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_18d

    const/16 v25, 0xc8

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_190

    :cond_18d
    const/16 v23, 0x1

    .restart local v23       #shouldGroup:Z
    :goto_18f
    goto :goto_13e

    .end local v23           #shouldGroup:Z
    :cond_190
    const/16 v23, 0x0

    goto :goto_18f

    .line 283
    :cond_193
    const/16 v25, 0x4

    move/from16 v0, v25

    if-eq v13, v0, :cond_19f

    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v13, v0, :cond_1ab

    .line 286
    :cond_19f
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v4, v0, :cond_1a8

    const/16 v23, 0x1

    .restart local v23       #shouldGroup:Z
    :goto_1a7
    goto :goto_13e

    .end local v23           #shouldGroup:Z
    :cond_1a8
    const/16 v23, 0x0

    goto :goto_1a7

    .line 287
    :cond_1ab
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v13, v0, :cond_1bd

    .line 289
    const/16 v25, 0x5

    move/from16 v0, v25

    if-ne v4, v0, :cond_1ba

    const/16 v23, 0x1

    .restart local v23       #shouldGroup:Z
    :goto_1b9
    goto :goto_13e

    .end local v23           #shouldGroup:Z
    :cond_1ba
    const/16 v23, 0x0

    goto :goto_1b9

    .line 291
    :cond_1bd
    const/16 v25, 0x6

    move/from16 v0, v25

    if-ne v13, v0, :cond_1d0

    .line 293
    const/16 v25, 0x6

    move/from16 v0, v25

    if-ne v4, v0, :cond_1cd

    const/16 v23, 0x1

    .restart local v23       #shouldGroup:Z
    :goto_1cb
    goto/16 :goto_13e

    .end local v23           #shouldGroup:Z
    :cond_1cd
    const/16 v23, 0x0

    goto :goto_1cb

    .line 297
    :cond_1d0
    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v4, v0, :cond_1dc

    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v4, v0, :cond_1e0

    :cond_1dc
    const/16 v23, 0x1

    .restart local v23       #shouldGroup:Z
    :goto_1de
    goto/16 :goto_13e

    .end local v23           #shouldGroup:Z
    :cond_1e0
    const/16 v23, 0x0

    goto :goto_1de

    .line 307
    .restart local v23       #shouldGroup:Z
    :cond_1e3
    const/16 v25, 0x1

    move/from16 v0, v25

    if-le v9, v0, :cond_1f6

    .line 308
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v25

    sub-int v25, v25, v9

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v9}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->addGroup(II)V

    .line 311
    :cond_1f6
    const/4 v9, 0x1

    .line 314
    move v13, v4

    .line 315
    move/from16 v18, v11

    .line 317
    move-object/from16 v24, v19

    .line 318
    .local v24, temp:Landroid/database/CharArrayBuffer;
    move-object/from16 v19, v12

    .line 319
    move-object/from16 v12, v24

    .line 320
    move-object/from16 v16, v8

    .line 321
    move/from16 v17, v10

    goto/16 :goto_c2

    .line 325
    .end local v4           #callType:I
    .end local v6           #currentDate:J
    .end local v20           #sameLogType:Z
    .end local v21           #sameNumber:Z
    .end local v23           #shouldGroup:Z
    .end local v24           #temp:Landroid/database/CharArrayBuffer;
    :cond_206
    const/16 v25, 0x1

    move/from16 v0, v25

    if-le v9, v0, :cond_d

    .line 326
    sub-int v25, v5, v9

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v9}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->addGroup(II)V

    goto/16 :goto_d

    .line 205
    nop

    :sswitch_data_218
    .sparse-switch
        0x64 -> :sswitch_143
        0xc8 -> :sswitch_147
        0x12c -> :sswitch_147
        0x1f4 -> :sswitch_143
        0x320 -> :sswitch_143
    .end sparse-switch

    .line 256
    :sswitch_data_22e
    .sparse-switch
        0x64 -> :sswitch_164
        0xc8 -> :sswitch_166
        0x12c -> :sswitch_166
        0x1f4 -> :sswitch_164
        0x320 -> :sswitch_164
    .end sparse-switch
.end method

.method public getSeperatorIDList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->seperatorIDList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStrSeparatorArray()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->strSeparatorArray:[Ljava/lang/String;

    return-object v0
.end method
