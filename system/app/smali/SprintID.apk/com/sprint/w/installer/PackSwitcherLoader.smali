.class public Lcom/sprint/w/installer/PackSwitcherLoader;
.super Ljava/lang/Object;
.source "PackSwitcherLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;,
        Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;,
        Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;,
        Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;
    }
.end annotation


# static fields
.field public static final MAX_PACKS:I = 0x6

.field public static final PACK_HOME:Ljava/lang/String; = "HOME"

.field public static final PACK_OEM:Ljava/lang/String; = "OEM"

.field static final SWITCHER_IMAGE_HEIGHT_MDPI:I = 0x5f

.field static final SWITCHER_IMAGE_WIDTH_MDPI:I = 0x7d

.field private static log:Lcom/sprint/id/logger/Logger;

.field private static sBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field static sBusy:Z

.field static sHomeDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field static sOemDrawable:Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field private mActivity:Lcom/sprint/w/installer/SprintIdHome;

.field private mAppItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackUninstaller$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mCoverFlow:Lcom/sprint/w/installer/widget/CoverFlow;

.field private mCurrentPack:Lcom/sprint/w/installer/PackInfo;

.field mGalleryItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPackAdapter:Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;

.field private mPackIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPackTitle:Landroid/widget/TextView;

.field private mRingtoneItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackUninstaller$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/sprint/id/ISprintIDService;

.field private mWallpaperItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackUninstaller$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const-class v0, Lcom/sprint/w/installer/PackSwitcherLoader;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/sprint/w/installer/PackSwitcherLoader;->log:Lcom/sprint/id/logger/Logger;

    .line 70
    sput-object v1, Lcom/sprint/w/installer/PackSwitcherLoader;->sHomeDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 71
    sput-object v1, Lcom/sprint/w/installer/PackSwitcherLoader;->sOemDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 813
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sprint/w/installer/PackSwitcherLoader;->sBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/sprint/w/installer/SprintIdHome;Lcom/sprint/id/ISprintIDService;)V
    .registers 6
    .parameter "activity"
    .parameter "service"

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v2, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mAppItems:Ljava/util/ArrayList;

    .line 65
    iput-object v2, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mRingtoneItems:Ljava/util/ArrayList;

    .line 66
    iput-object v2, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mWallpaperItems:Ljava/util/ArrayList;

    .line 72
    iput-object v2, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mCoverFlow:Lcom/sprint/w/installer/widget/CoverFlow;

    .line 733
    new-instance v0, Lcom/sprint/w/installer/PackSwitcherLoader$2;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackSwitcherLoader$2;-><init>(Lcom/sprint/w/installer/PackSwitcherLoader;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mGalleryItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 87
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;

    .line 88
    const v0, 0x7f0c0065

    invoke-virtual {p1, v0}, Lcom/sprint/w/installer/SprintIdHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/widget/CoverFlow;

    iput-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mCoverFlow:Lcom/sprint/w/installer/widget/CoverFlow;

    .line 89
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mCoverFlow:Lcom/sprint/w/installer/widget/CoverFlow;

    new-instance v1, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/sprint/w/installer/PackSwitcherLoader$PackOnClickListener;-><init>(Lcom/sprint/w/installer/PackSwitcherLoader;Lcom/sprint/w/installer/PackSwitcherLoader$1;)V

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/widget/CoverFlow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mCoverFlow:Lcom/sprint/w/installer/widget/CoverFlow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/widget/CoverFlow;->setCallbackDuringFling(Z)V

    .line 91
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mCoverFlow:Lcom/sprint/w/installer/widget/CoverFlow;

    iget-object v1, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mGalleryItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/widget/CoverFlow;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 92
    invoke-static {p1}, Lcom/sprint/w/installer/PackInfo;->getActivePackInfo(Landroid/content/Context;)Lcom/sprint/w/installer/PackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mCurrentPack:Lcom/sprint/w/installer/PackInfo;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackIcons:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackList:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;

    invoke-direct {v0, p0, v2}, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;-><init>(Lcom/sprint/w/installer/PackSwitcherLoader;Lcom/sprint/w/installer/PackSwitcherLoader$1;)V

    iput-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackAdapter:Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;

    .line 96
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mCoverFlow:Lcom/sprint/w/installer/widget/CoverFlow;

    iget-object v1, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackAdapter:Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/widget/CoverFlow;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 98
    const v0, 0x7f0c0066

    invoke-virtual {p1, v0}, Lcom/sprint/w/installer/SprintIdHome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackTitle:Landroid/widget/TextView;

    .line 99
    iput-object p2, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mService:Lcom/sprint/id/ISprintIDService;

    .line 100
    return-void
.end method

.method static synthetic access$1000(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/PackInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mCurrentPack:Lcom/sprint/w/installer/PackInfo;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sprint/w/installer/PackSwitcherLoader;Lcom/sprint/w/installer/PackInfo;)Lcom/sprint/w/installer/PackInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mCurrentPack:Lcom/sprint/w/installer/PackInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/widget/CoverFlow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mCoverFlow:Lcom/sprint/w/installer/widget/CoverFlow;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackIcons:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackIcons:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackAdapter:Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;

    return-object v0
.end method

.method static synthetic access$200()Lcom/sprint/id/logger/Logger;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/sprint/w/installer/PackSwitcherLoader;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/w/installer/SprintIdHome;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mActivity:Lcom/sprint/w/installer/SprintIdHome;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sprint/w/installer/PackSwitcherLoader;)Lcom/sprint/id/ISprintIDService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mService:Lcom/sprint/id/ISprintIDService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mWallpaperItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mWallpaperItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mAppItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mAppItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sprint/w/installer/PackSwitcherLoader;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mRingtoneItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mRingtoneItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sprint/w/installer/PackSwitcherLoader;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public static getPackIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "packId"

    .prologue
    .line 816
    sget-object v1, Lcom/sprint/w/installer/PackSwitcherLoader;->sBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 817
    .local v0, sr:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_11

    .line 818
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 820
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static putPackIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "packId"
    .parameter "iconBmp"

    .prologue
    .line 824
    sget-object v0, Lcom/sprint/w/installer/PackSwitcherLoader;->sBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    return-void
