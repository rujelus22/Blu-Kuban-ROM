.class public Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;,
        Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;,
        Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SelectSubtitleAdapter;
    }
.end annotation


# static fields
.field private static final ACTIVATION:I = 0x0

.field private static final CHINESE:Ljava/lang/String; = "CHINESE"

.field private static final DEBUG:Z = true

.field private static final ENGLISH:Ljava/lang/String; = "ENGLISH"

.field private static final FRENCH:Ljava/lang/String; = "FRENCH"

.field private static final GERMAN:Ljava/lang/String; = "GERMAN"

.field private static final ITALIAN:Ljava/lang/String; = "ITALIAN"

.field private static final JAPANESE:Ljava/lang/String; = "JAPANESE"

.field private static final KOREAN:Ljava/lang/String; = "KOREAN"

.field private static final LANGUAGE:I = 0x3

.field private static final SELECT_SUBTITLE:I = 0x2

.field private static final SIZE:I = 0x4

.field private static final SPANISH:Ljava/lang/String; = "SPANISH"

.field private static final SYNC:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field private static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static mInstance:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

.field private static mSubTitleHandler:Landroid/os/Handler;


# instance fields
.field private findingSubtitleFilesDlg:Landroid/app/ProgressDialog;

.field private mAdapter:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;

.field private mContext:Landroid/content/Context;

.field private mFileFilter:Ljava/io/FilenameFilter;

.field private mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mSubFilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mSubTitleHandle:J

.field private mSubTitleLangArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSubtTitleFile:Ljava/lang/String;

.field private mSubtitleProcesser:Ljava/lang/Runnable;

