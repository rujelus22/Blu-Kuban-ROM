.class public Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;
.super Landroid/app/Activity;
.source "MusicSettingsMusicMenu.java"

# interfaces
.implements Lcom/sec/android/app/music/common/util/OnLowBatteryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;,
        Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static mEntrance:Z


# instance fields
.field private mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

.field private mContext:Landroid/content/Context;

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private final mMusicMenuCheckBoxIDs:[I

.field private mMusicMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMusicMenuLayoutIDs:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x9

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_26

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuLayoutIDs:[I

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_3c

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuCheckBoxIDs:[I

    .line 84
    new-instance v0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$1;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    new-instance v0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$2;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 337
    return-void

    .line 70
    nop

    :array_26
    .array-data 0x4
        0xc7t 0x0t 0xct 0x7ft
        0xd4t 0x0t 0xct 0x7ft
        0xd6t 0x0t 0xct 0x7ft
        0xd8t 0x0t 0xct 0x7ft
        0xdat 0x0t 0xct 0x7ft
        0xdct 0x0t 0xct 0x7ft
        0xdet 0x0t 0xct 0x7ft
        0xe0t 0x0t 0xct 0x7ft
        0xe2t 0x0t 0xct 0x7ft
    .end array-data

    .line 77
    :array_3c
    .array-data 0x4
        0xd2t 0x0t 0xct 0x7ft
        0xd5t 0x0t 0xct 0x7ft
        0xd7t 0x0t 0xct 0x7ft
        0xd9t 0x0t 0xct 0x7ft
        0xdbt 0x0t 0xct 0x7ft
        0xddt 0x0t 0xct 0x7ft
        0xdft 0x0t 0xct 0x7ft
        0xe1t 0x0t 0xct 0x7ft
        0xe3t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;)Lcom/sec/android/app/music/common/util/BatteryChecker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;Lcom/sec/android/app/music/common/util/BatteryChecker;)Lcom/sec/android/app/music/common/util/BatteryChecker;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->setDisplayByValue()V

    return-void
.end method

.method private getValues()V
    .registers 14

    .prologue
    const/16 v12, 0xe

    const/4 v11, 0x1

    .line 228
    const-string v8, ""

    .line 229
    .local v8, tmpString:Ljava/lang/String;
    const/4 v5, 0x0

    .line 233
    .local v5, st:Ljava/util/StringTokenizer;
    new-array v0, v12, [Z

    .line 234
    .local v0, checkedArrary:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    array-length v10, v0

    if-ge v1, v10, :cond_12

    .line 235
    const/4 v10, 0x0

    aput-boolean v10, v0, v1

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 238
    :cond_12
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getMusicMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 239
    new-instance v5, Ljava/util/StringTokenizer;

    .end local v5           #st:Ljava/util/StringTokenizer;
    const-string v10, "|"

    invoke-direct {v5, v8, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .restart local v5       #st:Ljava/util/StringTokenizer;
    :goto_1d
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_32

    .line 241
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 242
    .local v9, token:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput-boolean v11, v0, v10

    goto :goto_1d

    .line 246
    .end local v9           #token:Ljava/lang/String;
    :cond_32
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getPlaylistMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 247
    new-instance v5, Ljava/util/StringTokenizer;

    .end local v5           #st:Ljava/util/StringTokenizer;
    const-string v10, "|"

    invoke-direct {v5, v8, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .restart local v5       #st:Ljava/util/StringTokenizer;
    :goto_3d
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_52

    .line 249
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 250
    .restart local v9       #token:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput-boolean v11, v0, v10

    goto :goto_3d

    .line 253
    .end local v9           #token:Ljava/lang/String;
    :cond_52
    const/4 v7, 0x0

    .line 254
    .local v7, tmpMenuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    const/4 v6, 0x0

    .line 255
    .local v6, tmpListType:I
    const/4 v2, 0x0

    .line 259
    .local v2, index:I
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getMusicMenuOrder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 260
    new-instance v5, Ljava/util/StringTokenizer;

    .end local v5           #st:Ljava/util/StringTokenizer;
    const-string v10, "|"

    invoke-direct {v5, v8, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .restart local v5       #st:Ljava/util/StringTokenizer;
    :goto_60
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_87

    .line 262
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 263
    .restart local v9       #token:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 265
    iget-object v10, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #tmpMenuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    check-cast v7, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    .line 266
    .restart local v7       #tmpMenuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    invoke-static {v6}, Lcom/sec/android/app/music/common/util/ListType;->getStringRsrcID(I)I

    move-result v10

    aget-boolean v11, v0, v6

    invoke-virtual {v7, v6, v10, v11}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->setMenuItemValue(IIZ)V

    move v2, v3

    .line 268
    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_60

    .line 271
    .end local v9           #token:Ljava/lang/String;
    :cond_87
    const/16 v4, 0xb

    .local v4, p:I
    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    :goto_8a
    if-ge v4, v12, :cond_a3

    .line 272
    iget-object v10, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #tmpMenuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    check-cast v7, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    .line 273
    .restart local v7       #tmpMenuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    invoke-static {v4}, Lcom/sec/android/app/music/common/util/ListType;->getStringRsrcID(I)I

    move-result v10

    aget-boolean v11, v0, v4

    invoke-virtual {v7, v4, v10, v11}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->setMenuItemValue(IIZ)V

    .line 271
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_8a

    .line 275
    :cond_a3
    return-void
.end method

.method private musicMenuEventInit()V
    .registers 5

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 331
    .local v1, menuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 332
    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #menuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    check-cast v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    .line 333
    .restart local v1       #menuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    iget-object v2, v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mMenuLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 335
    :cond_1f
    return-void
.end method

.method private musicMenuLayoutInit()V
    .registers 6

    .prologue
    .line 312
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 313
    const/4 v3, 0x0

    .line 315
    .local v3, menuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    const/4 v2, 0x0

    .line 316
    .local v2, layout:Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .line 319
    .local v0, checkBox:Landroid/widget/CheckBox;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuLayoutIDs:[I

    array-length v4, v4

    if-ge v1, v4, :cond_2f

    .line 320
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuLayoutIDs:[I

    aget v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #layout:Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 321
    .restart local v2       #layout:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuCheckBoxIDs:[I

    aget v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #checkBox:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 323
    .restart local v0       #checkBox:Landroid/widget/CheckBox;
    new-instance v3, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    .end local v3           #menuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    invoke-direct {v3, p0, v2, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;)V

    .line 324
    .restart local v3       #menuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    iget-object v4, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 326
    :cond_2f
    return-void
.end method

.method private setDisplayByValue()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 278
    const-string v3, ""

    .line 279
    .local v3, tabOrderString:Ljava/lang/String;
    const-string v4, ""

    .line 280
    .local v4, tabString:Ljava/lang/String;
    const-string v2, ""

    .line 282
    .local v2, playlistString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 284
    .local v1, menuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_b
    iget-object v6, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_7f

    .line 285
    iget-object v6, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #menuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    check-cast v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    .line 286
    .restart local v1       #menuItem:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    iget-object v6, v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mMenuLayout:Landroid/widget/LinearLayout;

    const v7, 0x7f0c00d1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object v5, v6

    check-cast v5, Landroid/widget/TextView;

    .line 287
    .local v5, tv:Landroid/widget/TextView;
    iget v6, v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mStringID:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 288
    iget-object v6, v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v7, v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mIsChecked:Z

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 290
    iget v6, v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mListType:I

    const/16 v7, 0xa

    if-ge v6, v7, :cond_4d

    .line 291
    const-string v6, "%s%s|"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v3, v7, v9

    iget v8, v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mListType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 293
    :cond_4d
    iget-boolean v6, v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mIsChecked:Z

    if-eqz v6, :cond_69

    .line 294
    iget v6, v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mListType:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_6c

    .line 295
    const-string v6, "%s%s|"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v2, v7, v9

    iget v8, v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mListType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 284
    :cond_69
    :goto_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 297
    :cond_6c
    const-string v6, "%s%s|"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v4, v7, v9

    iget v8, v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mListType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_69

    .line 303
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_7f
    invoke-static {v3}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setMusicMenuOrder(Ljava/lang/String;)V

    .line 304
    invoke-static {v4}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setMusicMenu(Ljava/lang/String;)V

    .line 305
    invoke-static {v2}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setPlaylistMenu(Ljava/lang/String;)V

    .line 306
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 307
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 366
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->setVolumeControlStream(I)V

    .line 129
    const v1, 0x7f03002a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->setContentView(I)V

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 133
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    iput-object p0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mContext:Landroid/content/Context;

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    .line 146
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->musicMenuLayoutInit()V

    .line 147
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->musicMenuEventInit()V

    .line 148
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 211
    const/4 v0, 0x7

    const v1, 0x7f09013f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 213
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v0, :cond_1e

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_19

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 203
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->removeCallback()V

    .line 206
    :cond_1e
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 207
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 218
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_13

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->startActivity(Landroid/content/Intent;)V

    .line 221
    const/4 v0, 0x1

    .line 223
    :goto_12
    return v0

    :cond_13
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_12
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_19

    .line 180
    :goto_5
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v1, :cond_e

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/util/BatteryChecker;->removeCallback()V

    .line 182
    :cond_e
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 184
    return-void

    .line 176
    :catch_19
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->TAG:Ljava/lang/String;

    const-string v2, "onPause : mLowBatteryReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mEntrance:Z

    .line 169
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 155
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->getValues()V

    .line 156
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->setDisplayByValue()V

    .line 157
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 189
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 192
    return-void
.end method
