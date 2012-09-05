.class public Lcom/sprint/w/installer/psi/PsiPackBrowser;
.super Lcom/sprint/w/installer/psi/BaseActivity;
.source "PsiPackBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;,
        Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;,
        Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;,
        Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;,
        Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_FOLDER_ID:Ljava/lang/String; = "folderId"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field static final PAGE_SIZE:I = 0x19

.field static final TEMP_ITEM:Lcom/sprint/w/installer/psi/TempItem;


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field lv:Landroid/widget/ListView;

.field mBusy:Z

.field final mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mFeaturedPacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;"
        }
    .end annotation
.end field

.field mFeaturedTitle:Landroid/widget/TextView;

.field mFolderId:Ljava/lang/String;

.field mFolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/Folder;",
            ">;"
        }
    .end annotation
.end field

.field mGallery:Lcom/sprint/w/installer/widget/CoverFlow;

.field mGalleryAdapter:Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;

.field mGalleryItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mHandler:Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;

.field mHasMorePages:Z

.field mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

.field mPage:I

.field mProgress:Landroid/widget/ProgressBar;

.field mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

.field mServicePacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/psi/ServicePack;",
            ">;"
        }
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;

.field sIgnoreNoMobileData:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Lcom/sprint/w/installer/psi/TempItem;

    invoke-direct {v0}, Lcom/sprint/w/installer/psi/TempItem;-><init>()V

    sput-object v0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->TEMP_ITEM:Lcom/sprint/w/installer/psi/TempItem;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/BaseActivity;-><init>()V

    .line 42
    const-class v0, Lcom/sprint/w/installer/psi/PsiPackBrowser;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->log:Lcom/sprint/id/logger/Logger;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mServicePacks:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFeaturedPacks:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFolders:Ljava/util/ArrayList;

    .line 60
    iput-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    .line 70
    new-instance v0, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;-><init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;Lcom/sprint/w/installer/psi/PsiPackBrowser$1;)V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mHandler:Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;

    .line 276
    new-instance v0, Lcom/sprint/w/installer/psi/PsiPackBrowser$3;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser$3;-><init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;)V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mGalleryItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 293
    new-instance v0, Lcom/sprint/w/installer/psi/PackOnItemClickListener;

    const-class v1, Lcom/sprint/w/installer/psi/PsiPackBrowser;

    invoke-direct {v0, v1}, Lcom/sprint/w/installer/psi/PackOnItemClickListener;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 435
    return-void
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/psi/PsiPackBrowser;)Lcom/sprint/id/logger/Logger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->log:Lcom/sprint/id/logger/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sprint/w/installer/psi/PsiPackBrowser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->loadComplete()V

    return-void
.end method

