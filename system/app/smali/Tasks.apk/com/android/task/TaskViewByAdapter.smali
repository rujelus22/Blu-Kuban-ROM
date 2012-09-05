.class public Lcom/android/task/TaskViewByAdapter;
.super Landroid/widget/CursorAdapter;
.source "TaskViewByAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/task/TaskViewByAdapter$1;,
        Lcom/android/task/TaskViewByAdapter$CheckBoxListener;
    }
.end annotation


# static fields
.field private static final CHECKED:Ljava/lang/Boolean;

.field private static final UNCHECKED:Ljava/lang/Boolean;


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsChecked:[Ljava/lang/Boolean;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskViewByAdapter;->CHECKED:Ljava/lang/Boolean;

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/task/TaskViewByAdapter;->UNCHECKED:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 45
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/task/TaskViewByAdapter;->mValues:Landroid/content/ContentValues;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/task/TaskViewByAdapter;->mIsChecked:[Ljava/lang/Boolean;

    .line 80
    const-string v0, "TaskViewbyAdapter"

    const-string v1, "======== TaskViewbyAdapter(Context, Cursor) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/task/TaskViewByAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskViewByAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 84
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/task/TaskViewByAdapter;->updateIsCheckedArray(I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Runnable;)V
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "runnable"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 45
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/task/TaskViewByAdapter;->mValues:Landroid/content/ContentValues;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/task/TaskViewByAdapter;->mIsChecked:[Ljava/lang/Boolean;

    .line 89
    const-string v0, "TaskViewbyAdapter"

    const-string v1, "======== TaskViewbyAdapter(Context, Cursor, Runnable) ========"

    invoke-static {v0, v1}, Lcom/android/task/Utils$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/task/TaskViewByAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/task/TaskViewByAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 93
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/task/TaskViewByAdapter;->updateIsCheckedArray(I)V

    .line 95
    iput-object p3, p0, Lcom/android/task/TaskViewByAdapter;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/task/TaskViewByAdapter;)Landroid/content/ContentValues;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/task/TaskViewByAdapter;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/task/TaskViewByAdapter;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/task/TaskViewByAdapter;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/task/TaskViewByAdapter;)[Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/task/TaskViewByAdapter;->mIsChecked:[Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/task/TaskViewByAdapter;->CHECKED:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Boolean;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/task/TaskViewByAdapter;->UNCHECKED:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/task/TaskViewByAdapter;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/task/TaskViewByAdapter;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static setText(Landroid/view/View;ILjava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 194
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 199
    :goto_6
    return-void

    .line 197
    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 198
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method private updateIsCheckedArray(I)V
    .registers 3
    .parameter "cursorCount"

    .prologue
    .line 75
    new-array v0, p1, [Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/task/TaskViewByAdapter;->mIsChecked:[Ljava/lang/Boolean;

    .line 76
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 24
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 107
    const-string v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 108
    .local v13, idColumn:I
    const-string v2, "_sync_account"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 109
    .local v17, syncAccount:I
    const-string v2, "selected"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 110
    .local v16, selectedColumn:I
    const-string v2, "_sync_account_key"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 111
    .local v18, syncAccountKey:I
    const-string v2, "_sync_account_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 113
    .local v15, ownerColumn:I
    const-string v9, ""

    .line 114
    .local v9, accountName:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 117
    .local v19, tasksId:I
    const v2, 0x7f0c002f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/task/TaskViewByAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/task/TaskAccount;->getTaskColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_cc

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 127
    :goto_5c
    const v2, 0x7f0c004b

    move-object/from16 v0, p1

    invoke-static {v0, v2, v9}, Lcom/android/task/TaskViewByAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 129
    const v2, 0x7f0c004c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 131
    .local v8, accountContainer:Landroid/view/View;
    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_d5

    .line 132
    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 134
    .local v14, ownerAccount:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    const v2, 0x7f0c004e

    move-object/from16 v0, p1

    invoke-static {v0, v2, v14}, Lcom/android/task/TaskViewByAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 141
    .end local v14           #ownerAccount:Ljava/lang/String;
    :goto_84
    const v2, 0x7f0c004f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    .line 144
    .local v10, box:Landroid/widget/CheckBox;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 145
    .local v12, cursorCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/task/TaskViewByAdapter;->mIsChecked:[Ljava/lang/Boolean;

    array-length v2, v2

    if-eq v12, v2, :cond_9f

    .line 146
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/task/TaskViewByAdapter;->updateIsCheckedArray(I)V

    .line 152
    :cond_9f
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 153
    .local v6, position:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/task/TaskViewByAdapter;->mIsChecked:[Ljava/lang/Boolean;

    aget-object v2, v2, v6

    if-nez v2, :cond_dd

    .line 154
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_db

    const/4 v11, 0x1

    .line 159
    .local v11, checked:Z
    :goto_b6
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    new-instance v2, Lcom/android/task/TaskViewByAdapter$CheckBoxListener;

    move/from16 v0, v19

    int-to-long v4, v0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/task/TaskViewByAdapter$CheckBoxListener;-><init>(Lcom/android/task/TaskViewByAdapter;JILcom/android/task/TaskViewByAdapter$1;)V

    invoke-virtual {v10, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 162
    return-void

    .line 124
    .end local v6           #position:I
    .end local v8           #accountContainer:Landroid/view/View;
    .end local v10           #box:Landroid/widget/CheckBox;
    .end local v11           #checked:Z
    .end local v12           #cursorCount:I
    :cond_cc
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5c

    .line 138
    .restart local v8       #accountContainer:Landroid/view/View;
    :cond_d5
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_84

    .line 154
    .restart local v6       #position:I
    .restart local v10       #box:Landroid/widget/CheckBox;
    .restart local v12       #cursorCount:I
    :cond_db
    const/4 v11, 0x0

    goto :goto_b6

    .line 156
    :cond_dd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/task/TaskViewByAdapter;->mIsChecked:[Ljava/lang/Boolean;

    aget-object v2, v2, v6

    sget-object v3, Lcom/android/task/TaskViewByAdapter;->CHECKED:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_e9

    const/4 v11, 0x1

    .restart local v11       #checked:Z
    :goto_e8
    goto :goto_b6

    .end local v11           #checked:Z
    :cond_e9
    const/4 v11, 0x0

    goto :goto_e8
.end method

.method isChecked(I)Z
    .registers 8
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/android/task/TaskViewByAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 167
    .local v1, cursor:Landroid/database/Cursor;
    const-string v4, "selected"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 168
    .local v2, selectedColumn:I
    iget-object v4, p0, Lcom/android/task/TaskViewByAdapter;->mIsChecked:[Ljava/lang/Boolean;

    aget-object v4, v4, p1

    if-nez v4, :cond_1e

    .line 169
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 170
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1c

    .line 174
    .local v0, checked:Z
    :goto_1b
    return v0

    .end local v0           #checked:Z
    :cond_1c
    move v0, v3

    .line 170
    goto :goto_1b

    .line 172
    :cond_1e
    iget-object v4, p0, Lcom/android/task/TaskViewByAdapter;->mIsChecked:[Ljava/lang/Boolean;

    aget-object v4, v4, p1

    sget-object v5, Lcom/android/task/TaskViewByAdapter;->CHECKED:Ljava/lang/Boolean;

    if-ne v4, v5, :cond_27

    .restart local v0       #checked:Z
    :goto_26
    goto :goto_1b

    .end local v0           #checked:Z
    :cond_27
    move v0, v3

    goto :goto_26
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/task/TaskViewByAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method setChecked(IZ)V
    .registers 13
    .parameter "position"
    .parameter "isChecked"

    .prologue
    const/4 v9, 0x0

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/task/TaskViewByAdapter;->isChecked(I)Z

    move-result v6

    if-eq p2, v6, :cond_8

    .line 191
    :goto_7
    return-void

    .line 182
    :cond_8
    invoke-virtual {p0}, Lcom/android/task/TaskViewByAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 183
    .local v1, cursor:Landroid/database/Cursor;
    const-string v6, "_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 184
    .local v4, idColumn:I
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 185
    .local v2, id:J
    sget-object v6, Lcom/android/task/Tasks;->TASKS_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 186
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/task/TaskViewByAdapter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 187
    if-eqz p2, :cond_3f

    const/4 v0, 0x1

    .line 188
    .local v0, checked:I
    :goto_24
    iget-object v6, p0, Lcom/android/task/TaskViewByAdapter;->mValues:Landroid/content/ContentValues;

    const-string v7, "selected"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    iget-object v6, p0, Lcom/android/task/TaskViewByAdapter;->mResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/android/task/TaskViewByAdapter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v6, v5, v7, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 190
    iget-object v7, p0, Lcom/android/task/TaskViewByAdapter;->mIsChecked:[Ljava/lang/Boolean;

    if-eqz p2, :cond_41

    sget-object v6, Lcom/android/task/TaskViewByAdapter;->CHECKED:Ljava/lang/Boolean;

    :goto_3c
    aput-object v6, v7, p1

    goto :goto_7

    .line 187
    .end local v0           #checked:I
    :cond_3f
    const/4 v0, 0x0

    goto :goto_24

    .line 190
    .restart local v0       #checked:I
    :cond_41
    sget-object v6, Lcom/android/task/TaskViewByAdapter;->UNCHECKED:Ljava/lang/Boolean;

    goto :goto_3c
.end method