.end method

.method public static saveCurrentLiveWallpaper(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13
    .parameter "context"
    .parameter "packId"

    .prologue
    .line 192
    const-string v9, "wallpaper"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/WallpaperManager;

    .line 193
    .local v8, wpm:Landroid/app/WallpaperManager;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wp-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, packTxtFile:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wp-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, packPngFile:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "th-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, packThumbFile:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v7

    .line 198
    .local v7, paperInfo:Landroid/app/WallpaperInfo;
    if-eqz v7, :cond_77

    .line 199
    invoke-virtual {v7}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 200
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {p0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 201
    invoke-virtual {p0, v5}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 202
    const/4 v2, 0x0

    .line 204
    .local v2, out:Ljava/io/PrintStream;
    :try_start_5e
    new-instance v3, Ljava/io/PrintStream;

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_88
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_68} :catch_78

    .line 205
    .end local v2           #out:Ljava/io/PrintStream;
    .local v3, out:Ljava/io/PrintStream;
    :try_start_68
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v3}, Ljava/io/PrintStream;->flush()V
    :try_end_72
    .catchall {:try_start_68 .. :try_end_72} :catchall_93
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_72} :catch_96

    .line 210
    if-eqz v3, :cond_77

    .line 212
    :try_start_74
    invoke-virtual {v3}, Ljava/io/PrintStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_8f

    .line 218
    .end local v0           #comp:Landroid/content/ComponentName;
    .end local v3           #out:Ljava/io/PrintStream;
    :cond_77
    :goto_77
    return-void

    .line 207
    .restart local v0       #comp:Landroid/content/ComponentName;
    .restart local v2       #out:Ljava/io/PrintStream;
    :catch_78
    move-exception v1

    .line 208
    .local v1, e:Ljava/io/IOException;
    :goto_79
    :try_start_79
    sget-object v9, Lcom/sprint/w/installer/PackSwitcherLoader;->log:Lcom/sprint/id/logger/Logger;

    const-string v10, "Error saving Live Wallpaper info"

    invoke-virtual {v9, v10, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_88

    .line 210
    if-eqz v2, :cond_77

    .line 212
    :try_start_82
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_77

    .line 213
    :catch_86
    move-exception v9

    goto :goto_77

    .line 210
    .end local v1           #e:Ljava/io/IOException;
    :catchall_88
    move-exception v9

    :goto_89
    if-eqz v2, :cond_8e

    .line 212
    :try_start_8b
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_91

    .line 214
    :cond_8e
    :goto_8e
    throw v9

    .line 213
    .end local v2           #out:Ljava/io/PrintStream;
    .restart local v3       #out:Ljava/io/PrintStream;
    :catch_8f
    move-exception v9

    goto :goto_77

    .end local v3           #out:Ljava/io/PrintStream;
    .restart local v2       #out:Ljava/io/PrintStream;
    :catch_91
    move-exception v10

    goto :goto_8e

    .line 210
    .end local v2           #out:Ljava/io/PrintStream;
    .restart local v3       #out:Ljava/io/PrintStream;
    :catchall_93
    move-exception v9

    move-object v2, v3

    .end local v3           #out:Ljava/io/PrintStream;
    .restart local v2       #out:Ljava/io/PrintStream;
    goto :goto_89

    .line 207
    .end local v2           #out:Ljava/io/PrintStream;
    .restart local v3       #out:Ljava/io/PrintStream;
    :catch_96
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/PrintStream;
    .restart local v2       #out:Ljava/io/PrintStream;
    goto :goto_79
.end method

.method public static saveCurrentRingTones(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .parameter "context"
    .parameter "packId"

    .prologue
    .line 221
    const/4 v6, 0x1

    invoke-static {p0, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 222
    .local v1, defaultRingtone:Landroid/net/Uri;
    const/4 v6, 0x2

    invoke-static {p0, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 223
    .local v0, defaultNotification:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 225
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rt-ringtone"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, packRingtoneFile:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 227
    if-eqz v1, :cond_30

    .line 228
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 230
    :cond_30
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_76
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_33} :catch_67

    .line 234
    if-eqz v3, :cond_39

    .line 236
    :try_start_35
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_95

    .line 239
    :goto_38
    const/4 v3, 0x0

    .line 243
    .end local v5           #packRingtoneFile:Ljava/lang/String;
    :cond_39
    :goto_39
    :try_start_39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rt-notification"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, packNotificationFile:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 245
    if-eqz v0, :cond_5e

    .line 246
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 248
    :cond_5e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_61
    .catchall {:try_start_39 .. :try_end_61} :catchall_8e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_61} :catch_7e

    .line 252
    if-eqz v3, :cond_66

    .line 254
    :try_start_63
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_9b

    .line 259
    .end local v4           #packNotificationFile:Ljava/lang/String;
    :cond_66
    :goto_66
    return-void

    .line 231
    :catch_67
    move-exception v2

    .line 232
    .local v2, e:Ljava/lang/Exception;
    :try_start_68
    sget-object v6, Lcom/sprint/w/installer/PackSwitcherLoader;->log:Lcom/sprint/id/logger/Logger;

    const-string v7, "Error saving current ringtone Uri"

    invoke-virtual {v6, v7, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_76

    .line 234
    if-eqz v3, :cond_39

    .line 236
    :try_start_71
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_97

    .line 239
    :goto_74
    const/4 v3, 0x0

    goto :goto_39

    .line 234
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_76
    move-exception v6

    if-eqz v3, :cond_7d

    .line 236
    :try_start_79
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_99

    .line 239
    :goto_7c
    const/4 v3, 0x0

    :cond_7d
    throw v6

    .line 249
    :catch_7e
    move-exception v2

    .line 250
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_7f
    sget-object v6, Lcom/sprint/w/installer/PackSwitcherLoader;->log:Lcom/sprint/id/logger/Logger;

    const-string v7, "Error saving current notification Uri"

    invoke-virtual {v6, v7, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_8e

    .line 252
    if-eqz v3, :cond_66

    .line 254
    :try_start_88
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_66

    .line 255
    :catch_8c
    move-exception v6

    goto :goto_66

    .line 252
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_8e
    move-exception v6

    if-eqz v3, :cond_94

    .line 254
    :try_start_91
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_9d

    .line 256
    :cond_94
    :goto_94
    throw v6

    .line 237
    .restart local v5       #packRingtoneFile:Ljava/lang/String;
    :catch_95
    move-exception v6

    goto :goto_38

    .end local v5           #packRingtoneFile:Ljava/lang/String;
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_97
    move-exception v6

    goto :goto_74

    .end local v2           #e:Ljava/lang/Exception;
    :catch_99
    move-exception v7

    goto :goto_7c

    .line 255
    .restart local v4       #packNotificationFile:Ljava/lang/String;
    :catch_9b
    move-exception v6

    goto :goto_66

    .end local v4           #packNotificationFile:Ljava/lang/String;
    :catch_9d
    move-exception v7

    goto :goto_94
.end method

.method public static saveCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)V
    .registers 20
    .parameter "context"
    .parameter "packId"

    .prologue
    .line 262
    const-string v14, "wallpaper"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/WallpaperManager;

    .line 263
    .local v13, wpm:Landroid/app/WallpaperManager;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "wp-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".txt"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 264
    .local v11, packTxtFile:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "wp-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 265
    .local v9, packPngFile:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "th-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 267
    .local v10, packThumbFile:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v12

    .line 268
    .local v12, paperInfo:Landroid/app/WallpaperInfo;
    if-eqz v12, :cond_a2

    .line 269
    invoke-virtual {v12}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 270
    .local v5, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 271
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 272
    const/4 v7, 0x0

    .line 274
    .local v7, out:Ljava/io/PrintStream;
    :try_start_68
    const-string v14, "HOME"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7c

    const-string v14, "OEM"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_94

    .line 275
    :cond_7c
    new-instance v8, Ljava/io/PrintStream;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_88
    .catch Ljava/io/FileNotFoundException; {:try_start_68 .. :try_end_88} :catch_105

    .end local v7           #out:Ljava/io/PrintStream;
    .local v8, out:Ljava/io/PrintStream;
    move-object v7, v8

    .line 281
    .end local v8           #out:Ljava/io/PrintStream;
    .restart local v7       #out:Ljava/io/PrintStream;
    :goto_89
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    .line 298
    .end local v5           #comp:Landroid/content/ComponentName;
    .end local v7           #out:Ljava/io/PrintStream;
    :goto_93
    return-void

    .line 277
    .restart local v5       #comp:Landroid/content/ComponentName;
    .restart local v7       #out:Ljava/io/PrintStream;
    :cond_94
    :try_start_94
    new-instance v8, Ljava/io/PrintStream;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a0
    .catch Ljava/io/FileNotFoundException; {:try_start_94 .. :try_end_a0} :catch_105

    .end local v7           #out:Ljava/io/PrintStream;
    .restart local v8       #out:Ljava/io/PrintStream;
    move-object v7, v8

    .end local v8           #out:Ljava/io/PrintStream;
    .restart local v7       #out:Ljava/io/PrintStream;
    goto :goto_89

    .line 284
    .end local v5           #comp:Landroid/content/ComponentName;
    .end local v7           #out:Ljava/io/PrintStream;
    :cond_a2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 286
    :try_start_a7
    invoke-virtual {v13}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 287
    .local v3, bmd:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 288
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 289
    .local v4, canvas:Landroid/graphics/Canvas;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v14, v15, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 290
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 291
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v2, v9, v1}, Lcom/sprint/w/installer/PackSwitcherLoader;->saveWallpaperAndThumb(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_df
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a7 .. :try_end_df} :catch_e0
    .catch Ljava/lang/RuntimeException; {:try_start_a7 .. :try_end_df} :catch_e9

    goto :goto_93

    .line 292
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bmd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #canvas:Landroid/graphics/Canvas;
    :catch_e0
    move-exception v6

    .line 293
    .local v6, e:Ljava/lang/OutOfMemoryError;
    sget-object v14, Lcom/sprint/w/installer/PackSwitcherLoader;->log:Lcom/sprint/id/logger/Logger;

    const-string v15, "Not enough memory to save the wallpaper!"

    invoke-virtual {v14, v15}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_93

    .line 294
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :catch_e9
    move-exception v6

    .line 295
    .local v6, e:Ljava/lang/RuntimeException;
    sget-object v14, Lcom/sprint/w/installer/PackSwitcherLoader;->log:Lcom/sprint/id/logger/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to save current wallpaper for pack "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v6}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_93

    .line 279
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v5       #comp:Landroid/content/ComponentName;
    .restart local v7       #out:Ljava/io/PrintStream;
    :catch_105
    move-exception v14

    goto :goto_89
.end method

.method public static saveHomeScreenConfig(Lcom/sprint/id/ISprintIDService;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 13
    .parameter "service"
    .parameter "activity"
    .parameter "packId"

    .prologue
    .line 143
    sget-object v7, Lcom/sprint/w/installer/PackSwitcherLoader;->log:Lcom/sprint/id/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saving home for pack ID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 144
    const-string v6, "packId=?"

    .line 145
    .local v6, selection:Ljava/lang/String;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v0, v7

    .line 149
    .local v0, args:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/sprint/w/installer/ContentProvider;->URI_INSTALLER_FAVORITES:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 152
    .local v5, rowsDeleted:I
    :try_start_2a
    invoke-interface {p0}, Lcom/sprint/id/ISprintIDService;->getCurrentDesktopContainerItems()Ljava/util/List;

    move-result-object v3

    .line 154
    .local v3, favs:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_93

    .line 155
    sget-object v7, Lcom/sprint/w/installer/PackSwitcherLoader;->log:Lcom/sprint/id/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saving current Favorites. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 156
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_93

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 157
    .local v1, cv:Landroid/content/ContentValues;
    const-string v7, "packId"

    invoke-virtual {v1, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {v1}, Lcom/sprint/w/installer/ContentValuesFactory;->forDB(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 159
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/sprint/w/installer/ContentProvider;->URI_INSTALLER_FAVORITES:Landroid/net/Uri;

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 160
    sget-object v7, Lcom/sprint/w/installer/PackSwitcherLoader;->log:Lcom/sprint/id/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ContentValues: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_8a} :catch_8b

    goto :goto_50

    .line 163
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #favs:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_8b
    move-exception v2

    .line 165
    .local v2, e:Landroid/os/RemoteException;
    sget-object v7, Lcom/sprint/w/installer/PackSwitcherLoader;->log:Lcom/sprint/id/logger/Logger;

    const-string v8, "Error getting favorites from the Launcher"

    invoke-virtual {v7, v8, v2}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_93
    return-void
.end method

.method public static saveOemWallpaper(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 181
    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getOemPack()Lcom/sprint/w/installer/PackInfo;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 182
    const-string v1, "wp-OEM.png"

    .line 184
    .local v1, packPngFile:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 186
    const-string v2, "OEM"

    invoke-static {p0, v2}, Lcom/sprint/w/installer/PackSwitcherLoader;->saveCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    .end local v0           #f:Ljava/io/File;
    .end local v1           #packPngFile:Ljava/lang/String;
    :cond_1c
    return-void
.end method

.method private static saveWallpaperAndThumb(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "context"
    .parameter "bitmap"
    .parameter "filename"
    .parameter "packId"

    .prologue
    .line 301
    const/4 v3, 0x0

    .line 303
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, tmpFile:Ljava/lang/String;
    const-string v8, "HOME"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    const-string v8, "OEM"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_97

    .line 305
    :cond_24
    const/4 v8, 0x1

    invoke-virtual {p0, v6, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 309
    :goto_29
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {p1, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 310
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 311
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 312
    invoke-virtual {p0, v6}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 313
    .local v7, tmpFilePath:Ljava/io/File;
    invoke-virtual {p0, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 314
    .local v2, newFilePath:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 315
    invoke-virtual {v7, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 317
    const-string v8, "HOME"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_54

    const-string v8, "OEM"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_90

    .line 318
    :cond_54
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "th-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, thumbFile:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v0, v8, Landroid/util/DisplayMetrics;->density:F

    .line 320
    .local v0, density:F
    const/high16 v8, 0x42fa

    mul-float/2addr v8, v0

    float-to-int v8, v8

    const/high16 v9, 0x42be

    mul-float/2addr v9, v0

    float-to-int v9, v9

    const/4 v10, 0x1

    invoke-static {p1, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 325
    .local v4, thumb:Landroid/graphics/Bitmap;
    const/4 v8, 0x1

    invoke-virtual {p0, v5, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 326
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v4, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 327
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 328
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_90
    .catchall {:try_start_1 .. :try_end_90} :catchall_ad
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_90} :catch_9d

    .line 330
    .end local v0           #density:F
    .end local v4           #thumb:Landroid/graphics/Bitmap;
    .end local v5           #thumbFile:Ljava/lang/String;
    :cond_90
    const/4 v3, 0x0

    .line 334
    if-eqz v3, :cond_96

    .line 336
    :try_start_93
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_b4

    .line 341
    .end local v2           #newFilePath:Ljava/io/File;
    .end local v6           #tmpFile:Ljava/lang/String;
    .end local v7           #tmpFilePath:Ljava/io/File;
    :cond_96
    :goto_96
    return-void

    .line 307
    .restart local v6       #tmpFile:Ljava/lang/String;
    :cond_97
    const/4 v8, 0x0

    :try_start_98
    invoke-virtual {p0, v6, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_ad
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_9d

    move-result-object v3

    goto :goto_29

    .line 331
    .end local v6           #tmpFile:Ljava/lang/String;
    :catch_9d
    move-exception v1

    .line 332
    .local v1, e:Ljava/lang/Exception;
    :try_start_9e
    sget-object v8, Lcom/sprint/w/installer/PackSwitcherLoader;->log:Lcom/sprint/id/logger/Logger;

    const-string v9, "Error saving wallpaper"

    invoke-virtual {v8, v9, v1}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a5
    .catchall {:try_start_9e .. :try_end_a5} :catchall_ad

    .line 334
    if-eqz v3, :cond_96

    .line 336
    :try_start_a7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ab

    goto :goto_96

    .line 337
    :catch_ab
    move-exception v8

    goto :goto_96

    .line 334
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_ad
    move-exception v8

    if-eqz v3, :cond_b3

    .line 336
    :try_start_b0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_b6

    .line 338
    :cond_b3
    :goto_b3
    throw v8

    .line 337
    .restart local v2       #newFilePath:Ljava/io/File;
    .restart local v6       #tmpFile:Ljava/lang/String;
    .restart local v7       #tmpFilePath:Ljava/io/File;
    :catch_b4
    move-exception v8

    goto :goto_96

    .end local v2           #newFilePath:Ljava/io/File;
    .end local v6           #tmpFile:Ljava/lang/String;
    .end local v7           #tmpFilePath:Ljava/io/File;
    :catch_b6
    move-exception v9

    goto :goto_b3
.end method

.method public static setVirtualPackDetail(Landroid/content/Context;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 125
    new-instance v0, Lcom/sprint/w/installer/PackSwitcherLoader$1;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/PackSwitcherLoader$1;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, t:Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 139
    return-void
.end method


# virtual methods
.method public getCurrentPackInfo()Lcom/sprint/w/installer/PackInfo;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mCurrentPack:Lcom/sprint/w/installer/PackInfo;

    return-object v0
.end method

.method public getPackInfo(I)Lcom/sprint/w/installer/PackInfo;
    .registers 3
    .parameter "position"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/PackInfo;

    return-object v0
.end method

.method public getSelected()I
    .registers 2

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mCoverFlow:Lcom/sprint/w/installer/widget/CoverFlow;

    invoke-virtual {v0}, Lcom/sprint/w/installer/widget/CoverFlow;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedPackId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1172
    iget-object v1, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mCoverFlow:Lcom/sprint/w/installer/widget/CoverFlow;

    invoke-virtual {v1}, Lcom/sprint/w/installer/widget/CoverFlow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/PackInfo;

    .line 1173
    .local v0, pi:Lcom/sprint/w/installer/PackInfo;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    iget-object v1, v0, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    goto :goto_b
.end method

.method public getmPackIcons()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackIcons:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getmPackList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public notifyCoverFlow()V
    .registers 2

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackAdapter:Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackSwitcherLoader$PackGridAdapter;->notifyDataSetChanged()V

    .line 1187
    return-void
.end method

.method public refresh()V
    .registers 3

    .prologue
    .line 111
    sget-object v0, Lcom/sprint/w/installer/PackSwitcherLoader;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "PackSwitcherRefresh"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;

    const-string v1, "PackSwitcherRefresh"

    invoke-direct {v0, p0, v1}, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;-><init>(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->start()V

    .line 113
    return-void
.end method

.method public refresh(Ljava/lang/String;)V
    .registers 4
    .parameter "selectedPackId"

    .prologue
    .line 116
    sget-object v0, Lcom/sprint/w/installer/PackSwitcherLoader;->log:Lcom/sprint/id/logger/Logger;

    const-string v1, "PackSwitcherRefresh"

    invoke-virtual {v0, v1}, Lcom/sprint/id/logger/Logger;->d(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;

    const-string v1, "PackSwitcherRefresh"

    invoke-direct {v0, p0, v1, p1}, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;-><init>(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->start()V

    .line 118
    return-void
.end method

.method public refresh(Z)V
    .registers 4
    .parameter "selectCurrentPack"

    .prologue
    .line 121
    new-instance v0, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;

    const-string v1, "PackSwitcherRefresh"

    invoke-direct {v0, p0, v1, p1}, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;-><init>(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/sprint/w/installer/PackSwitcherLoader$LoadThread;->start()V

    .line 122
    return-void
.end method

.method public setSelected(Ljava/lang/String;)V
    .registers 4
    .parameter "packId"

    .prologue
    .line 1177
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1178
    iget-object v1, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/w/installer/PackInfo;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1179
    iget-object v1, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mCoverFlow:Lcom/sprint/w/installer/widget/CoverFlow;

    invoke-virtual {v1, v0}, Lcom/sprint/w/installer/widget/CoverFlow;->setSelection(I)V

    .line 1183
    :cond_1e
    return-void

    .line 1177
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setmPackIcons(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1164
    .local p1, mPackIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackIcons:Ljava/util/ArrayList;

    .line 1165
    return-void
.end method

.method public setmPackList(Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1156
    .local p1, mPackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/PackInfo;>;"
    iput-object p1, p0, Lcom/sprint/w/installer/PackSwitcherLoader;->mPackList:Ljava/util/ArrayList;

    .line 1157
    return-void
.end method

.method public switchId(Ljava/lang/String;)V
    .registers 4
    .parameter "packId"

    .prologue
    .line 173
    sget-boolean v1, Lcom/sprint/w/installer/PackSwitcherLoader;->sBusy:Z

    if-nez v1, :cond_c

    .line 174
    new-instance v0, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;

    invoke-direct {v0, p0, p1}, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;-><init>(Lcom/sprint/w/installer/PackSwitcherLoader;Ljava/lang/String;)V

    .line 175
    .local v0, ct:Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;
    invoke-virtual {v0}, Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;->start()V

    .line 178
    .end local v0           #ct:Lcom/sprint/w/installer/PackSwitcherLoader$ConfigThread;
    :cond_c
    return-void
.end method
