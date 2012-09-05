.class public Lcom/android/task/TaskAlertActivity;
.super Landroid/app/Activity;
.source "TaskAlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/task/TaskAlertActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION:Ljava/lang/String;

.field private static final SELECTIONARG:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/task/TaskAlertAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mDismissAllButton:Landroid/widget/Button;

.field private mDismissAllListener:Landroid/view/View$OnClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mQueryHandler:Lcom/android/task/TaskAlertActivity$QueryHandler;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSnoozeAllButton:Landroid/widget/Button;

.field private mSnoozeAllListener:Landroid/view/View$OnClickListener;

.field private mSortedIds:[I

.field private mViewListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 52
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "task_id"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "reminder_time"

    aput-object v2, v0, v1

    const-string v1, "state"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "start_date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "due_date"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "accountkey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "reminder_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/task/TaskAlertActivity;->PROJECTION:[Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/task/TaskAlertActivity;->PROJECTION:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskAlertActivity;->SELECTION:Ljava/lang/String;

    .line 75
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/task/TaskAlertActivity;->SELECTIONARG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/task/TaskAlertActivity;->mSortedIds:[I

    .line 182
    new-instance v0, Lcom/android/task/TaskAlertActivity$1;

    invoke-direct {v0, p0}, Lcom/android/task/TaskAlertActivity$1;-><init>(Lcom/android/task/TaskAlertActivity;)V

    iput-object v0, p0, Lcom/android/task/TaskAlertActivity;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 288
    new-instance v0, Lcom/android/task/TaskAlertActivity$2;

    invoke-direct {v0, p0}, Lcom/android/task/TaskAlertActivity$2;-><init>(Lcom/android/task/TaskAlertActivity;)V

    iput-object v0, p0, Lcom/android/task/TaskAlertActivity;->mSnoozeAllListener:Landroid/view/View$OnClickListener;

    .line 322
    new-instance v0, Lcom/android/task/TaskAlertActivity$3;

    invoke-direct {v0, p0}, Lcom/android/task/TaskAlertActivity$3;-><init>(Lcom/android/task/TaskAlertActivity;)V

    iput-object v0, p0, Lcom/android/task/TaskAlertActivity;->mDismissAllListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/task/TaskAlertActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/task/TaskAlertActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/task/TaskAlertActivity;)Lcom/android/task/TaskAlertAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mAdapter:Lcom/android/task/TaskAlertAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/task/TaskAlertActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/task/TaskAlertActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mDismissAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/task/TaskAlertActivity;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/task/TaskAlertActivity;->dismissAlarm(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/task/TaskAlertActivity;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mSortedIds:[I

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/task/TaskAlertActivity;[I)[I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/task/TaskAlertActivity;->mSortedIds:[I

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/task/TaskAlertActivity;Landroid/database/Cursor;)[I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/task/TaskAlertActivity;->getSortedTaskIds(Landroid/database/Cursor;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(JJJJLjava/lang/String;I)Landroid/content/ContentValues;
    .registers 11
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 47
    invoke-static/range {p0 .. p9}, Lcom/android/task/TaskAlertActivity;->makeContentValues(JJJJLjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/task/TaskAlertActivity;)Lcom/android/task/TaskAlertActivity$QueryHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mQueryHandler:Lcom/android/task/TaskAlertActivity$QueryHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/task/TaskAlertActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/task/TaskAlertActivity;->dismissFiredAlarms()V

    return-void
.end method

.method private dismissAlarm(J)V
    .registers 12
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 108
    .local v7, eventId:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://tasks//TasksReminders/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 110
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 111
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/android/task/TaskAlertActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v0, v0, v6

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/task/TaskAlertActivity;->PROJECTION:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mQueryHandler:Lcom/android/task/TaskAlertActivity$QueryHandler;

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/task/TaskAlertActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private dismissFiredAlarms()V
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 94
    :cond_9
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 96
    .local v7, eventId:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://tasks//TasksReminders/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 98
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 99
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/android/task/TaskAlertActivity;->PROJECTION:[Ljava/lang/String;

    aget-object v0, v0, v10

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/task/TaskAlertActivity;->PROJECTION:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mQueryHandler:Lcom/android/task/TaskAlertActivity$QueryHandler;

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/task/TaskAlertActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 103
    return-void
.end method

.method private getSortedTaskIds(Landroid/database/Cursor;)[I
    .registers 6
    .parameter "cursor"

    .prologue
    .line 211
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_8

    .line 212
    const/4 v2, 0x0

    .line 224
    :goto_7
    return-object v2

    .line 214
    :cond_8
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v2, v3, [I

    .line 216
    .local v2, sortedTaskIds:[I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    const/4 v1, 0x0

    .line 219
    .local v1, i:I
    :cond_12
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 220
    .local v0, columnIndex:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v2, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    .line 222
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_7
.end method

.method private static makeContentValues(JJJJLjava/lang/String;I)Landroid/content/ContentValues;
    .registers 13
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"
    .parameter "alarmTime"
    .parameter "subject"
    .parameter "reminderType"

    .prologue
    .line 171
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 172
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/android/task/TaskAlertActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    sget-object v1, Lcom/android/task/TaskAlertActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    sget-object v1, Lcom/android/task/TaskAlertActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    sget-object v1, Lcom/android/task/TaskAlertActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    sget-object v1, Lcom/android/task/TaskAlertActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    sget-object v1, Lcom/android/task/TaskAlertActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v1, Lcom/android/task/TaskAlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    return-object v0
.end method


# virtual methods
.method public getItemForView(Landroid/view/View;)Landroid/database/Cursor;
    .registers 4
    .parameter "view"

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 339
    .local v0, index:I
    if-gez v0, :cond_a

    .line 340
    const/4 v1, 0x0

    .line 342
    :goto_9
    return-object v1

    :cond_a
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    goto :goto_9
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 229
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 231
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/android/task/TaskAlertActivity;->setContentView(I)V

    .line 232
    const v1, 0x7f0a002a

    invoke-virtual {p0, v1}, Lcom/android/task/TaskAlertActivity;->setTitle(I)V

    .line 234
    invoke-virtual {p0}, Lcom/android/task/TaskAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 235
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 236
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 238
    invoke-virtual {p0}, Lcom/android/task/TaskAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/task/TaskAlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/task/TaskAlertActivity;->mResolver:Landroid/content/ContentResolver;

    .line 241
    new-instance v1, Lcom/android/task/TaskAlertActivity$QueryHandler;

    iget-object v2, p0, Lcom/android/task/TaskAlertActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/android/task/TaskAlertActivity$QueryHandler;-><init>(Lcom/android/task/TaskAlertActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/task/TaskAlertActivity;->mQueryHandler:Lcom/android/task/TaskAlertActivity$QueryHandler;

    .line 242
    new-instance v1, Lcom/android/task/TaskAlertAdapter;

    const v2, 0x7f030003

    invoke-direct {v1, p0, v2}, Lcom/android/task/TaskAlertAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/task/TaskAlertActivity;->mAdapter:Lcom/android/task/TaskAlertAdapter;

    .line 244
    const v1, 0x7f0c0006

    invoke-virtual {p0, v1}, Lcom/android/task/TaskAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/task/TaskAlertActivity;->mListView:Landroid/widget/ListView;

    .line 245
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 246
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/task/TaskAlertActivity;->mAdapter:Lcom/android/task/TaskAlertAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 247
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/task/TaskAlertActivity;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 249
    const v1, 0x7f0c0007

    invoke-virtual {p0, v1}, Lcom/android/task/TaskAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/task/TaskAlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    .line 250
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/task/TaskAlertActivity;->mSnoozeAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lcom/android/task/TaskAlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/task/TaskAlertActivity;->mDismissAllButton:Landroid/widget/Button;

    .line 252
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity;->mDismissAllButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/task/TaskAlertActivity;->mDismissAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 257
    iget-object v1, p0, Lcom/android/task/TaskAlertActivity;->mDismissAllButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 258
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 283
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 284
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 265
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mQueryHandler:Lcom/android/task/TaskAlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Lcom/android/task/Tasks$TaskReminderAlerts;->REMINDER_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/task/TaskAlertActivity;->PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/android/task/TaskAlertActivity;->SELECTION:Ljava/lang/String;

    sget-object v6, Lcom/android/task/TaskAlertActivity;->SELECTIONARG:[Ljava/lang/String;

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/task/TaskAlertActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 272
    invoke-static {}, Lcom/android/task/WakeLock;->release()V

    .line 273
    invoke-static {p0}, Lcom/android/task/TaskAlertService;->updateAlertSnoozeAll(Landroid/content/Context;)Z

    .line 275
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_12

    .line 276
    iget-object v0, p0, Lcom/android/task/TaskAlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 278
    :cond_12
    return-void
.end method