.field private preSubtitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string v0, "VideoSubTitleUtil"

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->preSubtitle:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    .line 67
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mAdapter:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;

    .line 72
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->findingSubtitleFilesDlg:Landroid/app/ProgressDialog;

    .line 319
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$1;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtitleProcesser:Ljava/lang/Runnable;

    .line 619
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$4;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 75
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->makeSubtitleFilesList()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->findingSubtitleFilesDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->findingSubtitleFilesDlg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Ljava/lang/String;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    invoke-static {p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->existFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/DialogInterface$OnKeyListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/io/FilenameFilter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mFileFilter:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->preSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->preSubtitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtitleProcesser:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->resumeByDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createLanguagePopup()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->createSizePopup()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;
    .registers 2
    .parameter "context"

    .prologue
    .line 79
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    if-nez v0, :cond_b

    .line 80
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    .line 82
    :cond_b
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mInstance:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    return-object v0
.end method

.method private createLanguagePopup()V
    .registers 11

    .prologue
    .line 723
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_c

    .line 724
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 725
    const/4 v5, 0x0

    sput-object v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 728
    :cond_c
    const/4 v2, 0x0

    .line 729
    .local v2, nSelectedID:I
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 730
    .local v4, totalLang:I
    new-array v1, v4, [Ljava/lang/String;

    .line 732
    .local v1, lang:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    if-ge v0, v4, :cond_42

    .line 733
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getLanguageString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    .line 735
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubTitleDefaultLanguage()J

    move-result-wide v6

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_3f

    .line 736
    move v2, v0

    .line 732
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 739
    :cond_42
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 740
    .local v3, popup:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f08002b

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 741
    iget-object v5, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 743
    new-instance v5, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$6;

    invoke-direct {v5, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$6;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    invoke-virtual {v3, v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 773
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    sput-object v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 774
    sget-object v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 775
    return-void
.end method

.method private createSizePopup()V
    .registers 5

    .prologue
    .line 659
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_c

    .line 660
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 661
    const/4 v2, 0x0

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 664
    :cond_c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 666
    .local v1, popup:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080021

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 667
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 669
    const/4 v0, 0x0

    .line 671
    .local v0, nSelectedID:I
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubTitleSizeType()I

    move-result v2

    packed-switch v2, :pswitch_data_44

    .line 685
    :goto_26
    const v2, 0x7f050002

    new-instance v3, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$5;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 718
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 719
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 720
    return-void

    .line 673
    :pswitch_3d
    const/4 v0, 0x0

    .line 674
    goto :goto_26

    .line 676
    :pswitch_3f
    const/4 v0, 0x1

    .line 677
    goto :goto_26

    .line 679
    :pswitch_41
    const/4 v0, 0x2

    .line 680
    goto :goto_26

    .line 671
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3f
        :pswitch_41
    .end packed-switch
.end method

.method private static existFile(Ljava/lang/String;)Z
    .registers 3
    .parameter "subTitleFileName"

    .prologue
    .line 459
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private getActivationString(Z)Ljava/lang/String;
    .registers 4
    .parameter "active"

    .prologue
    .line 1074
    if-eqz p1, :cond_c

    .line 1075
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1077
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private static getOrgSubtitleOfCurrentVideo()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 975
    invoke-static {}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getInstance()Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-result-object v1

    .line 976
    .local v1, mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v4

    .line 978
    .local v4, video_ID:J
    const/4 v0, 0x0

    .line 979
    .local v0, fileName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 981
    .local v3, result:Ljava/lang/String;
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_15

    .line 982
    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getFilePathbyId(J)Ljava/lang/String;

    move-result-object v0

    .line 985
    :cond_15
    const/4 v2, 0x0

    .line 987
    .local v2, pos:I
    if-eqz v0, :cond_27

    .line 988
    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 990
    if-lez v2, :cond_25

    .line 991
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 993
    :cond_25
    if-nez v0, :cond_28

    .line 1009
    :cond_27
    :goto_27
    return-object v6

    .line 996
    :cond_28
    const-string v7, ".smi"

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 997
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->existFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    move-object v6, v3

    .line 998
    goto :goto_27

    .line 1000
    :cond_36
    const-string v7, ".srt"

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1001
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->existFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_44

    move-object v6, v3

    .line 1002
    goto :goto_27

    .line 1004
    :cond_44
    const-string v7, ".sub"

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1005
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->existFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    move-object v6, v3

    .line 1006
    goto :goto_27
.end method

.method private getSizeString(I)Ljava/lang/String;
    .registers 4
    .parameter "color"

    .prologue
    .line 1090
    packed-switch p1, :pswitch_data_22

    .line 1097
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    .line 1092
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1094
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f08006d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1090
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_d
        :pswitch_3
        :pswitch_17
    .end packed-switch
.end method

.method private getSyncString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1081
    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float v0, v2, v3

    .line 1083
    .local v0, a:F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1084
    .local v1, str:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1085
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f080071

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private makeSubtitleFilesList()V
    .registers 8

    .prologue
    .line 919
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;

    .line 921
    new-instance v4, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$10;

    invoke-direct {v4, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$10;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mFileFilter:Ljava/io/FilenameFilter;

    .line 939
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v5, "makeSubtitleFilesList() - start search!!?"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 942
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 943
    .local v0, file:Ljava/io/File;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mFileFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 945
    .end local v0           #file:Ljava/io/File;
    :cond_2a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 946
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 947
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v5, "makeSubtitleFilesList() - Thread interrupted!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_3c
    :goto_3c
    return-void

    .line 951
    :cond_3d
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3c

    .line 954
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeSubtitleFilesList() - searched counts are :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3c

    .line 957
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getOrgSubtitleOfCurrentVideo()Ljava/lang/String;

    move-result-object v1

    .line 959
    .local v1, fileName:Ljava/lang/String;
    if-eqz v1, :cond_3c

    .line 962
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 963
    .local v2, index:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8f

    .line 964
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 966
    .local v3, itemToMove:Ljava/io/File;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 967
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubFilesList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 969
    .end local v3           #itemToMove:Ljava/io/File;
    :cond_8f
    sget-object v4, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeSubtitleFilesList() - index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method private pauseByDialog()V
    .registers 5

    .prologue
    .line 464
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_15

    .line 466
    :try_start_4
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 467
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setWasPlayingWhenPaused(Z)V

    .line 468
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_16

    .line 476
    :cond_15
    :goto_15
    return-void

    .line 470
    :catch_16
    move-exception v0

    .line 471
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 473
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  1 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private resumeByDialog()V
    .registers 5

    .prologue
    .line 479
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_f

    .line 481
    :try_start_4
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getWasPlayingWhenPaused()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 482
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->play()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 489
    :cond_f
    :goto_f
    return-void

    .line 484
    :catch_10
    move-exception v0

    .line 485
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 486
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occured  1 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private updateAdapter()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1013
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;>;"
    new-instance v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v5, 0x7f080069

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubTitleActivationFlag()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getActivationString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    new-instance v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f08006e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getSyncString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v6, v3, v4}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1018
    const/4 v1, 0x0

    .line 1020
    .local v1, currentSubtitleFileName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubtitleFileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8d

    .line 1021
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubtitleFileName()Ljava/lang/String;

    move-result-object v1

    .line 1025
    :goto_40
    new-instance v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f08006f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v6, v3, v1}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    new-instance v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f08002b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubTitleDefaultLanguage()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getLanguageString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v6, v3, v4}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    new-instance v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v4, 0x7f080021

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubTitleSizeType()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getSizeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v6, v3, v4}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    new-instance v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mAdapter:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;

    .line 1029
    return-void

    .line 1023
    :cond_8d
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getOrgSubtitleOfCurrentVideo()Ljava/lang/String;

    move-result-object v1

    goto :goto_40
.end method


# virtual methods
.method public EnableHDMISubtitleOnTV(Z)V
    .registers 6
    .parameter "mSubTitleOn"

    .prologue
    .line 397
    const-string v2, "tvoutservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ITvoutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITvoutService;

    move-result-object v1

    .line 399
    .local v1, tvoutService:Landroid/os/ITvoutService;
    if-nez v1, :cond_14

    .line 400
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v3, "EnableHDMISubtitleOnTV() - TvOutService Not running"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_13
    :goto_13
    return-void

    .line 405
    :cond_14
    if-eqz p1, :cond_36

    .line 406
    :try_start_16
    invoke-interface {v1}, Landroid/os/ITvoutService;->TvoutGetStatus()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Landroid/os/ITvoutService;->TvoutGetSuspendStatus()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-interface {v1}, Landroid/os/ITvoutService;->TvoutGetSubtitleStatus()Z

    move-result v2

    if-nez v2, :cond_13

    .line 408
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/ITvoutService;->TvoutSetSubtitleStatus(Z)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2c} :catch_2d

    goto :goto_13

    .line 416
    :catch_2d
    move-exception v0

    .line 417
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v3, "EnableHDMISubtitleOnTV() - Tv OUT subtitle fail!!! "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    .line 411
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_36
    :try_start_36
    invoke-interface {v1}, Landroid/os/ITvoutService;->TvoutGetSubtitleStatus()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 413
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/ITvoutService;->TvoutSetSubtitleStatus(Z)Z
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_40} :catch_2d

    goto :goto_13
