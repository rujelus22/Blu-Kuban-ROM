.class public Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;
.super Landroid/app/Activity;
.source "SecretWallpaperLocalSetting.java"


# static fields
.field private static curPos:I

.field private static listView:Landroid/widget/ListView;

.field private static mPref:Landroid/content/SharedPreferences;


# instance fields
.field private final fMilliIntervalSet:[J

.field mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mSettingClickListener:Landroid/view/View$OnClickListener;

.field mTimeIntervalCheckListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private strTimeIntervals:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->curPos:I

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->mPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->strTimeIntervals:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_24

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->fMilliIntervalSet:[J

    .line 82
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting$1;

    invoke-direct {v0, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting$1;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->mSettingClickListener:Landroid/view/View$OnClickListener;

    .line 92
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting$2;

    invoke-direct {v0, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting$2;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->mTimeIntervalCheckListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 107
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting$3;

    invoke-direct {v0, p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting$3;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void

    .line 54
    :array_24
    .array-data 0x8
        0x1et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 48
    sget v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->curPos:I

    return v0
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    sput p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->curPos:I

    return p0
.end method

.method static synthetic access$100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;)[J
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->fMilliIntervalSet:[J

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/SharedPreferences;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->mPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private changeView(Ljava/lang/String;)V
    .registers 8
    .parameter "strShow"

    .prologue
    .line 120
    const v2, 0x7f040001

    invoke-virtual {p0, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->setContentView(I)V

    .line 122
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->setTitle(I)V

    .line 124
    const v2, 0x7f090002

    invoke-virtual {p0, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 126
    .local v0, btnCancle:Landroid/widget/Button;
    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->mSettingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const/high16 v2, 0x7f09

    invoke-virtual {p0, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    sput-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->listView:Landroid/widget/ListView;

    .line 130
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->listView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x109000f

    iget-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->strTimeIntervals:[Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->listView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 134
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->listView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 136
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->mTimeIntervalCheckListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    sget-object v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 139
    const v2, 0x7f090001

    invoke-virtual {p0, v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 140
    .local v1, ll:Landroid/widget/LinearLayout;
    const v2, 0x7f02007c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 142
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->refreshIntervalList()V

    .line 143
    return-void
.end method

.method private getInterval()J
    .registers 9

    .prologue
    .line 146
    const-wide/16 v2, 0x0

    .line 148
    .local v2, retInterval:J
    :try_start_2
    sget-object v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->mPref:Landroid/content/SharedPreferences;

    const-string v5, "interval_1"

    const-wide/16 v6, 0x3c

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_b} :catch_d

    move-result-wide v2

    .line 157
    :goto_c
    return-wide v2

    .line 149
    :catch_d
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 152
    const-wide/16 v2, 0x3c

    .line 153
    sget-object v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 154
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "interval_1"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_c
.end method

.method private init()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    .line 74
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->strTimeIntervals:[Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->strTimeIntervals:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    const-string v0, "com.sec.ccl.csp.app.secretwallpaper"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->mPref:Landroid/content/SharedPreferences;

    .line 80
    return-void
.end method

.method private refreshIntervalList()V
    .registers 7

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->getInterval()J

    move-result-wide v0

    .line 164
    .local v0, curInterval:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->fMilliIntervalSet:[J

    array-length v3, v3

    if-ge v2, v3, :cond_14

    .line 165
    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->fMilliIntervalSet:[J

    aget-wide v3, v3, v2

    cmp-long v3, v0, v3

    if-nez v3, :cond_1d

    .line 166
    sput v2, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->curPos:I

    .line 170
    :cond_14
    sget-object v3, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->listView:Landroid/widget/ListView;

    sget v4, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->curPos:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 171
    return-void

    .line 164
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 68
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->init()V

    .line 69
    const-string v0, "Settings"

    invoke-direct {p0, v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperLocalSetting;->changeView(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 182
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 176
    return-void
.end method
