.class public Lcom/sec/android/app/clockpackage/alarm/Alarm;
.super Landroid/app/Activity;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;,
        Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;
    }
.end annotation


# static fields
.field public static final ALARM_DURATION_TABLE:[I

.field public static final ALARM_SNOOZE_COUNT_TABLE:[I

.field public static final ALARM_SUBDUE_URI:[Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final DEBUG_ENG:Z

.field static final SMART_ALARM_TONE:[I

.field private static p:Landroid/os/Parcel;


# instance fields
.field private mCreateAlarm:Landroid/view/View;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDeleteDialogListener:Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;

.field private mDeletePosition:I

.field private mFirstLaunch:Z

.field private mInfoAlarmName:Ljava/lang/String;

.field private mIsInfoAlarm:Z

.field private mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

.field private mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

.field private mOrientation:I

.field private mReceiver:Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;

.field private mSetAsUri:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_52

    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    .line 42
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_54

    move v0, v1

    :goto_18
    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    .line 93
    new-array v0, v4, [I

    fill-array-data v0, :array_56

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SNOOZE_COUNT_TABLE:[I

    .line 99
    new-array v0, v4, [I

    fill-array-data v0, :array_64

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    .line 101
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "/system/media/audio/ui/Morning.ogg"

    aput-object v3, v0, v2

    const-string v2, "/system/media/audio/ui/Breeze.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/media/audio/ui/Mist.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/system/media/audio/ui/Forest.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/system/media/audio/ui/Light.ogg"

    aput-object v2, v0, v1

    const-string v1, "/system/media/audio/ui/Rain.ogg"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SUBDUE_URI:[Ljava/lang/String;

    .line 110
    new-array v0, v5, [I

    fill-array-data v0, :array_72

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->SMART_ALARM_TONE:[I

    .line 138
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->p:Landroid/os/Parcel;

    return-void

    :cond_52
    move v0, v2

    .line 41
    goto :goto_d

    :cond_54
    move v0, v2

    .line 42
    goto :goto_18

    .line 93
    :array_56
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 99
    :array_64
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    .line 110
    :array_72
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 128
    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I

    .line 129
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 130
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;-><init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;Lcom/sec/android/app/clockpackage/alarm/Alarm$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeleteDialogListener:Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;

    .line 131
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mFirstLaunch:Z

    .line 132
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mSetAsUri:Ljava/lang/String;

    .line 133
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mIsInfoAlarm:Z

    .line 134
    iput-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mInfoAlarmName:Ljava/lang/String;

    .line 136
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;Lcom/sec/android/app/clockpackage/alarm/Alarm$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;

    .line 137
    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mOrientation:I

    .line 685
    return-void
.end method

.method private InitAlarmList()V
    .registers 12

    .prologue
    const v10, 0x7f0e0039

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 157
    const v5, 0x7f030005

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->setContentView(I)V

    .line 159
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mOrientation:I

    .line 161
    const/4 v4, 0x0

    .line 163
    .local v4, windowOrientation:I
    iget v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mOrientation:I

    if-nez v5, :cond_12e

    .line 164
    const/4 v4, 0x1

    .line 168
    :goto_24
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 169
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "alarm_uri"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mSetAsUri:Ljava/lang/String;

    .line 171
    const-string v5, "info_alarm"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_3a

    .line 172
    iput-boolean v8, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mIsInfoAlarm:Z

    .line 174
    :cond_3a
    const-string v5, "alarm_name"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mInfoAlarmName:Ljava/lang/String;

    .line 176
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 177
    .local v2, li:Landroid/view/LayoutInflater;
    new-array v1, v8, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    .line 179
    .local v1, items:[Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeleteDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_78

    .line 180
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeleteDialogListener:Lcom/sec/android/app/clockpackage/alarm/Alarm$DeleteDialogListener;

    invoke-virtual {v5, v1, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 183
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/sec/android/app/clockpackage/alarm/Alarm$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 191
    :cond_78
    const-string v5, "SPH-D710"

    const-string v6, "SGH-I927"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_131

    .line 192
    invoke-virtual {p0, v10}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 193
    .local v3, mCreateAlarmheadlayout:Landroid/widget/Button;
    new-instance v5, Lcom/sec/android/app/clockpackage/alarm/Alarm$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm$2;-><init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .end local v3           #mCreateAlarmheadlayout:Landroid/widget/Button;
    :cond_90
    :goto_90
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    if-nez v5, :cond_af

    .line 214
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->getAlarmData()Landroid/database/Cursor;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursor:Landroid/database/Cursor;

    .line 215
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->startManagingCursor(Landroid/database/Cursor;)V

    .line 216
    new-instance v5, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursor:Landroid/database/Cursor;

    invoke-direct {v5, p0, v6}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    .line 218
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mSetAsUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->setAsUri(Ljava/lang/String;)V

    .line 221
    :cond_af
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    if-nez v5, :cond_e4

    .line 222
    new-instance v5, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    invoke-direct {v5}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    .line 223
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->setCursorAdapter(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)V

    .line 225
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    new-instance v6, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm$4;-><init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->setOnItemChangeListener(Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;)V

    .line 251
    const-string v5, "SPH-D710"

    const-string v6, "SGH-I927"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14e

    .line 255
    :goto_d5
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCount()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_156

    .line 256
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->setHeaderVisibility(I)V

    .line 261
    :cond_e4
    :goto_e4
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    if-eqz v5, :cond_f2

    .line 262
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->unregisterForContextMenu(Landroid/view/View;)V

    .line 263
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 266
    :cond_f2
    const v5, 0x7f0e0011

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    .line 267
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->setOrientation(I)V

    .line 268
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    invoke-virtual {v5, v8}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->setItemsCanFocus(Z)V

    .line 271
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    new-instance v6, Lcom/sec/android/app/clockpackage/alarm/Alarm$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm$5;-><init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 286
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    new-instance v6, Lcom/sec/android/app/clockpackage/alarm/Alarm$6;

    invoke-direct {v6, p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm$6;-><init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->setOnItemLongClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemLongClickListener;)V

    .line 299
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->registerForContextMenu(Landroid/view/View;)V

    .line 300
    invoke-static {p0, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mToast:Landroid/widget/Toast;

    .line 301
    return-void

    .line 166
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #items:[Ljava/lang/CharSequence;
    .end local v2           #li:Landroid/view/LayoutInflater;
    :cond_12e
    const/4 v4, 0x0

    goto/16 :goto_24

    .line 199
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #items:[Ljava/lang/CharSequence;
    .restart local v2       #li:Landroid/view/LayoutInflater;
    :cond_131
    const v5, 0x7f030007

    invoke-virtual {v2, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCreateAlarm:Landroid/view/View;

    .line 201
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCreateAlarm:Landroid/view/View;

    if-eqz v5, :cond_90

    .line 202
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCreateAlarm:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 204
    .local v3, mCreateAlarmheadlayout:Landroid/view/View;
    new-instance v5, Lcom/sec/android/app/clockpackage/alarm/Alarm$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm$3;-><init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_90

    .line 252
    .end local v3           #mCreateAlarmheadlayout:Landroid/view/View;
    :cond_14e
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCreateAlarm:Landroid/view/View;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->addHeaderView(Landroid/view/View;)Z

    goto :goto_d5

    .line 258
    :cond_156
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->setHeaderVisibility(I)V

    goto :goto_e4
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/alarm/Alarm;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/clockpackage/alarm/Alarm;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I

    return p1
.end method

.method static synthetic access$210(Lcom/sec/android/app/clockpackage/alarm/Alarm;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->controlListHead()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Lcom/sec/android/app/clockpackage/alarm/CustomListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/clockpackage/alarm/Alarm;Ljava/lang/String;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->startDetailView(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/clockpackage/alarm/Alarm;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private controlListHead()V
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 562
    const-string v5, "Alarm"

    const-string v6, "controlListHead"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const v5, 0x7f0e0034

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 567
    .local v3, mNoItemLayout_image:Landroid/widget/LinearLayout;
    const v5, 0x7f0e0035

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 568
    .local v0, NoItemImage_view:Landroid/view/View;
    new-instance v5, Lcom/sec/android/app/clockpackage/alarm/Alarm$7;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm$7;-><init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    const v5, 0x7f0e0036

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 577
    .local v1, NoItemText_view:Landroid/view/View;
    new-instance v5, Lcom/sec/android/app/clockpackage/alarm/Alarm$8;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm$8;-><init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    const v5, 0x7f0e0032

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 584
    .local v2, mNoItemLayout_TaptoAdd:Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_58

    .line 585
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 586
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 592
    :goto_48
    const v5, 0x7f0e0033

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 593
    .local v4, mNoItemLayout_txtCreate:Landroid/view/View;
    new-instance v5, Lcom/sec/android/app/clockpackage/alarm/Alarm$9;

    invoke-direct {v5, p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm$9;-><init>(Lcom/sec/android/app/clockpackage/alarm/Alarm;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    return-void

    .line 588
    .end local v4           #mNoItemLayout_txtCreate:Landroid/view/View;
    :cond_58
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 589
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_48
.end method

.method public static final digitToAlphabetStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "oldStr"

    .prologue
    const/16 v5, 0x9

    .line 755
    const/4 v1, 0x0

    .line 756
    .local v1, i:I
    const/16 v3, 0xa

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "A"

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const-string v4, "B"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "C"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "D"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "E"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "F"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "G"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "H"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "I"

    aput-object v4, v0, v3

    const-string v3, "J"

    aput-object v3, v0, v5

    .line 757
    .local v0, alphabet:[Ljava/lang/String;
    move-object v2, p0

    .line 759
    .local v2, newStr:Ljava/lang/String;
    const-string v3, ":"

    const-string v4, "##"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 760
    const/4 v1, 0x0

    :goto_43
    if-gt v1, v5, :cond_52

    .line 761
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 760
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 764
    :cond_52
    sget-boolean v3, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v3, :cond_78

    .line 765
    const-string v3, "Alarm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[digitToAlphabetStr]\n oldStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n newStr ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_78
    return-object v2
.end method

.method private getAlarmData()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "createtime DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final removeClockPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "oldStr"

    .prologue
    .line 774
    move-object v0, p0

    .line 776
    .local v0, newStr:Ljava/lang/String;
    const-string v1, "Alarm"

    const-string v2, "ClockAlarmPackageNameRemoved"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v1, "com.sec."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 780
    const-string v1, "com.samsung.sec."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 782
    const-string v1, "android.app.clockpackage"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 783
    const-string v1, "android.clockpackage"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 786
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG_ENG:Z

    if-eqz v1, :cond_4e

    .line 787
    const-string v1, "Alarm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[removeClockPackageName]\n oldStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n newStr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_4e
    return-object v0
.end method

.method private showSaveMessage(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_5

    .line 356
    :goto_4
    return-void

    .line 353
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method

.method private startDetailView(Ljava/lang/String;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 304
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->startDetailView(Ljava/lang/String;I)V

    .line 305
    return-void
.end method

.method private startDetailView(Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 308
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 309
    const-class v1, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 310
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mSetAsUri:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 313
    const-string v1, "alarm_uri"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mSetAsUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    :cond_18
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mIsInfoAlarm:Z

    if-eqz v1, :cond_23

    .line 316
    const-string v1, "alarm_name"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mInfoAlarmName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    :cond_23
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 320
    const/4 v2, -0x1

    if-ne p2, v2, :cond_64

    .line 321
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ID"

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCount()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    :goto_37
    const-string v2, "alarm_edit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 329
    invoke-interface {v1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 331
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->createItemFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v1

    .line 333
    if-eqz v1, :cond_5e

    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->p:Landroid/os/Parcel;

    .line 335
    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->p:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->writeToParcel(Landroid/os/Parcel;)V

    .line 336
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_DATA"

    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->p:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 340
    :cond_5e
    const/16 v1, 0x4001

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 341
    return-void

    .line 323
    :cond_64
    invoke-interface {v1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 324
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ID"

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_POSITION"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_37
.end method


# virtual methods
.method public createNewAlarm()V
    .registers 3

    .prologue
    .line 743
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    if-eqz v0, :cond_19

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCount()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1a

    .line 745
    const v0, 0x7f0b0069

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 751
    :cond_19
    :goto_19
    return-void

    .line 748
    :cond_1a
    const-string v0, "alarm_create"

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->startDetailView(Ljava/lang/String;)V

    goto :goto_19
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 618
    packed-switch p1, :pswitch_data_4e

    .line 652
    :cond_3
    :goto_3
    return-void

    .line 620
    :pswitch_4
    if-lez p2, :cond_3

    .line 621
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    if-eqz v3, :cond_3

    .line 623
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 624
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 625
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_2a

    .line 626
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->setHeaderVisibility(I)V

    .line 630
    :goto_21
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->requestLayout()V

    .line 631
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->enableNextAlert(Landroid/content/Context;)V

    goto :goto_3

    .line 628
    :cond_2a
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mListAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->setHeaderVisibility(I)V

    goto :goto_21

    .line 637
    .end local v0           #c:Landroid/database/Cursor;
    :pswitch_32
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 638
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 640
    .local v1, datas:Landroid/os/Bundle;
    const-string v3, "save_msg"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 642
    .local v2, strAlarmSaveMsg:Ljava/lang/String;
    if-eqz v2, :cond_46

    .line 643
    invoke-direct {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->showSaveMessage(Ljava/lang/String;)V

    .line 644
    :cond_46
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mSetAsUri:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 645
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->finish()V

    goto :goto_3

    .line 618
    :pswitch_data_4e
    .packed-switch 0x4000
        :pswitch_4
        :pswitch_32
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 403
    sget-boolean v1, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 404
    const-string v1, "Alarm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check screen orientation configuration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_1e
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 408
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mOrientation:I

    .line 410
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 411
    .local v0, par:Landroid/os/Parcelable;
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->InitAlarmList()V

    .line 412
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 413
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->controlListHead()V

    .line 414
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->requestLayout()V

    .line 416
    const v1, 0x7f0b0002

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->setTitle(I)V

    .line 417
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_SAVE_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 422
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 424
    const v0, 0x7f0b0028

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020157

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 426
    const/4 v0, 0x3

    const v1, 0x7f0b0035

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020158

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 435
    const/4 v0, 0x4

    const v1, 0x7f0b006c

    invoke-interface {p1, v4, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02015d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 445
    return v3
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 731
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mReceiver:Lcom/sec/android/app/clockpackage/alarm/Alarm$MyReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 736
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    if-eqz v0, :cond_17

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->unregisterForContextMenu(Landroid/view/View;)V

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mList:Lcom/sec/android/app/clockpackage/alarm/CustomListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 740
    :cond_17
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 470
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_58

    .line 502
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_52

    .line 503
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/clockpackage/alarm/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 504
    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->startActivity(Landroid/content/Intent;)V

    .line 517
    :goto_19
    return v0

    .line 472
    :pswitch_1a
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCount()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_32

    .line 473
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mToast:Landroid/widget/Toast;

    const v2, 0x7f0b0069

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 474
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_19

    .line 476
    :cond_32
    const-string v1, "alarm_create"

    invoke-direct {p0, v1}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->startDetailView(Ljava/lang/String;)V

    goto :goto_19

    .line 482
    :pswitch_38
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 484
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mSetAsUri:Ljava/lang/String;

    if-nez v2, :cond_47

    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mIsInfoAlarm:Z

    if-eqz v2, :cond_4c

    .line 485
    :cond_47
    const-string v2, "finish_delete"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 487
    :cond_4c
    const/16 v2, 0x4000

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_19

    .line 517
    :cond_52
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_19

    .line 470
    nop

    :pswitch_data_58
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_38
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 522
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 531
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 532
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mOrientation:I

    .line 533
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 450
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 452
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCount()I

    move-result v0

    .line 454
    .local v0, itemCount:I
    const/16 v1, 0xa

    if-ge v0, v1, :cond_18

    .line 455
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 459
    :goto_12
    if-lez v0, :cond_1c

    .line 460
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 464
    :goto_17
    return v2

    .line 457
    :cond_18
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_12

    .line 462
    :cond_1c
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_17
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "bundle"

    .prologue
    .line 602
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 604
    const-string v0, "alarm_first_launch"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mFirstLaunch:Z

    .line 605
    const-string v0, "delete_dialog_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I

    .line 606
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->InitAlarmList()V

    .line 607
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 537
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 538
    const-string v0, "Alarm"

    const-string v1, "onResume called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 542
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->InitAlarmList()V

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_22

    .line 552
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mFirstLaunch:Z

    if-eqz v0, :cond_22

    .line 553
    const-string v0, "alarm_create"

    invoke-direct {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->startDetailView(Ljava/lang/String;)V

    .line 557
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mFirstLaunch:Z

    .line 558
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/Alarm;->controlListHead()V

    .line 559
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 611
    const-string v0, "alarm_first_launch"

    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mFirstLaunch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 612
    const-string v0, "delete_dialog_item"

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->mDeletePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 613
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 614
    return-void
.end method