.end method

.method public checkExistSubTitle(Ljava/lang/String;)Z
    .registers 18
    .parameter "filePath"

    .prologue
    .line 86
    if-nez p1, :cond_b

    .line 87
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v2, "checkExistSubTitle() - path is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x0

    .line 155
    :goto_a
    return v1

    .line 93
    :cond_b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, string_to_find:Ljava/lang/String;
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15}, Ljava/lang/String;-><init>()V

    .line 95
    .local v15, subtitleFileName:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    .line 96
    .local v11, smiFileName:Ljava/lang/String;
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    .line 97
    .local v12, srtFileName:Ljava/lang/String;
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    .line 99
    .local v14, subFileName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 100
    .local v9, pos:I
    const/4 v8, 0x0

    .line 101
    .local v8, path_len:I
    const/4 v10, 0x0

    .line 102
    .local v10, slash_pos:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    .line 104
    .local v13, stringToFindLength:I
    if-eqz p1, :cond_a1

    .line 105
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 106
    const/16 v1, 0x2e

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 108
    if-lez v9, :cond_52

    .line 109
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3f
    sub-int v1, v8, v13

    if-ge v3, v1, :cond_52

    .line 110
    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 111
    move v10, v3

    .line 118
    .end local v3           #i:I
    :cond_52
    :try_start_52
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_52 .. :try_end_57} :catch_d5

    move-result-object v15

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".smi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".srt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 130
    invoke-static {v11}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->existFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_101

    .line 131
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    .line 132
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    .line 133
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    .line 149
    :cond_a1
    :goto_a1
    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    if-eqz v1, :cond_b3

    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubtitleFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b3

    .line 150
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getSubtitleFileName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    .line 153
    :cond_b3
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExistSubTitle() - VideoServiceUtil.mHasSubtitle : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    goto/16 :goto_a

    .line 109
    .restart local v3       #i:I
    :cond_d1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3f

    .line 119
    .end local v3           #i:I
    :catch_d5
    move-exception v7

    .line 120
    .local v7, e:Ljava/lang/StringIndexOutOfBoundsException;
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkExistSubTitle() - slash_pos : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", pos : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    .line 122
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    .line 123
    const/4 v1, 0x0

    goto/16 :goto_a

    .line 134
    .end local v7           #e:Ljava/lang/StringIndexOutOfBoundsException;
    :cond_101
    invoke-static {v12}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->existFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_112

    .line 135
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    .line 136
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    .line 137
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    goto :goto_a1

    .line 138
    :cond_112
    invoke-static {v14}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->existFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_124

    .line 139
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    .line 140
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    .line 141
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    goto/16 :goto_a1

    .line 143
    :cond_124
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    .line 144
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    .line 145
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    goto/16 :goto_a1
.end method

