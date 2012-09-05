.class public Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;
.super Landroid/preference/PreferenceActivity;
.source "MenuSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/sec/android/widgetapp/weatherclock/model/IActivityVisibleState;


# static fields
.field private static keyBuf:Ljava/lang/String;

.field private static mSlogState:I

.field private static final mappingKey:Ljava/lang/String;


# instance fields
.field private LogGroup:Landroid/widget/RadioGroup;

.field private autorefresh_preferences:Landroid/preference/ListPreference;

.field private autoscroll_preferences:Landroid/preference/ListPreference;

.field ch_location:I

.field creating:Z

.field location:I

.field private location_preferences:Landroid/preference/CheckBoxPreference;

.field private mAppWidgetId:I

.field private mCtx:Landroid/content/Context;

.field private mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

.field mIsVisible:Z

.field mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mSlogEdit:Landroid/widget/EditText;

.field private mSlogText:Landroid/widget/TextView;

.field private refreshItems:[Ljava/lang/String;

.field private refreshItemsValue:[Ljava/lang/String;

.field private refreshTimes:[I

.field private scrollItems:[Ljava/lang/String;

.field private scrollItemsValue:[Ljava/lang/String;

.field private scrollTimes:[I

.field private unit_preferences:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 67
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->keyBuf:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mappingKey:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mSlogState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->refreshItems:[Ljava/lang/String;

    .line 54
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v4

    const-string v1, "1"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const-string v1, "3"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->refreshItemsValue:[Ljava/lang/String;

    .line 55
    new-array v0, v5, [I

    fill-array-data v0, :array_62

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->refreshTimes:[I

    .line 59
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->scrollItems:[Ljava/lang/String;

    .line 60
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v4

    const-string v1, "1"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->scrollItemsValue:[Ljava/lang/String;

    .line 61
    new-array v0, v3, [I

    fill-array-data v0, :array_72

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->scrollTimes:[I

    .line 76
    iput-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mSlogText:Landroid/widget/TextView;

    .line 78
    iput-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->LogGroup:Landroid/widget/RadioGroup;

    .line 79
    iput-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mSlogEdit:Landroid/widget/EditText;

    .line 82
    const/16 v0, 0x63

    iput v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->ch_location:I

    .line 234
    new-instance v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$3;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 293
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->creating:Z

    return-void

    .line 55
    :array_62
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    .line 61
    :array_72
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 38
    sget v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mSlogState:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    sput p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mSlogState:I

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setSLog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->init()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setValues()V

    return-void
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .registers 1

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setView()V

    .line 392
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setEntries()V

    .line 393
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setValues()V

    .line 394
    return-void
.end method

.method private setEntries()V
    .registers 10

    .prologue
    const v8, 0x7f090012

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 410
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->refreshTimes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_43

    .line 412
    if-nez v0, :cond_19

    .line 413
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->refreshItems:[Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 410
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 414
    :cond_19
    if-ne v0, v5, :cond_27

    .line 415
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f090013

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_16

    .line 417
    :cond_27
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->refreshItems:[Ljava/lang/String;

    const v2, 0x7f090014

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->refreshTimes:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_16

    .line 419
    :cond_43
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->autorefresh_preferences:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->refreshItems:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 420
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->autorefresh_preferences:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->refreshItemsValue:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 422
    const/4 v0, 0x0

    :goto_52
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->scrollTimes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_80

    .line 424
    if-nez v0, :cond_64

    .line 425
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->scrollItems:[Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 422
    :goto_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 427
    :cond_64
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->scrollItems:[Ljava/lang/String;

    const v2, 0x7f09007a

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->scrollTimes:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_61

    .line 429
    :cond_80
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->autoscroll_preferences:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->scrollItems:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 430
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->autoscroll_preferences:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->scrollItemsValue:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 432
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->unit_preferences:Landroid/preference/ListPreference;

    new-array v2, v7, [Ljava/lang/String;

    const v3, 0x7f09005a

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f090059

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 434
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->unit_preferences:Landroid/preference/ListPreference;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 436
    return-void
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 261
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2d

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->keyBuf:Ljava/lang/String;

    .line 270
    :goto_18
    sget-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mappingKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_2c

    .line 272
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->keyBuf:Ljava/lang/String;

    .line 274
    :cond_2c
    return-void

    .line 267
    :cond_2d
    sput-object p1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setSLog(I)V
    .registers 6
    .parameter "set"

    .prologue
    .line 283
    const-string v2, "prefs_slog"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 284
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 285
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "slog_on"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 288
    sput p1, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    .line 289
    return-void
.end method

.method private setValues()V
    .registers 12

    .prologue
    const v10, 0x7f090012

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 440
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getTempScaleSetting()I

    move-result v3

    .line 441
    .local v3, unit:I
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getCurrentLocationSettings()I

    move-result v4

    iput v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->location:I

    .line 442
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAutoscrollSettings()I

    move-result v2

    .line 443
    .local v2, autoscroll:I
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->getAutoRefreshTime()I

    move-result v0

    .line 445
    .local v0, autorefresh:I
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->unit_preferences:Landroid/preference/ListPreference;

    if-ne v3, v6, :cond_68

    const v4, 0x7f09005a

    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2a
    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->unit_preferences:Landroid/preference/ListPreference;

    if-ne v3, v6, :cond_70

    move v4, v5

    :goto_32
    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 447
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->location_preferences:Landroid/preference/CheckBoxPreference;

    iget v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->location:I

    if-ne v4, v6, :cond_72

    move v4, v6

    :goto_3c
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 448
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->location_preferences:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f090028

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 450
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->autoscroll_preferences:Landroid/preference/ListPreference;

    if-nez v2, :cond_74

    invoke-virtual {p0, v10}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_4f
    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->autoscroll_preferences:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 455
    if-nez v0, :cond_88

    .line 456
    invoke-virtual {p0, v10}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, autorefresh_time:Ljava/lang/String;
    :goto_5d
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->autorefresh_preferences:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->autorefresh_preferences:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 468
    return-void

    .line 445
    .end local v1           #autorefresh_time:Ljava/lang/String;
    :cond_68
    const v4, 0x7f090059

    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2a

    :cond_70
    move v4, v6

    .line 446
    goto :goto_32

    :cond_72
    move v4, v5

    .line 447
    goto :goto_3c

    .line 450
    :cond_74
    const v4, 0x7f09007a

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->scrollTimes:[I

    aget v9, v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {p0, v4, v8}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4f

    .line 458
    :cond_88
    if-ne v0, v6, :cond_92

    .line 459
    const v4, 0x7f090013

    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #autorefresh_time:Ljava/lang/String;
    goto :goto_5d

    .line 462
    .end local v1           #autorefresh_time:Ljava/lang/String;
    :cond_92
    const v4, 0x7f090014

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->refreshTimes:[I

    aget v7, v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {p0, v4, v6}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #autorefresh_time:Ljava/lang/String;
    goto :goto_5d
.end method

.method private setView()V
    .registers 2

    .prologue
    .line 397
    const-string v0, "unit"

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->unit_preferences:Landroid/preference/ListPreference;

    .line 398
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->location_preferences:Landroid/preference/CheckBoxPreference;

    .line 399
    const-string v0, "autoscroll"

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->autoscroll_preferences:Landroid/preference/ListPreference;

    .line 400
    const-string v0, "autorefresh"

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->autorefresh_preferences:Landroid/preference/ListPreference;

    .line 402
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->unit_preferences:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->location_preferences:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 404
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->autoscroll_preferences:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 405
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->autorefresh_preferences:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 406
    return-void
.end method


# virtual methods
.method public cleanResource()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->close()V

    .line 331
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 333
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->unit_preferences:Landroid/preference/ListPreference;

    .line 334
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->location_preferences:Landroid/preference/CheckBoxPreference;

    .line 335
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->autoscroll_preferences:Landroid/preference/ListPreference;

    .line 336
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->autorefresh_preferences:Landroid/preference/ListPreference;

    .line 338
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->scrollItems:[Ljava/lang/String;

    .line 339
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->scrollItemsValue:[Ljava/lang/String;

    .line 340
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->scrollTimes:[I

    .line 342
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->refreshItems:[Ljava/lang/String;

    .line 343
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->refreshItemsValue:[Ljava/lang/String;

    .line 344
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->refreshTimes:[I

    .line 345
    iput-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->LogGroup:Landroid/widget/RadioGroup;

    .line 346
    return-void
.end method

.method public isActivityVisible()Z
    .registers 2

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mIsVisible:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 379
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 380
    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    .line 381
    invoke-virtual {p0, p2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setResult(I)V

    .line 382
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->finish()V

    .line 385
    :cond_c
    if-nez p1, :cond_11

    .line 386
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->init()V

    .line 388
    :cond_11
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 350
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 351
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->init()V

    .line 352
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 295
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 296
    iput-object p0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mCtx:Landroid/content/Context;

    .line 297
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 298
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 299
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_19

    .line 300
    const-string v2, "appWidgetId"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mAppWidgetId:I

    .line 303
    :cond_19
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->addPreferencesFromResource(I)V

    .line 304
    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setActivityVisibleState(Z)V

    .line 305
    new-instance v2, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    .line 307
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->init()V

    .line 308
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->creating:Z

    .line 309
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 114
    packed-switch p1, :pswitch_data_10e

    .line 231
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_7
    return-object v2

    .line 117
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 118
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    .local v1, slog_view:Landroid/view/View;
    const v2, 0x7f0c0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->LogGroup:Landroid/widget/RadioGroup;

    .line 121
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 123
    const v2, 0x7f0c0012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mSlogText:Landroid/widget/TextView;

    .line 124
    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mSlogEdit:Landroid/widget/EditText;

    .line 125
    sget v2, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    sput v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mSlogState:I

    .line 126
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mSlogText:Landroid/widget/TextView;

    if-eqz v2, :cond_4d

    .line 128
    sget v2, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mSlogState:I

    packed-switch v2, :pswitch_data_114

    .line 149
    :cond_4d
    :goto_4d
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$2;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$2;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Cancel"

    new-instance v4, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$1;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_7

    .line 132
    :pswitch_87
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0c0014

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_4d

    .line 138
    :pswitch_b3
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0c0015

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 144
    :pswitch_e0
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mSlogText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLog Current State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090075

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->LogGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0c0016

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_4d

    .line 114
    nop

    :pswitch_data_10e
    .packed-switch 0x3e7
        :pswitch_8
    .end packed-switch

    .line 128
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_87
        :pswitch_b3
        :pswitch_e0
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 312
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 314
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->cleanResource()V

    .line 315
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 93
    const-string v0, "Tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> KD <<<<<<<< : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 99
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getKeyBuffer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mappingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 101
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->showDialog(I)V

    .line 102
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 107
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 363
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 364
    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->ch_location:I

    const/16 v2, 0x63

    if-eq v1, v2, :cond_27

    iget v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->location:I

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->ch_location:I

    if-eq v1, v2, :cond_27

    .line 366
    const-string v1, ""

    const-string v2, "Loc setting changed in menusettings"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 368
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "flags"

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->ch_location:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    const/16 v1, 0x4b00

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setResult(ILandroid/content/Intent;)V

    .line 371
    .end local v0           #intent:Landroid/content/Intent;
    :cond_27
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setActivityVisibleState(Z)V

    .line 373
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.widgetapp.weatherclock.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 376
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 14
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 472
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v8, "unit"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 474
    const-string v8, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unit setting"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v5, p1

    check-cast v5, Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p1

    .line 475
    check-cast v5, Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 637
    .end local p1
    :cond_4d
    :goto_4d
    return v7

    .line 479
    .restart local p1
    :cond_4e
    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_68

    move v5, v6

    :goto_5b
    invoke-virtual {v8, v5}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateTempScale(I)I

    move-result v3

    .line 481
    .local v3, result:I
    if-ne v3, v10, :cond_6a

    .line 482
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setResult(I)V

    .line 483
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->finish()V

    goto :goto_4d

    .end local v3           #result:I
    :cond_68
    move v5, v7

    .line 479
    goto :goto_5b

    .line 487
    .restart local v3       #result:I
    :cond_6a
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 488
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mCtx:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->CheckSameDaemonCityIdAtStting(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)V

    .line 489
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setValues()V

    goto :goto_4d

    .line 493
    .end local v3           #result:I
    .restart local p1
    :cond_82
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v8, "location"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b9

    move-object v5, p1

    .line 496
    check-cast v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 497
    const/4 v4, 0x0

    .line 501
    .local v4, value:I
    :goto_98
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {v5, v4}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateCurrentLocationSettings(I)I

    move-result v3

    .line 502
    .restart local v3       #result:I
    if-ne v3, v10, :cond_a9

    .line 503
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setResult(I)V

    .line 504
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->finish()V

    goto :goto_4d

    .line 499
    .end local v3           #result:I
    .end local v4           #value:I
    :cond_a7
    const/4 v4, 0x1

    .restart local v4       #value:I
    goto :goto_98

    .line 508
    .restart local v3       #result:I
    :cond_a9
    if-ne v4, v6, :cond_b3

    .line 509
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 512
    :goto_b0
    iput v4, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->ch_location:I

    goto :goto_4d

    .line 511
    .restart local p1
    :cond_b3
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_b0

    .line 515
    .end local v3           #result:I
    .end local v4           #value:I
    .restart local p1
    :cond_b9
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v8, "autoscroll"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_110

    move-object v5, p1

    .line 518
    check-cast v5, Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d9

    move v7, v6

    .line 519
    goto/16 :goto_4d

    .line 522
    :cond_d9
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateAutoScrollSettings(I)I

    move-result v3

    .line 524
    .restart local v3       #result:I
    if-ne v3, v10, :cond_f1

    .line 525
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setResult(I)V

    .line 526
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->finish()V

    goto/16 :goto_4d

    .line 530
    :cond_f1
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->init()V

    .line 532
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 533
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setValues()V

    .line 534
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.weathercolco.action.CHANGE_SETTING"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4d

    .line 539
    .end local v3           #result:I
    .restart local p1
    :cond_110
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v8, "autorefresh"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    move-object v5, p1

    .line 541
    check-cast v5, Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_130

    move v7, v6

    .line 542
    goto/16 :goto_4d

    .line 545
    :cond_130
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f070005

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_17f

    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->simEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_17f

    move-object v5, p1

    check-cast v5, Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v8, "0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17f

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_17f

    const-string v5, "config"

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v8, "CONFIRM_AUTOREFRESH"

    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_17f

    .line 547
    const/16 v5, 0x3f4

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;

    invoke-direct {v6, p0, p2, p1}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$4;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;Ljava/lang/Object;Landroid/preference/Preference;)V

    invoke-static {p0, v5, v6}, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->showDialog(Landroid/content/Context;ILcom/sec/android/widgetapp/weatherclock/common/DialogInteraction;)Landroid/app/Dialog;

    move-result-object v0

    .line 579
    .local v0, confirm:Landroid/app/Dialog;
    new-instance v5, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$5;

    invoke-direct {v5, p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$5;-><init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_4d

    .line 593
    .end local v0           #confirm:Landroid/app/Dialog;
    :cond_17f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1d7

    .line 595
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateAutoRefreshTime(I)I

    move-result v3

    .line 597
    .restart local v3       #result:I
    if-ne v3, v10, :cond_1a1

    .line 598
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setResult(I)V

    .line 599
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->finish()V

    goto/16 :goto_4d

    .line 602
    :cond_1a1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setAutorefreshSetting(Landroid/content/Context;I)Z

    .line 603
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    move-result-wide v1

    .line 604
    .local v1, nextTime:J
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastTime(Landroid/content/Context;J)Z

    .line 605
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->init()V

    .line 607
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 608
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mCtx:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->CheckSameDaemonCityIdAtStting(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)V

    .line 609
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setValues()V

    goto/16 :goto_4d

    .line 615
    .end local v1           #nextTime:J
    .end local v3           #result:I
    .restart local p1
    :cond_1d7
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;->updateAutoRefreshTime(I)I

    move-result v3

    .line 617
    .restart local v3       #result:I
    if-ne v3, v10, :cond_1ef

    .line 618
    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setResult(I)V

    .line 619
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->finish()V

    goto/16 :goto_4d

    .line 623
    :cond_1ef
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v5}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setAutorefreshSetting(Landroid/content/Context;I)Z

    .line 625
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    move-result-wide v1

    .line 626
    .restart local v1       #nextTime:J
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v2}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->setLastTime(Landroid/content/Context;J)Z

    .line 628
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->init()V

    .line 630
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 631
    iget-object v5, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mCtx:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mDbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    invoke-static {v5, v6}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->CheckSameDaemonCityIdAtStting(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)V

    .line 632
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setValues()V

    goto/16 :goto_4d
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 318
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 320
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->creating:Z

    if-nez v0, :cond_a

    .line 321
    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->init()V

    .line 323
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->creating:Z

    .line 324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->setActivityVisibleState(Z)V

    .line 325
    invoke-static {p0}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->setContext(Landroid/content/Context;)V

    .line 326
    return-void
.end method

.method public setActivityVisibleState(Z)V
    .registers 2
    .parameter "onoff"

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->mIsVisible:Z

    .line 360
    return-void
.end method
