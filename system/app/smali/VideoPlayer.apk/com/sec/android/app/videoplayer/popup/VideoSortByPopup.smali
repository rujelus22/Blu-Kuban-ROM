.class public Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;
.super Landroid/app/Dialog;
.source "VideoSortByPopup.java"


# static fields
.field public static final SORTBY_DATE:I = 0x1

.field public static final SORTBY_NAME:I = 0x0

.field public static final SORTBY_SIZE:I = 0x2

.field public static final SORTBY_TYPE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VideoSortByPopup"


# instance fields
.field private dismisslistener:Landroid/content/DialogInterface$OnDismissListener;

.field private mContext:Landroid/content/Context;

.field private mVideoSplit:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

.field private sortBy:Landroid/app/AlertDialog;

.field private final sortByListener:Landroid/content/DialogInterface$OnClickListener;

.field private video:Lcom/sec/android/app/videoplayer/view/VideoListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/videoplayer/view/VideoListView;)V
    .registers 5
    .parameter "context"
    .parameter "videoList"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->mContext:Landroid/content/Context;

    .line 23
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->sortBy:Landroid/app/AlertDialog;

    .line 24
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->video:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 25
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->mVideoSplit:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    .line 66
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$2;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->sortByListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$3;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->dismisslistener:Landroid/content/DialogInterface$OnDismissListener;

    .line 29
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->video:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 31
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->mVideoSplit:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    .line 32
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->createPopup()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/videoplayer/view/VideoSplitView;)V
    .registers 5
    .parameter "context"
    .parameter "videoSplit"

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->mContext:Landroid/content/Context;

    .line 23
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->sortBy:Landroid/app/AlertDialog;

    .line 24
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->video:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 25
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->mVideoSplit:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    .line 66
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$2;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->sortByListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$3;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->dismisslistener:Landroid/content/DialogInterface$OnDismissListener;

    .line 37
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->mContext:Landroid/content/Context;

    .line 38
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->video:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 39
    iput-object p2, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->mVideoSplit:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->createPopup()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->sortBy:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->sortBy:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)Lcom/sec/android/app/videoplayer/view/VideoListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->video:Lcom/sec/android/app/videoplayer/view/VideoListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)Lcom/sec/android/app/videoplayer/view/VideoSplitView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->mVideoSplit:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    return-object v0
.end method

.method private createPopup()V
    .registers 8

    .prologue
    .line 44
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v3

    .line 45
    .local v3, spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    const-string v4, "sortorder"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->loadIntKey(Ljava/lang/String;I)I

    move-result v2

    .line 47
    .local v2, sortorder:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    .local v1, popup:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->mContext:Landroid/content/Context;

    const v5, 0x7f080083

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 49
    const v4, 0x7f050003

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->sortByListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    const v4, 0x7f080024

    new-instance v5, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup$1;-><init>(Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->sortBy:Landroid/app/AlertDialog;

    .line 57
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->sortBy:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->dismisslistener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 60
    :try_start_40
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/VideoSortByPopup;->sortBy:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_45} :catch_46

    .line 64
    :goto_45
    return-void

    .line 61
    :catch_46
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "VideoSortByPopup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "show() failed. - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method