.method public createSelectSubtitlesPopup(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 778
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_d

    .line 779
    sget-object v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 780
    sput-object v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSubDialog:Landroid/app/AlertDialog;

    .line 783
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->findingSubtitleFilesDlg:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_12

    .line 887
    :goto_11
    return-void

    .line 787
    :cond_12
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    .line 788
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->pauseByDialog()V

    .line 790
    new-instance v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$7;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    .line 801
    .local v0, makeSubtitleFilesListThread:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f08000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->findingSubtitleFilesDlg:Landroid/app/ProgressDialog;

    .line 807
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->findingSubtitleFilesDlg:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$8;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$8;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;Ljava/lang/Thread;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 822
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->findingSubtitleFilesDlg:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$9;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 886
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_11
.end method

.method public createSubTitleSettingPopup(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 492
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_5

    .line 617
    :goto_4
    return-void

    .line 495
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->pauseByDialog()V

    .line 497
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    .line 499
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->updateAdapter()V

    .line 501
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 502
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080068

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 503
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mAdapter:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 504
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    .line 505
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 506
    .local v1, dialogList:Landroid/widget/ListView;
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 508
    new-instance v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$2;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 576
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$3;-><init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_4
.end method

.method public getCurrentSetLanguage(J)Ljava/lang/String;
    .registers 5
    .parameter "lang"

    .prologue
    .line 1053
    const-wide/16 v0, 0x15c7

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 1054
    const-string v0, "ENGLISH"

    .line 1070
    :goto_8
    return-object v0

    .line 1055
    :cond_9
    const-wide/16 v0, 0x690f

    cmp-long v0, p1, v0

    if-nez v0, :cond_12

    .line 1056
    const-string v0, "CHINESE"

    goto :goto_8

    .line 1057
    :cond_12
    const-wide/16 v0, 0x2a0e

    cmp-long v0, p1, v0

    if-nez v0, :cond_1b

    .line 1058
    const-string v0, "JAPANESE"

    goto :goto_8

    .line 1059
    :cond_1b
    const-wide/16 v0, 0x1a45

    cmp-long v0, p1, v0

    if-nez v0, :cond_24

    .line 1060
    const-string v0, "FRENCH"

    goto :goto_8

    .line 1061
    :cond_24
    const-wide/16 v0, 0x2df2

    cmp-long v0, p1, v0

    if-nez v0, :cond_2d

    .line 1062
    const-string v0, "KOREAN"

    goto :goto_8

    .line 1063
    :cond_2d
    const-wide/16 v0, 0x1cb2

    cmp-long v0, p1, v0

    if-nez v0, :cond_36

    .line 1064
    const-string v0, "GERMAN"

    goto :goto_8

    .line 1065
    :cond_36
    const-wide/16 v0, 0x4e01

    cmp-long v0, p1, v0

    if-nez v0, :cond_3f

    .line 1066
    const-string v0, "SPANISH"

    goto :goto_8

    .line 1067
    :cond_3f
    const-wide/16 v0, 0x2681

    cmp-long v0, p1, v0

    if-nez v0, :cond_48

    .line 1068
    const-string v0, "ITALIAN"

    goto :goto_8

    .line 1070
    :cond_48
    const-string v0, "UNKNOWN"

    goto :goto_8
.end method

.method public getLanguageString(J)Ljava/lang/String;
    .registers 5
    .parameter "langID"

    .prologue
    .line 1032
    const-wide/16 v0, 0x15c7

    cmp-long v0, p1, v0

    if-nez v0, :cond_10

    .line 1033
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1049
    :goto_f
    return-object v0

    .line 1034
    :cond_10
    const-wide/16 v0, 0x690f

    cmp-long v0, p1, v0

    if-nez v0, :cond_20

    .line 1035
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 1036
    :cond_20
    const-wide/16 v0, 0x2a0e

    cmp-long v0, p1, v0

    if-nez v0, :cond_30

    .line 1037
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 1038
    :cond_30
    const-wide/16 v0, 0x1a45

    cmp-long v0, p1, v0

    if-nez v0, :cond_40

    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 1040
    :cond_40
    const-wide/16 v0, 0x2df2

    cmp-long v0, p1, v0

    if-nez v0, :cond_50

    .line 1041
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 1042
    :cond_50
    const-wide/16 v0, 0x1cb2

    cmp-long v0, p1, v0

    if-nez v0, :cond_60

    .line 1043
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 1044
    :cond_60
    const-wide/16 v0, 0x4e01

    cmp-long v0, p1, v0

    if-nez v0, :cond_70

    .line 1045
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f080079

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 1046
    :cond_70
    const-wide/16 v0, 0x2681

    cmp-long v0, p1, v0

    if-nez v0, :cond_80

    .line 1047
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f080077

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 1049
    :cond_80
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mContext:Landroid/content/Context;

    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public initSubTitle()Z
    .registers 30

    .prologue
    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 213
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v3, "initSubtitle() - mSubtTitleFile NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v2, 0x0

    .line 316
    :goto_e
    return v2

    .line 217
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleInit([BJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    .line 219
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-gtz v2, :cond_3c

    .line 220
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v3, "initSubtitle() - create mSubTitleHandle fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v2, 0x0

    goto :goto_e

    .line 224
    :cond_3c
    const-wide/16 v20, 0x0

    .line 225
    .local v20, lLanguage:J
    const-wide/16 v4, 0x457

    .line 226
    .local v4, CfgType:J
    const-wide/16 v22, 0x0

    .line 227
    .local v22, lTrackIndex:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleGetTrackNumber(J)I

    move-result v24

    .line 229
    .local v24, lTrackNum:I
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initSubtitle() - TrackNum : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    if-gtz v24, :cond_6f

    .line 232
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleUnInit(J)I

    .line 233
    const/4 v2, 0x0

    goto :goto_e

    .line 236
    :cond_6f
    const-string v16, ""

    .line 237
    .local v16, default_lang:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->getCurPlayingId()J

    move-result-wide v18

    .line 240
    .local v18, id:J
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    if-eqz v2, :cond_9b

    .line 241
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getSubTitleLanguage(J)Ljava/lang/String;

    move-result-object v16

    .line 242
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initSubtitle() - default setting languate : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_9b
    if-nez v16, :cond_9f

    .line 246
    const-string v16, "ENGLISH"

    .line 249
    :cond_9f
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v28, subTitleLangArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v17, 0x0

    .local v17, i:I
    :goto_a6
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_c7

    .line 252
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 253
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    move-wide/from16 v0, v22

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleGetTrackInfo_Language(JJ)J

    move-result-wide v20

    .line 254
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v17, v17, 0x1

    goto :goto_a6

    .line 257
    :cond_c7
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_de

    .line 259
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v3, "initSubtitle() - The language array is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleUnInit(J)I

    .line 261
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 265
    :cond_de
    const-wide/16 v6, 0x0

    .line 266
    .local v6, selected_langID:J
    const/16 v27, 0x0

    .line 268
    .local v27, selected_lang_trackIndex:I
    const/16 v17, 0x0

    :goto_e4
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_145

    .line 269
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->getCurrentSetLanguage(J)Ljava/lang/String;

    move-result-object v25

    .line 270
    .local v25, lang:Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initSubtitle() - find selected_langID. i ="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", string: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_166

    .line 273
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v3, "initSubtitle() - find seleted language in DB value."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 275
    move/from16 v27, v17

    .line 285
    .end local v25           #lang:Ljava/lang/String;
    :cond_145
    invoke-static {v6, v7}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setSubTitleDefaultLanguage(J)V

    .line 286
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleSetConfig(JJJ)I

    move-result v26

    .line 288
    .local v26, ret:I
    const/4 v2, -0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_180

    .line 289
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v3, "initSubtitle() - ARCSubtitleSetConfig fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleUnInit(J)I

    .line 291
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 279
    .end local v26           #ret:I
    .restart local v25       #lang:Ljava/lang/String;
    :cond_166
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v3, "initSubtitle() - NOT find seleted language in DB value."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 281
    const/16 v27, 0x0

    .line 268
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_e4

    .line 294
    .end local v25           #lang:Ljava/lang/String;
    .restart local v26       #ret:I
    :cond_180
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    move/from16 v0, v27

    int-to-long v10, v0

    const-wide/16 v12, 0x0

    move-wide v14, v6

    invoke-static/range {v8 .. v15}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleSelectTrack(JJJJ)I

    move-result v26

    .line 297
    if-eqz v26, :cond_1a7

    .line 298
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v3, "initSubtitle() - ARCSubtitleSelectTrack fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleUnInit(J)I

    .line 300
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    .line 301
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 305
    :cond_1a7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    if-eqz v2, :cond_1c4

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 310
    :goto_1b4
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    .line 313
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    if-eqz v2, :cond_1c1

    .line 314
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->updateSyncTime()V

    .line 316
    :cond_1c1
    const/4 v2, 0x1

    goto/16 :goto_e

    .line 308
    :cond_1c4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    goto :goto_1b4
.end method

.method public isHDMIEnabled()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 380
    const-string v3, "tvoutservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ITvoutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITvoutService;

    move-result-object v1

    .line 382
    .local v1, tvoutService:Landroid/os/ITvoutService;
    if-nez v1, :cond_15

    .line 383
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v4, "EnableHDMISubtitleOnTV() - TvOutService Not running"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_14
    return v2

    .line 386
    :cond_15
    :try_start_15
    invoke-interface {v1}, Landroid/os/ITvoutService;->TvoutGetStatus()Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_1a

    move-result v2

    goto :goto_14

    .line 388
    :catch_1a
    move-exception v0

    .line 389
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v4, "EnableHDMISubtitleOnTV() - Tv OUT subtitle fail!!! "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public pauseSubTitleProcessor()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 170
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v1, "pauseSubTitleProcessor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtitleProcesser:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->findingSubtitleFilesDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1f

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->findingSubtitleFilesDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 176
    iput-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->findingSubtitleFilesDlg:Landroid/app/ProgressDialog;

    .line 178
    :cond_1f
    return-void
.end method

.method public setVideoScaleType(I)V
    .registers 2
    .parameter "scaleType"

    .prologue
    .line 433
    return-void
.end method

.method public startSubTitleProccessor()V
    .registers 5

    .prologue
    .line 159
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v1, "startSubTitleProccessor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHdmiOn:Z

    if-eqz v0, :cond_13

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->EnableHDMISubtitleOnTV(Z)V

    .line 165
    :cond_13
    sget-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    if-eqz v0, :cond_20

    .line 166
    sget-object v0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtitleProcesser:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    :cond_20
    return-void
.end method

.method public stopSubTitleProcessor()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 181
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 183
    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mHasSubtitle:Z

    .line 184
    sput-wide v5, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    .line 186
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    if-eqz v2, :cond_16

    .line 187
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleLangArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 189
    :cond_16
    const/4 v1, 0x0

    .line 192
    .local v1, subTitleView:Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    :try_start_17
    sget-object v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mVideoCtrlUtil:Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/util/VideoCtrlUtil;->getSubTitleView()Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_3e

    move-result-object v1

    .line 197
    :goto_1d
    if-eqz v1, :cond_29

    .line 198
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->setVisibility(I)V

    .line 199
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleView;->updateSubTitle(Ljava/lang/String;)V

    .line 202
    :cond_29
    iget-wide v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_34

    .line 203
    iget-wide v2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    invoke-static {v2, v3}, Lcom/sec/android/app/videoplayer/activity/Native;->ARCSubtitleUnInit(J)I

    .line 205
    :cond_34
    iput-wide v5, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubTitleHandle:J

    .line 206
    iput-object v7, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->mSubtTitleFile:Ljava/lang/String;

    .line 207
    sput-boolean v4, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubtitleOn:Z

    .line 208
    invoke-virtual {p0, v4}, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->EnableHDMISubtitleOnTV(Z)V

    .line 209
    return-void

    .line 193
    :catch_3e
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method public tvOutPostHDMISubtitle(Ljava/lang/String;I)V
    .registers 10
    .parameter "mSubTitleText"
    .parameter "textSize"

    .prologue
    .line 436
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v4, "tvOutPostHDMISubtitle() - Tv OUT subtitle mSubTitleOn\t!!! E"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    int-to-double v3, p2

    const-wide v5, 0x3ff4cccccccccccdL

    div-double/2addr v3, v5

    double-to-int v1, v3

    .line 439
    .local v1, size:I
    const-string v3, "tvoutservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ITvoutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITvoutService;

    move-result-object v2

    .line 441
    .local v2, tvoutService:Landroid/os/ITvoutService;
    if-nez v2, :cond_23

    .line 442
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v4, "tvOutPostHDMISubtitle() - TvOutService Not running"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_22
    :goto_22
    return-void

    .line 446
    :cond_23
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tvOutPostHDMISubtitle() - text size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :try_start_3b
    invoke-interface {v2}, Landroid/os/ITvoutService;->TvoutGetSubtitleStatus()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 450
    invoke-interface {v2, p1, v1}, Landroid/os/ITvoutService;->TvoutPostSubtitle(Ljava/lang/String;I)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_44} :catch_45

    goto :goto_22

    .line 452
    :catch_45
    move-exception v0

    .line 453
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;->TAG:Ljava/lang/String;

    const-string v4, "tvOutPostHDMISubtitle() - Tv OUT subtitle fail!!! "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method
