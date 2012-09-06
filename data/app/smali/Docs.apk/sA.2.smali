.class public LsA;
.super LsB;
.source "DateGrouper.java"


# static fields
.field private static a:[Ljava/lang/CharSequence;


# instance fields
.field private final a:LLV;

.field private final a:Landroid/content/Context;

.field private final a:Ljava/util/Calendar;

.field private final a:LsV;

.field private a:[LnT;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, LsA;->a:[Ljava/lang/CharSequence;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;LLV;LsC;J)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-virtual {p2}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, LsB;-><init>(Ljava/lang/String;LsC;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, LsA;->a:[LnT;

    .line 177
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 178
    invoke-virtual {v0, p4, p5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 179
    new-instance v1, LsV;

    invoke-direct {v1, v0}, LsV;-><init>(Ljava/util/Calendar;)V

    iput-object v1, p0, LsA;->a:LsV;

    .line 180
    iput-object v0, p0, LsA;->a:Ljava/util/Calendar;

    .line 181
    iput-object p1, p0, LsA;->a:Landroid/content/Context;

    .line 182
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLV;

    iput-object v0, p0, LsA;->a:LLV;

    .line 183
    return-void
.end method

.method private static a(Ljava/util/ArrayList;Landroid/content/res/Resources;Ljava/util/Calendar;II)Ljava/util/Calendar;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LnT;",
            ">;",
            "Landroid/content/res/Resources;",
            "Ljava/util/Calendar;",
            "II)",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    move v1, v2

    .line 65
    :goto_8
    if-ge v1, p3, :cond_28

    .line 66
    add-int v3, p4, v1

    add-int/lit8 v3, v3, 0x1

    .line 67
    sget v4, LcW;->fast_scroll_time_grouper_n_days_ago:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {p0, v3, v0}, LsA;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 70
    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 73
    :cond_28
    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LnT;",
            ">;",
            "Ljava/util/Calendar;",
            "I)",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x2

    .line 93
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 96
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 97
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 99
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_22

    .line 100
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 103
    :cond_22
    const/4 v2, 0x0

    :goto_23
    if-ge v2, p2, :cond_43

    .line 104
    const-string v3, ""

    .line 105
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 106
    sget-object v4, LsA;->a:[Ljava/lang/CharSequence;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-static {p0, v3, v0}, LsA;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 108
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 109
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 112
    :cond_43
    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/Calendar;ILjava/lang/String;)Ljava/util/Calendar;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LnT;",
            ">;",
            "Ljava/util/Calendar;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 118
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 121
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    .line 122
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 124
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_22

    .line 125
    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->add(II)V

    :cond_22
    move v2, v3

    .line 128
    :goto_23
    if-ge v2, p2, :cond_47

    .line 129
    const-string v4, "yyyy"

    invoke-static {v4, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, v3

    invoke-static {p3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v0}, LsA;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 131
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 132
    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 135
    :cond_47
    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Calendar;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LnT;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Calendar;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v2, LnT;

    if-eqz p2, :cond_13

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :goto_8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v2, p1, v0}, LnT;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-void

    .line 58
    :cond_13
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_8
.end method

.method private static a(Ljava/util/Calendar;Landroid/content/res/Resources;Ljava/util/ArrayList;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Landroid/content/res/Resources;",
            "Ljava/util/ArrayList",
            "<",
            "LnT;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    sget v0, LcY;->fast_scroll_time_grouper_today:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, LsA;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 145
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 146
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 147
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 148
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 149
    sget v1, LcY;->fast_scroll_time_grouper_yesterday:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0}, LsA;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 152
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 153
    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 156
    invoke-static {p2, p1, v0, v4, v3}, LsA;->a(Ljava/util/ArrayList;Landroid/content/res/Resources;Ljava/util/Calendar;II)Ljava/util/Calendar;

    move-result-object v0

    .line 159
    invoke-static {p2, p1, v0, v3, v3}, LsA;->b(Ljava/util/ArrayList;Landroid/content/res/Resources;Ljava/util/Calendar;II)Ljava/util/Calendar;

    move-result-object v0

    .line 162
    const/4 v1, 0x4

    invoke-static {p2, v0, v1}, LsA;->a(Ljava/util/ArrayList;Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 165
    sget v1, LcY;->fast_scroll_time_grouper_in_year:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    const/4 v2, 0x3

    invoke-static {p2, v0, v2, v1}, LsA;->a(Ljava/util/ArrayList;Ljava/util/Calendar;ILjava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 169
    sget v1, LcY;->fast_scroll_time_grouper_earlier:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0}, LsA;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 170
    return-void
.end method

.method private static b(Ljava/util/ArrayList;Landroid/content/res/Resources;Ljava/util/Calendar;II)Ljava/util/Calendar;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LnT;",
            ">;",
            "Landroid/content/res/Resources;",
            "Ljava/util/Calendar;",
            "II)",
            "Ljava/util/Calendar;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    move v1, v2

    .line 79
    :goto_8
    if-ge v1, p3, :cond_28

    .line 80
    add-int v3, p4, v1

    add-int/lit8 v3, v3, 0x1

    .line 81
    sget v4, LcW;->fast_scroll_time_grouper_n_weeks_ago:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {p0, v3, v0}, LsA;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Calendar;)V

    .line 84
    const/4 v3, 0x5

    const/4 v4, -0x7

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 87
    :cond_28
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 205
    const/16 v0, 0x16

    return v0
.end method

.method public a()LLV;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, LsA;->a:LLV;

    return-object v0
.end method

.method public a()Landroid/widget/SectionIndexer;
    .registers 5

    .prologue
    .line 200
    new-instance v0, LnR;

    iget-object v1, p0, LsA;->a:Landroid/database/Cursor;

    invoke-virtual {p0}, LsA;->c()I

    move-result v2

    invoke-virtual {p0}, LsA;->a()[LnT;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LnR;-><init>(Landroid/database/Cursor;I[LnT;)V

    return-object v0
.end method

.method public a()LsM;
    .registers 6

    .prologue
    .line 187
    const-wide/16 v0, -0x1

    .line 188
    iget-object v2, p0, LsA;->a:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 189
    iget-object v0, p0, LsA;->a:Landroid/database/Cursor;

    invoke-virtual {p0}, LsA;->c()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 190
    iget-object v2, p0, LsA;->a:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 195
    :goto_19
    iget-object v2, p0, LsA;->a:LsV;

    iget-object v3, p0, LsA;->a:Landroid/database/Cursor;

    invoke-virtual {p0}, LsA;->c()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v0, v1}, LsV;->a(JJ)LsM;

    move-result-object v0

    return-object v0

    .line 192
    :cond_2a
    iget-object v2, p0, LsA;->a:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_19
.end method

.method public declared-synchronized a()[LnT;
    .registers 4

    .prologue
    .line 35
    monitor-enter p0

    :try_start_1
    sget-object v0, LsA;->a:[Ljava/lang/CharSequence;

    if-nez v0, :cond_25

    .line 36
    iget-object v0, p0, LsA;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcO;->fast_scroll_time_grouper_in_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, LsA;->a:[Ljava/lang/CharSequence;

    .line 39
    sget-object v0, LsA;->a:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget-object v1, p0, LsA;->a:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    if-le v0, v1, :cond_4a

    const/4 v0, 0x1

    :goto_20
    const-string v1, "Insufficient number of months in the resources"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 44
    :cond_25
    iget-object v0, p0, LsA;->a:[LnT;

    if-nez v0, :cond_46

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v1, p0, LsA;->a:Ljava/util/Calendar;

    iget-object v2, p0, LsA;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2, v0}, LsA;->a(Ljava/util/Calendar;Landroid/content/res/Resources;Ljava/util/ArrayList;)V

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [LnT;

    iput-object v1, p0, LsA;->a:[LnT;

    .line 51
    iget-object v1, p0, LsA;->a:[LnT;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 53
    :cond_46
    iget-object v0, p0, LsA;->a:[LnT;
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4c

    monitor-exit p0

    return-object v0

    .line 39
    :cond_4a
    const/4 v0, 0x0

    goto :goto_20

    .line 35
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 210
    const/16 v0, 0x140

    return v0
.end method