.method private loadComplete()V
    .registers 11

    .prologue
    const/4 v9, 0x4

    .line 220
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v6, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/w/installer/psi/Listable;>;"
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 222
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mServicePacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 223
    iget-boolean v7, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mHasMorePages:Z

    if-eqz v7, :cond_19

    .line 224
    sget-object v7, Lcom/sprint/w/installer/psi/PsiPackBrowser;->TEMP_ITEM:Lcom/sprint/w/installer/psi/TempItem;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_19
    new-instance v7, Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    new-instance v8, Lcom/sprint/w/installer/psi/PsiPackBrowser$2;

    invoke-direct {v8, p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser$2;-><init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;)V

    invoke-direct {v7, p0, v6, v8}, Lcom/sprint/w/installer/psi/ServicePackListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    iput-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    .line 233
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->lv:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mServicePackListAdapter:Lcom/sprint/w/installer/psi/ServicePackListAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 234
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->lv:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 235
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->lv:Landroid/widget/ListView;

    const v8, 0x1020004

    invoke-virtual {p0, v8}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 236
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 238
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFeaturedPacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_66

    .line 239
    new-array v4, v9, [I

    fill-array-data v4, :array_8c

    .line 242
    .local v4, ids:[I
    move-object v0, v4

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_54
    if-ge v2, v5, :cond_85

    aget v3, v0, v2

    .line 243
    .local v3, id:I
    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 244
    .local v1, fg:Landroid/view/View;
    if-eqz v1, :cond_63

    .line 245
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 249
    .end local v0           #arr$:[I
    .end local v1           #fg:Landroid/view/View;
    .end local v2           #i$:I
    .end local v3           #id:I
    .end local v4           #ids:[I
    .end local v5           #len$:I
    :cond_66
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mGalleryAdapter:Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;

    if-nez v7, :cond_86

    .line 250
    new-instance v7, Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;

    invoke-direct {v7, p0, p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;-><init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mGalleryAdapter:Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;

    .line 251
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mGallery:Lcom/sprint/w/installer/widget/CoverFlow;

    iget-object v8, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mGalleryAdapter:Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;

    invoke-virtual {v7, v8}, Lcom/sprint/w/installer/widget/CoverFlow;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 255
    :goto_78
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mGallery:Lcom/sprint/w/installer/widget/CoverFlow;

    iget-object v8, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFeaturedPacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Lcom/sprint/w/installer/widget/CoverFlow;->setSelection(I)V

    .line 257
    :cond_85
    return-void

    .line 253
    :cond_86
    iget-object v7, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mGalleryAdapter:Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;

    invoke-virtual {v7}, Lcom/sprint/w/installer/psi/PsiPackBrowser$ImageAdapter;->notifyDataSetChanged()V

    goto :goto_78

    .line 239
    :array_8c
    .array-data 0x4
        0x53t 0x0t 0xct 0x7ft
        0x54t 0x0t 0xct 0x7ft
        0x56t 0x0t 0xct 0x7ft
        0x55t 0x0t 0xct 0x7ft
    .end array-data
.end method


# virtual methods
.method protected loadMorePacks()V
    .registers 5

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mBusy:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mHasMorePages:Z

    if-nez v0, :cond_9

    .line 274
    :cond_8
    :goto_8
    return-void

    .line 271
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mBusy:Z

    .line 272
    new-instance v0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;

    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mHandler:Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;

    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFolderId:Ljava/lang/String;

    iget v3, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mPage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mPage:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;-><init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    .line 273
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/sprint/w/installer/psi/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v1, 0x7f03001f

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->setContentView(I)V

    .line 77
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 78
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 80
    const v1, 0x7f0c000b

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mTitle:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0c0054

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFeaturedTitle:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mProgress:Landroid/widget/ProgressBar;

    .line 84
    const v1, 0x7f0c0053

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sprint/w/installer/widget/CoverFlow;

    iput-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mGallery:Lcom/sprint/w/installer/widget/CoverFlow;

    .line 85
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mGallery:Lcom/sprint/w/installer/widget/CoverFlow;

    invoke-virtual {v1, v5}, Lcom/sprint/w/installer/widget/CoverFlow;->setCallbackDuringFling(Z)V

    .line 86
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mGallery:Lcom/sprint/w/installer/widget/CoverFlow;

    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mGalleryItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/widget/CoverFlow;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 87
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mGallery:Lcom/sprint/w/installer/widget/CoverFlow;

    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/widget/CoverFlow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    const v1, 0x7f0c0015

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->lv:Landroid/widget/ListView;

    .line 91
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "folderId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFolderId:Ljava/lang/String;

    .line 93
    const v1, 0x7f0c000c

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sprint/w/installer/psi/PsiPackBrowser$1;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser$1;-><init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, title:Ljava/lang/String;
    if-nez v0, :cond_97

    .line 102
    const v1, 0x7f060054

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_97
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b1

    .line 107
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    iput-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    .line 108
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mHandler:Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;->setHandler(Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;)V

    .line 111
    :cond_b1
    if-nez p1, :cond_d0

    .line 112
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 115
    new-instance v1, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;

    iget-object v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mHandler:Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;

    iget-boolean v3, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->sIgnoreNoMobileData:Z

    iget-object v4, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFolderId:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;-><init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;ZLjava/lang/String;)V

    iput-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    :cond_cf
    :goto_cf
    return-void

    .line 116
    :cond_d0
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    if-eqz v1, :cond_cf

    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    .line 117
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_cf
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 192
    const v0, 0x7f0c0093

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 193
    const v0, 0x7f0c0094

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 182
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 183
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;->cancel(Z)Z

    .line 186
    :cond_1e
    invoke-super {p0}, Lcom/sprint/w/installer/psi/BaseActivity;->onDestroy()V

    .line 187
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 204
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1e

    .line 216
    :goto_8
    return v2

    .line 206
    :sswitch_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprint/w/installer/delivery/KeyWordLookup;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 210
    .end local v0           #i:Landroid/content/Intent;
    :sswitch_14
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->showDialog(I)V

    goto :goto_8

    .line 213
    :sswitch_19
    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->showDialog(I)V

    goto :goto_8

    .line 204
    nop

    :sswitch_data_1e
    .sparse-switch
        0x7f0c0093 -> :sswitch_19
        0x7f0c0094 -> :sswitch_14
        0x7f0c0099 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 173
    invoke-super {p0}, Lcom/sprint/w/installer/psi/BaseActivity;->onPause()V

    .line 174
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_c

    .line 175
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 177
    :cond_c
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 199
    invoke-static {p0, p1, p2}, Lcom/sprint/w/installer/DialogFactory;->prepareDialog(Landroid/content/Context;ILandroid/app/Dialog;)V

    .line 200
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/sprint/w/installer/psi/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 140
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 141
    .local v0, position:I
    const-string v1, "mPage"

    iget v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mPage:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mPage:I

    .line 142
    const-string v1, "mHasMorePages"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mHasMorePages:Z

    .line 143
    const-string v1, "sIgnoreNoMobileData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->sIgnoreNoMobileData:Z

    .line 145
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    instance-of v1, v1, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadMorePacksThread;

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    invoke-virtual {v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 146
    :cond_3b
    const-string v1, "mServicePacks"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mServicePacks:Ljava/util/ArrayList;

    .line 147
    const-string v1, "mFeaturedPacks"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFeaturedPacks:Ljava/util/ArrayList;

    .line 148
    const-string v1, "mFolders"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFolders:Ljava/util/ArrayList;

    .line 150
    invoke-direct {p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->loadComplete()V

    .line 151
    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mGallery:Lcom/sprint/w/installer/widget/CoverFlow;

    invoke-virtual {v1, v0}, Lcom/sprint/w/installer/widget/CoverFlow;->setSelection(I)V

    .line 153
    :cond_61
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/sprint/w/installer/psi/BaseActivity;->onResume()V

    .line 166
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_c

    .line 167
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 169
    :cond_c
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    invoke-virtual {v0}, Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 158
    iget-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    .line 160
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/sprint/w/installer/psi/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 126
    const-string v0, "mPage"

    iget v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string v0, "position"

    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mGallery:Lcom/sprint/w/installer/widget/CoverFlow;

    invoke-virtual {v1}, Lcom/sprint/w/installer/widget/CoverFlow;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    const-string v0, "mHasMorePages"

    iget-boolean v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mHasMorePages:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    const-string v0, "sIgnoreNoMobileData"

    iget-boolean v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->sIgnoreNoMobileData:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    const-string v0, "mServicePacks"

    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mServicePacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 131
    const-string v0, "mFeaturedPacks"

    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFeaturedPacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 132
    const-string v0, "mFolders"

    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFolders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 133
    return-void
.end method

.method protected retryLastAction()V
    .registers 5

    .prologue
    .line 260
    iget v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mPage:I

    if-nez v0, :cond_18

    .line 261
    new-instance v0, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;

    iget-object v1, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mHandler:Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;

    iget-boolean v2, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->sIgnoreNoMobileData:Z

    iget-object v3, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mFolderId:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sprint/w/installer/psi/PsiPackBrowser$LoadPacksTask;-><init>(Lcom/sprint/w/installer/psi/PsiPackBrowser;Lcom/sprint/w/installer/psi/PsiPackBrowser$MyHandler;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/sprint/w/installer/psi/PsiPackBrowser;->mLoadThread:Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/psi/PsiPackBrowser$PsiThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 265
    :goto_17
    return-void

    .line 263
    :cond_18
    invoke-virtual {p0}, Lcom/sprint/w/installer/psi/PsiPackBrowser;->loadMorePacks()V

    goto :goto_17
.end method
