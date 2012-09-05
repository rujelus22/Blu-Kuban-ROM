.class public Lcom/sec/android/app/ve/activity/ProjectListActivity;
.super Landroid/app/Activity;
.source "ProjectListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/activity/ProjectListActivity$BroadCastEventsCallback;,
        Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;,
        Lcom/sec/android/app/ve/activity/ProjectListActivity$ResolverAdapter;
    }
.end annotation


# static fields
.field public static final DIALOG_EXPORT_CONFIRM:I = 0x2

.field private static final DIALOG_EXPORT_FIRST:I = 0xa

.field public static final DIALOG_EXPORT_PROGRESS:I = 0x3

.field public static final DIALOG_EXPORT_RESOLUTION:I = 0x1

.field private static final DIALOG_MASS_STORAGE:I = 0x8

.field private static final DIALOG_MULTIPLE_DELETE:I = 0xb

.field public static final DIALOG_PROJECT_DLETE:I = 0x6

.field private static final DIALOG_STORAGE_FULL:I = 0x9

.field private static final EXPORT_MOVIE:I = 0x3e8

.field private static final MAX_PROGRESS:I = 0x64

.field private static final MSG_DELAY_EXPORT_WAKELOCK:I = 0x6f

.field private static final MSG_EXPORT_CANCELLED:I = 0x67

.field private static final MSG_EXPORT_FAILURE:I = 0x65

.field private static final MSG_REMOVE_EXPORT_DIALOG:I = 0x68

.field private static final MSG_STOP_EXPORT_DIALOG:I = 0x64

.field private static final MSG_STOP_SHARE_DIALOG:I = 0x66

.field public static final SHARE_EXPORT_CONFIRM:I = 0x5

.field private static final SHARE_VIA_DIALOG:I = 0x7

.field public static _instance:Lcom/sec/android/app/ve/activity/ProjectListActivity;

.field public static currentLocale:Ljava/util/Locale;

.field private static isEditing:Z

.field private static isExported:Z

.field private static mToast:Landroid/widget/Toast;

.field private static project_off:Landroid/widget/ImageView;

.field private static project_on:Landroid/widget/ImageView;

.field private static trySharing:Z


# instance fields
.field private ADBuilder:Landroid/app/AlertDialog$Builder;

.field private activityInForeground:Z

.field private but_layout:Landroid/widget/RelativeLayout;

.field private create_newlayout:Landroid/widget/RelativeLayout;

.field currentView:Landroid/view/View;

.field private dialogID:I

.field private eContext:Landroid/content/Context;

.field private eThread:Lcom/sec/android/app/ve/thread/ExportThread;

.field private entered:Z

.field private exportPath:Ljava/lang/String;

.field private extraInstance:Z

.field private filepath:Ljava/lang/String;

.field private finalPath:Ljava/lang/String;

.field final handler:Landroid/os/Handler;

.field private imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

.field private intent:Landroid/content/Intent;

.field item:Landroid/view/MenuItem;

.field private lDialog:Landroid/app/Dialog;

.field private mBroadCastEventsCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/ve/activity/ProjectListActivity$BroadCastEventsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

.field mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

.field mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

.field private mEstimateDelay:I

.field private mFontsPaths:[Ljava/lang/String;

.field private mFontsPathsRaw:[I

.field private mHelveticaNeueUltraLight:Landroid/graphics/Typeface;

.field private mInflater:Landroid/view/MenuInflater;

.field private mProgress:I

.field public mProgressHandler:Landroid/os/Handler;

.field private mProjectListFrame:Landroid/widget/FrameLayout;

.field private mSelectedPos:I

.field private mSelectedView:Landroid/view/View;

.field markingStarted:Z

.field private max_projects:I

.field myDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

.field nextView:Landroid/view/View;

.field private no_project:Lcom/sec/android/app/ve/ui/HelveticaTextView;

.field private pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

.field previousView:Landroid/view/View;

.field private progress:Landroid/app/ProgressDialog;

.field private proj_list:Landroid/widget/Gallery;

.field rem:Landroid/view/View;

.field rename_item:Landroid/view/MenuItem;

.field private resolvedIntent:Landroid/content/Intent;

.field private sdcardAsMassStorage:Z

.field private selections:[Z

.field shareIntent:Landroid/content/Intent;

.field tCodeElmnt:Lcom/samsung/app/video/editor/external/TranscodeElement;

.field private themeNotLaunched:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 147
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->isEditing:Z

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->intent:Landroid/content/Intent;

    .line 135
    iput v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I

    .line 136
    iput v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mEstimateDelay:I

    .line 172
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedView:Landroid/view/View;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadCastEventsCallbacks:Ljava/util/ArrayList;

    .line 181
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mHelveticaNeueUltraLight:Landroid/graphics/Typeface;

    .line 182
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;

    .line 183
    const/16 v0, -0x6f

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    .line 184
    iput-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->ADBuilder:Landroid/app/AlertDialog$Builder;

    .line 186
    iput-boolean v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->sdcardAsMassStorage:Z

    .line 187
    iput-boolean v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->activityInForeground:Z

    .line 306
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "HelveticaNeueRegular_v1.11.ttf"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mFontsPaths:[Ljava/lang/String;

    .line 313
    new-array v0, v3, [I

    const v1, 0x7f050001

    aput v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mFontsPathsRaw:[I

    .line 941
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity$1;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1836
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity$2;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    .line 2575
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity$3;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgressHandler:Landroid/os/Handler;

    .line 2666
    new-instance v0, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity$4;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->handler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->activityInForeground:Z

    return v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->sdcardAsMassStorage:Z

    return v0
.end method

.method static synthetic access$10(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$11(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/ProjectOpView;
    .registers 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    return-object v0
.end method

.method static synthetic access$12(Z)V
    .registers 1
    .parameter

    .prologue
    .line 170
    sput-boolean p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->trySharing:Z

    return-void
.end method

.method static synthetic access$13(Lcom/sec/android/app/ve/activity/ProjectListActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->finalPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14()Z
    .registers 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->trySharing:Z

    return v0
.end method

.method static synthetic access$15(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/content/Intent;
    .registers 2
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->resolvedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$16(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->finalPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->but_layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$18(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;
    .registers 2
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    return-object v0
.end method

.method static synthetic access$19(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3283
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getElementFilePath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadCastEventsCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$20(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->filepath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 171
    iget v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I

    return v0
.end method

.method static synthetic access$22(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/view/project/MultipleDelete;
    .registers 2
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    return-object v0
.end method

.method static synthetic access$23(Landroid/widget/ImageView;)V
    .registers 1
    .parameter

    .prologue
    .line 113
    sput-object p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->project_off:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$24(Landroid/widget/ImageView;)V
    .registers 1
    .parameter

    .prologue
    .line 112
    sput-object p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->project_on:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$25(Lcom/sec/android/app/ve/activity/ProjectListActivity;)[Z
    .registers 2
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->selections:[Z

    return-object v0
.end method

.method static synthetic access$26()Landroid/widget/ImageView;
    .registers 1

    .prologue
    .line 112
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->project_on:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$27()Landroid/widget/ImageView;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->project_off:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$28(Lcom/sec/android/app/ve/activity/ProjectListActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->entered:Z

    return-void
.end method

.method static synthetic access$29(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->entered:Z

    return v0
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/activity/ProjectListActivity;Ljava/util/ArrayList;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadCastEventsCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$30(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 171
    iput p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I

    return-void
.end method

.method static synthetic access$31(Lcom/sec/android/app/ve/activity/ProjectListActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->themeNotLaunched:Z

    return-void
.end method

.method static synthetic access$32(Lcom/sec/android/app/ve/activity/ProjectListActivity;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$33(Lcom/sec/android/app/ve/activity/ProjectListActivity;[Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->selections:[Z

    return-void
.end method

.method static synthetic access$34(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 183
    iput p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    return-void
.end method

.method static synthetic access$35(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->eContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$36(Z)V
    .registers 1
    .parameter

    .prologue
    .line 169
    sput-boolean p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->isExported:Z

    return-void
.end method

.method static synthetic access$37(Lcom/sec/android/app/ve/activity/ProjectListActivity;Landroid/app/Dialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$38(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Landroid/content/Intent;
    .registers 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$39(Lcom/sec/android/app/ve/activity/ProjectListActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->resolvedIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$4()Z
    .registers 1

    .prologue
    .line 169
    sget-boolean v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->isExported:Z

    return v0
.end method

.method static synthetic access$5(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 135
    iget v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I

    return v0
.end method

.method static synthetic access$6(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 136
    iput p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mEstimateDelay:I

    return-void
.end method

.method static synthetic access$7(Lcom/sec/android/app/ve/activity/ProjectListActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 135
    iput p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I

    return-void
.end method

.method static synthetic access$8(Lcom/sec/android/app/ve/activity/ProjectListActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 136
    iget v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mEstimateDelay:I

    return v0
.end method

.method static synthetic access$9(Lcom/sec/android/app/ve/activity/ProjectListActivity;)Lcom/sec/android/app/ve/thread/ExportThread;
    .registers 2
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    return-object v0
.end method

.method private copyBitmapLocally(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 24
    .parameter "lBitmap"

    .prologue
    .line 3320
    if-eqz p1, :cond_ca

    .line 3323
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 3324
    .local v17, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 3326
    .local v14, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 3327
    .local v4, DEFAULT_THUMBNAIL_WIDTH:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 3329
    .local v3, DEFAULT_THUMBNAIL_HEIGHT:I
    div-int/lit8 v12, v17, 0x2

    .line 3330
    .local v12, focusX:I
    div-int/lit8 v13, v14, 0x2

    .line 3337
    .local v13, focusY:I
    mul-int v18, v4, v14

    mul-int v19, v3, v17

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_93

    .line 3339
    mul-int v18, v4, v14

    div-int v7, v18, v3

    .line 3340
    .local v7, cropWidth:I
    const/16 v18, 0x0

    div-int/lit8 v19, v7, 0x2

    sub-int v19, v12, v19

    sub-int v20, v17, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 3341
    .local v8, cropX:I
    const/4 v9, 0x0

    .line 3342
    .local v9, cropY:I
    move v6, v14

    .line 3343
    .local v6, cropHeight:I
    int-to-float v0, v4

    move/from16 v18, v0

    int-to-float v0, v14

    move/from16 v19, v0

    div-float v16, v18, v19

    .line 3352
    .local v16, scaleFactor:F
    :goto_3e
    const-string v18, "Before creating final bitmap"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3354
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    invoke-static {v4, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 3355
    .local v11, finalBitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3356
    .local v5, canvas:Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 3357
    .local v15, paint:Landroid/graphics/Paint;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 3358
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 3360
    new-instance v18, Landroid/graphics/Rect;

    add-int v19, v8, v7

    add-int v20, v9, v6

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v8, v9, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v19, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 3361
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3360
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v5, v0, v1, v2, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3362
    const-string v18, "After creating final bitmap and recycling"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3364
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3371
    .end local v3           #DEFAULT_THUMBNAIL_HEIGHT:I
    .end local v4           #DEFAULT_THUMBNAIL_WIDTH:I
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v6           #cropHeight:I
    .end local v7           #cropWidth:I
    .end local v8           #cropX:I
    .end local v9           #cropY:I
    .end local v11           #finalBitmap:Landroid/graphics/Bitmap;
    .end local v12           #focusX:I
    .end local v13           #focusY:I
    .end local v14           #height:I
    .end local v15           #paint:Landroid/graphics/Paint;
    .end local v16           #scaleFactor:F
    .end local v17           #width:I
    :goto_92
    return-object v11

    .line 3346
    .restart local v3       #DEFAULT_THUMBNAIL_HEIGHT:I
    .restart local v4       #DEFAULT_THUMBNAIL_WIDTH:I
    .restart local v12       #focusX:I
    .restart local v13       #focusY:I
    .restart local v14       #height:I
    .restart local v17       #width:I
    :cond_93
    mul-int v18, v3, v17

    div-int v6, v18, v4

    .line 3347
    .restart local v6       #cropHeight:I
    const/16 v18, 0x0

    div-int/lit8 v19, v6, 0x2

    sub-int v19, v13, v19

    sub-int v20, v14, v6

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a6} :catch_b5

    move-result v9

    .line 3348
    .restart local v9       #cropY:I
    const/4 v8, 0x0

    .line 3349
    .restart local v8       #cropX:I
    move/from16 v7, v17

    .line 3350
    .restart local v7       #cropWidth:I
    int-to-float v0, v4

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v16, v18, v19

    .restart local v16       #scaleFactor:F
    goto :goto_3e

    .line 3367
    .end local v3           #DEFAULT_THUMBNAIL_HEIGHT:I
    .end local v4           #DEFAULT_THUMBNAIL_WIDTH:I
    .end local v6           #cropHeight:I
    .end local v7           #cropWidth:I
    .end local v8           #cropX:I
    .end local v9           #cropY:I
    .end local v12           #focusX:I
    .end local v13           #focusY:I
    .end local v14           #height:I
    .end local v16           #scaleFactor:F
    .end local v17           #width:I
    :catch_b5
    move-exception v10

    .line 3368
    .local v10, e:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Exception PLA copyBitmapLocally"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .end local v10           #e:Ljava/lang/Exception;
    :cond_ca
    move-object/from16 v11, p1

    .line 3371
    goto :goto_92
.end method

.method private deleteDrawingFiles()V
    .registers 6

    .prologue
    .line 875
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/samsung/app/video/editor/external/ClipartParams;->DRAWING_SD_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 876
    .local v2, lFileDir:Ljava/io/File;
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 878
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 879
    .local v1, lDrawFiles:[Ljava/io/File;
    if-nez v1, :cond_16

    .line 890
    .end local v1           #lDrawFiles:[Ljava/io/File;
    :cond_15
    return-void

    .line 881
    .restart local v1       #lDrawFiles:[Ljava/io/File;
    :cond_16
    array-length v4, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v4, :cond_15

    aget-object v0, v1, v3

    .line 883
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_21

    .line 886
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 881
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_18
.end method

.method private exportVideoCheck()V
    .registers 10

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    .line 2519
    const-string v5, "project is same,checking for exported video..if present"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2520
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getExportedVideoPath()Ljava/lang/String;

    move-result-object v0

    .line 2522
    .local v0, exportedPath:Ljava/lang/String;
    if-eqz v0, :cond_87

    .line 2523
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2524
    .local v1, file:Ljava/io/File;
    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->getVideoIdbyPath(Ljava/lang/String;)J

    move-result-wide v2

    .line 2525
    .local v2, lId:J
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Video Id::"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2527
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-eqz v5, :cond_6b

    .line 2528
    const-string v5, "lId not zero"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2529
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "content://media/external/video/media/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2534
    .local v4, uri:Landroid/net/Uri;
    :goto_4b
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->resolvedIntent:Landroid/content/Intent;

    if-eqz v5, :cond_67

    .line 2535
    if-eqz v4, :cond_72

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 2536
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->resolvedIntent:Landroid/content/Intent;

    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2538
    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeDialog(I)V

    .line 2539
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->resolvedIntent:Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->startActivity(Landroid/content/Intent;)V

    .line 2551
    :cond_67
    :goto_67
    const/4 v5, 0x0

    sput-boolean v5, Lcom/sec/android/app/ve/activity/ProjectListActivity;->trySharing:Z

    .line 2561
    .end local v1           #file:Ljava/io/File;
    .end local v2           #lId:J
    .end local v4           #uri:Landroid/net/Uri;
    :goto_6a
    return-void

    .line 2531
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #lId:J
    :cond_6b
    const-string v5, "file not there"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2532
    const/4 v4, 0x0

    .restart local v4       #uri:Landroid/net/Uri;
    goto :goto_4b

    .line 2541
    :cond_72
    const-string v5, "exported file not available, filed may be moved"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2543
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->eContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->getCheckBoxValue(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 2544
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    goto :goto_67

    .line 2546
    :cond_83
    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    goto :goto_67

    .line 2553
    .end local v1           #file:Ljava/io/File;
    .end local v2           #lId:J
    .end local v4           #uri:Landroid/net/Uri;
    :cond_87
    const-string v5, "exportPAth is null,export maadi"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2554
    iget-object v5, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->eContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->getCheckBoxValue(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_98

    .line 2555
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    goto :goto_6a

    .line 2557
    :cond_98
    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    goto :goto_6a
.end method

.method private getElementFilePath(I)Ljava/lang/String;
    .registers 8
    .parameter "position"

    .prologue
    .line 3286
    const/4 v0, 0x0

    .line 3288
    .local v0, count:I
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v4

    .line 3289
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 3290
    const/4 v2, 0x0

    .local v2, i:I
    :goto_18
    if-lt v2, v0, :cond_1c

    .line 3299
    const/4 v3, 0x0

    :goto_1b
    return-object v3

    .line 3291
    :cond_1c
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v4

    .line 3292
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 3293
    .local v3, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3294
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 3295
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "File exists for the Element::"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_1b

    .line 3290
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_18
.end method

.method public static getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;
    .registers 1

    .prologue
    .line 1792
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->_instance:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    return-object v0
.end method

.method private registerForBroadCast()V
    .registers 3

    .prologue
    .line 901
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 904
    .local v0, lIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 905
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 906
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 907
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 908
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 909
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 912
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 913
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 915
    return-void
.end method

.method public static showToast(IIII)V
    .registers 7
    .parameter "aId"
    .parameter "gravity"
    .parameter "xOff"
    .parameter "yOff"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1742
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_16

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1744
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mToast:Landroid/widget/Toast;

    .line 1746
    :cond_16
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1747
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mToast:Landroid/widget/Toast;

    .line 1750
    :cond_2a
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_2f

    .line 1759
    :goto_2e
    return-void

    .line 1752
    :cond_2f
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(I)V

    .line 1758
    sget-object v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2e
.end method

.method private updatePopViewButLayout()V
    .registers 3

    .prologue
    .line 3245
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_37

    .line 3246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Making selection for:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3247
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v0

    .line 3248
    invoke-virtual {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    .line 3247
    if-nez v0, :cond_38

    .line 3249
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->disableExportShareButton()V

    .line 3254
    :cond_37
    :goto_37
    return-void

    .line 3251
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->enableExportShareButton()V

    goto :goto_37
.end method


# virtual methods
.method public applyEffect(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "effect"
    .parameter "bitmap"

    .prologue
    .line 1573
    if-nez p2, :cond_4

    .line 1574
    const/4 v7, 0x0

    .line 1611
    :goto_3
    return-object v7

    .line 1576
    :cond_4
    const/4 v6, 0x0

    .line 1577
    .local v6, bitmap565:Landroid/graphics/Bitmap;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyefect before config -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1579
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_87

    .line 1581
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1582
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1583
    const/4 p2, 0x0

    .line 1588
    :goto_2e
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1591
    .local v7, bm:Landroid/graphics/Bitmap;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "applyefect after changing config -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v8, v0, [B

    .line 1596
    .local v8, buf:[B
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 1598
    .local v9, pixelBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v9}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 1601
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    .line 1602
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 1603
    const/4 v5, 0x1

    move v4, p1

    .line 1601
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/app/video/editor/external/NativeInterface;->applyEffectToVideoThumbnail([BIIII)[B

    move-result-object v10

    .line 1604
    .local v10, result:[B
    if-eqz v10, :cond_89

    .line 1605
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 1606
    invoke-virtual {v7, v9}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto/16 :goto_3

    .line 1585
    .end local v7           #bm:Landroid/graphics/Bitmap;
    .end local v8           #buf:[B
    .end local v9           #pixelBuffer:Ljava/nio/ByteBuffer;
    .end local v10           #result:[B
    :cond_87
    move-object v6, p2

    goto :goto_2e

    .line 1608
    .restart local v7       #bm:Landroid/graphics/Bitmap;
    .restart local v8       #buf:[B
    .restart local v9       #pixelBuffer:Ljava/nio/ByteBuffer;
    .restart local v10       #result:[B
    :cond_89
    const-string v0, "<<<<<<< retouch effect GOT NULL DATA FROM ENGINE >>>>>>>>"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public changeVisibilty()V
    .registers 3

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->proj_list:Landroid/widget/Gallery;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 1855
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->no_project:Lcom/sec/android/app/ve/ui/HelveticaTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/ui/HelveticaTextView;->setVisibility(I)V

    .line 1857
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProjectListFrame:Landroid/widget/FrameLayout;

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1858
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->deleteDrawingFiles()V

    .line 1859
    return-void
.end method

.method public createNewProject()V
    .registers 6

    .prologue
    .line 918
    new-instance v2, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-direct {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;-><init>()V

    .line 920
    .local v2, tCodeElmnt:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :try_start_5
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->addProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Lcom/samsung/app/video/editor/external/TranscodeElement;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_35

    move-result-object v2

    .line 931
    :goto_d
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->max_projects:I

    .line 932
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/ve/activity/ThemeGallery;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 933
    .local v1, lIntent:Landroid/content/Intent;
    const-string v3, "filename"

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    const-string v3, "newproject"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 937
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->startActivity(Landroid/content/Intent;)V

    .line 938
    return-void

    .line 921
    .end local v1           #lIntent:Landroid/content/Intent;
    :catch_35
    move-exception v0

    .line 922
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d
.end method

.method public getBitmapFromEngine(Ljava/lang/String;FI)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "filePath"
    .parameter "time"
    .parameter "effect"

    .prologue
    .line 1551
    const/16 v2, 0x280

    .line 1552
    .local v2, width:I
    const/16 v3, 0x1e0

    .line 1553
    .local v3, height:I
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1554
    .local v6, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    const/high16 v4, 0x447a

    mul-float/2addr v4, p2

    float-to-int v4, v4

    const/16 v5, 0x280

    const/16 v8, 0x1e0

    invoke-virtual {v0, p1, v4, v5, v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->VEGetFrameRGB565Buffer(Ljava/lang/String;III)[B

    move-result-object v1

    .line 1556
    .local v1, bytes:[B
    if-eqz v1, :cond_30

    .line 1557
    if-eqz p3, :cond_28

    .line 1558
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    .line 1559
    const/4 v5, 0x1

    move v4, p3

    .line 1558
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/app/video/editor/external/NativeInterface;->applyEffectToVideoThumbnail([BIIII)[B

    move-result-object v1

    .line 1561
    :cond_28
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1562
    .local v7, pixelBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1566
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #pixelBuffer:Ljava/nio/ByteBuffer;
    :goto_2f
    return-object v6

    .line 1565
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    :cond_30
    const-string v0, "Bytes from Engine null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1566
    const/4 v6, 0x0

    goto :goto_2f
.end method

.method public getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;
    .registers 4

    .prologue
    .line 1026
    const/4 v0, 0x0

    .line 1027
    .local v0, t:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #t:Lcom/samsung/app/video/editor/external/TranscodeElement;
    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 1028
    .restart local v0       #t:Lcom/samsung/app/video/editor/external/TranscodeElement;
    return-object v0
.end method

.method public getDiaID()I
    .registers 2

    .prologue
    .line 2572
    iget v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    return v0
.end method

.method public getProjectSelected()I
    .registers 2

    .prologue
    .line 1032
    iget v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I

    return v0
.end method

.method public getProjectSelections()[Z
    .registers 2

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->selections:[Z

    return-object v0
.end method

.method public isEThreadAlive()Z
    .registers 2

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/ExportThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1899
    const/4 v0, 0x1

    .line 1901
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isThemeNotLaunched()Z
    .registers 2

    .prologue
    .line 3314
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->themeNotLaunched:Z

    return v0
.end method

.method public makeButtonLayoutVisible()V
    .registers 3

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->but_layout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1864
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->notifyDataSetChanged()V

    .line 1865
    return-void
.end method

.method public makeCheckBoxesInvisible()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    .line 1718
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1719
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, j:I
    :goto_e
    if-lt v0, v1, :cond_11

    .line 1735
    return-void

    .line 1720
    :cond_11
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->proj_list:Landroid/widget/Gallery;

    invoke-virtual {v3, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1721
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_31

    .line 1722
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->selections:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_34

    .line 1723
    const v3, 0x7f0b00a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1724
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1731
    :goto_2c
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->notifyDataSetChanged()V

    .line 1719
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1727
    :cond_34
    sget-object v3, Lcom/sec/android/app/ve/activity/ProjectListActivity;->project_off:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2c
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 12
    .parameter "newConfig"

    .prologue
    const v9, 0x7f080047

    .line 320
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "This is inside onConfigurationChanged ProjectListActivity"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 323
    sget-object v7, Lcom/sec/android/app/ve/activity/ProjectListActivity;->currentLocale:Ljava/util/Locale;

    iget-object v8, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13a

    .line 324
    iget-object v7, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v7, Lcom/sec/android/app/ve/activity/ProjectListActivity;->currentLocale:Ljava/util/Locale;

    .line 325
    iget-object v7, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v7}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 328
    const-string v7, "PLA onConfigChanged::::ppView on Top"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 330
    const v7, 0x7f0b00b5

    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 331
    .local v1, temp0:Landroid/widget/Button;
    if-eqz v1, :cond_46

    .line 332
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_46
    const v7, 0x7f0b00b7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 336
    .local v2, temp1:Landroid/widget/Button;
    if-eqz v2, :cond_5f

    .line 337
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08005a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :cond_5f
    const v7, 0x7f0b00b9

    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 341
    .local v3, temp2:Landroid/widget/Button;
    if-eqz v3, :cond_78

    .line 342
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080059

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_78
    const-string v7, "PLA onConfigChanged::::mDView on Top"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 347
    const v7, 0x7f0b0057

    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 348
    .local v4, temp3:Landroid/widget/Button;
    if-eqz v4, :cond_93

    .line 349
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :cond_93
    const v7, 0x7f0b0059

    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 353
    .local v5, temp4:Landroid/widget/Button;
    if-eqz v5, :cond_ac

    .line 354
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08004d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :cond_ac
    const v7, 0x7f0b00af

    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 358
    .local v6, temp5:Landroid/widget/TextView;
    if-eqz v6, :cond_c5

    .line 359
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080086

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_c5
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->item:Landroid/view/MenuItem;

    if-eqz v7, :cond_d6

    .line 364
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->item:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 366
    :cond_d6
    const v7, 0x7f0b00ac

    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/ui/HelveticaTextView;

    .line 367
    .local v0, no_project_temp:Lcom/sec/android/app/ve/ui/HelveticaTextView;
    if-eqz v0, :cond_ee

    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f08

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sec/android/app/ve/ui/HelveticaTextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_ee
    iget v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    const/16 v8, -0x6f

    if-eq v7, v8, :cond_13a

    .line 372
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PLA::Remove Dialog:::"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 373
    iget v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeDialog(I)V

    .line 374
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PLA::Create Dialog:::"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 375
    iget v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    .line 376
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PLA::Dialog:::"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 381
    .end local v0           #no_project_temp:Lcom/sec/android/app/ve/ui/HelveticaTextView;
    .end local v1           #temp0:Landroid/widget/Button;
    .end local v2           #temp1:Landroid/widget/Button;
    .end local v3           #temp2:Landroid/widget/Button;
    .end local v4           #temp3:Landroid/widget/Button;
    .end local v5           #temp4:Landroid/widget/Button;
    .end local v6           #temp5:Landroid/widget/TextView;
    :cond_13a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 23
    .parameter "savedInstanceState"

    .prologue
    .line 386
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 388
    const-string v17, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 389
    .local v3, actM:Landroid/app/ActivityManager;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    .line 390
    .local v11, listm:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v17

    iget v8, v0, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    .line 391
    .local v8, iNumActivity:I
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "PLA noumber::"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 392
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_64

    .line 393
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->extraInstance:Z

    .line 394
    const-string v17, "finish second and restart"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sec/android/app/ve/activity/ProjectListActivity$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$5;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    .line 413
    const-wide/16 v19, 0x12c

    .line 399
    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->finish()V

    .line 870
    :goto_63
    return-void

    .line 420
    :cond_64
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "PLA oncreate:::"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v18, Lcom/sec/android/app/ve/activity/ProjectListActivity;->isEditing:Z

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 422
    sput-object p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->_instance:Lcom/sec/android/app/ve/activity/ProjectListActivity;

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v17, v0

    sput-object v17, Lcom/sec/android/app/ve/activity/ProjectListActivity;->currentLocale:Ljava/util/Locale;

    .line 426
    const-string v17, ""

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    sput-object v17, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mToast:Landroid/widget/Toast;

    .line 428
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->registerForBroadCast()V

    .line 429
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v17

    const-string v18, "shared"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c0

    .line 430
    const-string v17, "SD card shared as USB mass storage, closing the application"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 433
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    .line 434
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->sdcardAsMassStorage:Z

    goto :goto_63

    .line 440
    :cond_c0
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getFilesDir()Ljava/io/File;

    move-result-object v16

    .line 441
    .local v16, workingDir:Ljava/io/File;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 443
    .local v10, lRs:Landroid/content/res/Resources;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mFontsPaths:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v7, v0, :cond_f6

    .line 476
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->checkStorage()Z

    move-result v17

    if-eqz v17, :cond_149

    .line 477
    const-string v17, "Device Memory Low"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 478
    const/16 v17, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    goto/16 :goto_63

    .line 446
    :cond_f6
    new-instance v14, Ljava/io/File;

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mFontsPaths:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    .line 446
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 448
    .local v14, transitionFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_139

    .line 450
    :try_start_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mFontsPathsRaw:[I

    move-object/from16 v17, v0

    aget v17, v17, v7

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    .line 451
    .local v9, inputStream:Ljava/io/InputStream;
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 454
    .local v13, outputStream:Ljava/io/FileOutputStream;
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 456
    .local v4, data:[B
    :goto_126
    invoke-virtual {v9, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    .local v12, n:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_13c

    .line 460
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 461
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 462
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 443
    .end local v4           #data:[B
    .end local v9           #inputStream:Ljava/io/InputStream;
    .end local v12           #n:I
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    :cond_139
    :goto_139
    add-int/lit8 v7, v7, 0x1

    goto :goto_d1

    .line 457
    .restart local v4       #data:[B
    .restart local v9       #inputStream:Ljava/io/InputStream;
    .restart local v12       #n:I
    .restart local v13       #outputStream:Ljava/io/FileOutputStream;
    :cond_13c
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v4, v0, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_143} :catch_144

    goto :goto_126

    .line 464
    .end local v4           #data:[B
    .end local v9           #inputStream:Ljava/io/InputStream;
    .end local v12           #n:I
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    :catch_144
    move-exception v5

    .line 465
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_139

    .line 482
    .end local v5           #e:Ljava/lang/Exception;
    .end local v14           #transitionFile:Ljava/io/File;
    :cond_149
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->isMediaScannerScanning()Z

    move-result v17

    if-eqz v17, :cond_165

    .line 484
    const-string v17, "Media Scanner is running so exiting"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 486
    const v17, 0x7f080034

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v20}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showToast(IIII)V

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->finish()V

    goto/16 :goto_63

    .line 490
    :cond_165
    invoke-static {}, Lcom/sec/android/app/ve/thread/LooperThread;->getInstance()Lcom/sec/android/app/ve/thread/LooperThread;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/ve/thread/LooperThread;->init()V

    .line 491
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->requestWindowFeature(I)Z

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x400

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->addFlags(I)V

    .line 494
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 498
    const v17, 0x7f030028

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->setContentView(I)V

    .line 504
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/ve/pm/ProjectManager;->init()V

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->setUpViews()V

    .line 507
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I

    .line 508
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->max_projects:I

    .line 509
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "onCreate of projects::"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->max_projects:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 510
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_203

    .line 511
    const-string v17, "No projects"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->proj_list:Landroid/widget/Gallery;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->no_project:Lcom/sec/android/app/ve/ui/HelveticaTextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/ve/ui/HelveticaTextView;->setVisibility(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProjectListFrame:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    const v18, 0x7f020116

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 515
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->deleteDrawingFiles()V

    .line 517
    :cond_203
    new-instance v17, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->proj_list:Landroid/widget/Gallery;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->proj_list:Landroid/widget/Gallery;

    move-object/from16 v17, v0

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->proj_list:Landroid/widget/Gallery;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$6;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->proj_list:Landroid/widget/Gallery;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$7;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Gallery;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->proj_list:Landroid/widget/Gallery;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sec/android/app/ve/activity/ProjectListActivity$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$8;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->create_newlayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sec/android/app/ve/activity/ProjectListActivity$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$9;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    const-string v6, "/mnt/sdcard/Videomaker"

    .line 816
    .local v6, filepath:Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 817
    .local v15, veDir:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_289

    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_28c

    .line 818
    :cond_289
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 821
    :cond_28c
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->loadRawThemeFileLoad()V

    .line 822
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->loadPreDefinedThemes()V

    .line 868
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->eContext:Landroid/content/Context;

    goto/16 :goto_63
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 30
    .parameter "id"

    .prologue
    .line 1946
    packed-switch p1, :pswitch_data_632

    .line 2502
    :goto_3
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 2503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v23

    const/16 v24, 0x400

    invoke-virtual/range {v23 .. v24}, Landroid/view/Window;->addFlags(I)V

    .line 2505
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;

    :goto_1e
    return-object v13

    .line 1950
    :pswitch_1f
    const/16 v23, 0x9

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    .line 1951
    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 1952
    .local v13, dialog:Landroid/app/AlertDialog;
    const/high16 v23, 0x7f08

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1953
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f080077

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1954
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08004c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lcom/sec/android/app/ve/activity/ProjectListActivity$10;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$10;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1963
    new-instance v23, Lcom/sec/android/app/ve/activity/ProjectListActivity$11;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$11;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_1e

    .line 1981
    .end local v13           #dialog:Landroid/app/AlertDialog;
    :pswitch_75
    const/16 v23, 0x8

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    .line 1982
    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 1983
    .restart local v13       #dialog:Landroid/app/AlertDialog;
    const/high16 v23, 0x7f08

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1984
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f080079

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1985
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08004c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lcom/sec/android/app/ve/activity/ProjectListActivity$12;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$12;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1994
    new-instance v23, Lcom/sec/android/app/ve/activity/ProjectListActivity$13;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$13;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_1e

    .line 2012
    .end local v13           #dialog:Landroid/app/AlertDialog;
    :pswitch_cc
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    .line 2013
    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2014
    const v24, 0x7f08000f

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    .line 2015
    const v24, 0x7f060004

    new-instance v25, Lcom/sec/android/app/ve/activity/ProjectListActivity$14;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$14;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    .line 2040
    new-instance v24, Lcom/sec/android/app/ve/activity/ProjectListActivity$15;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$15;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    .line 2013
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->ADBuilder:Landroid/app/AlertDialog$Builder;

    .line 2062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->ADBuilder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;

    .line 2065
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;

    goto/16 :goto_1e

    .line 2068
    :pswitch_11d
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    .line 2069
    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    .line 2070
    .local v16, lAlert:Landroid/app/AlertDialog;
    const v23, 0x7f080059

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2071
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f080006

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2072
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08000b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lcom/sec/android/app/ve/activity/ProjectListActivity$16;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$16;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2085
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08000c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lcom/sec/android/app/ve/activity/ProjectListActivity$17;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$17;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2100
    new-instance v23, Lcom/sec/android/app/ve/activity/ProjectListActivity$18;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$18;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2112
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;

    goto/16 :goto_3

    .line 2117
    .end local v16           #lAlert:Landroid/app/AlertDialog;
    :pswitch_1a0
    new-instance v23, Landroid/app/ProgressDialog;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->progress:Landroid/app/ProgressDialog;

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 2119
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2120
    .local v12, customTitle:Landroid/widget/TextView;
    const/16 v23, 0x17

    const/16 v24, 0xa

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2121
    const/high16 v23, 0x41a0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2122
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const/high16 v24, 0x7f07

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2123
    const v23, 0x7f080028

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/app/ProgressDialog;->setCustomTitle(Landroid/view/View;)V

    .line 2126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f080029

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v23, v0

    const/16 v24, 0x64

    invoke-virtual/range {v23 .. v24}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 2129
    new-instance v24, Lcom/sec/android/app/ve/thread/ExportThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->handler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x3e8

    .line 2131
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v23

    .line 2132
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I

    move/from16 v27, v0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, p0

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/ve/thread/ExportThread;-><init>(Landroid/os/Handler;ILandroid/content/Context;Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 2129
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    .line 2133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/ve/thread/ExportThread;->start()V

    .line 2135
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I

    .line 2136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgress:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 2137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgressHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-wide/16 v25, 0x1f4

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v23, v0

    new-instance v24, Lcom/sec/android/app/ve/activity/ProjectListActivity$19;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$19;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->progress:Landroid/app/ProgressDialog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;

    goto/16 :goto_3

    .line 2165
    .end local v12           #customTitle:Landroid/widget/TextView;
    :pswitch_2a9
    const/16 v23, 0x5

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    .line 2166
    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    .line 2167
    .local v18, lShareExportAlert:Landroid/app/AlertDialog;
    const v23, 0x7f08005a

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2168
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f080007

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2169
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08000b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lcom/sec/android/app/ve/activity/ProjectListActivity$20;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$20;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2184
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08000c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lcom/sec/android/app/ve/activity/ProjectListActivity$21;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$21;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2194
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;

    goto/16 :goto_3

    .line 2198
    .end local v18           #lShareExportAlert:Landroid/app/AlertDialog;
    :pswitch_31c
    const/16 v23, 0x6

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    .line 2199
    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v21

    .line 2201
    .local v21, pDAlert:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I

    move/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2202
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f080046

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2203
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08000b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lcom/sec/android/app/ve/activity/ProjectListActivity$22;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$22;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2223
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08000c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lcom/sec/android/app/ve/activity/ProjectListActivity$23;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$23;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2235
    new-instance v23, Lcom/sec/android/app/ve/activity/ProjectListActivity$24;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$24;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2251
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;

    goto/16 :goto_3

    .line 2258
    .end local v21           #pDAlert:Landroid/app/AlertDialog;
    :pswitch_3ba
    const/16 v23, 0x7

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    .line 2259
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->intent:Landroid/content/Intent;

    .line 2261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    const-string v24, "android.intent.action.SEND"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    const-string v24, "video/mp4"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2269
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2270
    .local v9, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 2273
    .local v22, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->intent:Landroid/content/Intent;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 2274
    .local v5, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v23, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2277
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_49d

    .line 2278
    new-instance v23, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->resolvedIntent:Landroid/content/Intent;

    .line 2279
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v23

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2280
    .local v8, ai:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->resolvedIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/ComponentName;

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-direct/range {v24 .. v26}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2282
    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2283
    .local v6, activityName:Ljava/lang/String;
    const-string v23, "com.android.mms"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_492

    .line 2284
    const-string v23, "Messaging app"

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2285
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setResolutionEnumValue(I)V

    .line 2286
    const/16 v23, 0x1

    sput-boolean v23, Lcom/sec/android/app/ve/activity/ProjectListActivity;->isExported:Z

    .line 2287
    sget-boolean v23, Lcom/sec/android/app/ve/activity/ProjectListActivity;->trySharing:Z

    if-eqz v23, :cond_487

    .line 2288
    const/16 v23, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    goto/16 :goto_3

    .line 2290
    :cond_487
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    goto/16 :goto_3

    .line 2292
    :cond_492
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    goto/16 :goto_3

    .line 2298
    .end local v6           #activityName:Ljava/lang/String;
    .end local v8           #ai:Landroid/content/pm/ActivityInfo;
    :cond_49d
    new-instance v20, Lcom/sec/android/app/ve/activity/ProjectListActivity$25;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/ve/activity/ProjectListActivity$25;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;Ljava/util/List;)V

    .line 2320
    .local v20, mShareListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Lcom/sec/android/app/ve/activity/ProjectListActivity$ResolverAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v7, v0, v1, v5}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ResolverAdapter;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;Landroid/content/Context;Ljava/util/List;)V

    .line 2323
    .local v7, adapter:Lcom/sec/android/app/ve/activity/ProjectListActivity$ResolverAdapter;
    const v23, 0x7f080031

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2324
    move-object/from16 v0, v20

    invoke-virtual {v9, v7, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2327
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    .line 2330
    .local v17, lDialog2:Landroid/app/AlertDialog;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08004d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lcom/sec/android/app/ve/activity/ProjectListActivity$26;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$26;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2345
    new-instance v23, Lcom/sec/android/app/ve/activity/ProjectListActivity$27;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$27;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2357
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;

    goto/16 :goto_3

    .line 2360
    .end local v5           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7           #adapter:Lcom/sec/android/app/ve/activity/ProjectListActivity$ResolverAdapter;
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    .end local v17           #lDialog2:Landroid/app/AlertDialog;
    .end local v20           #mShareListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v22           #pm:Landroid/content/pm/PackageManager;
    :pswitch_4f5
    const/16 v23, 0xa

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    .line 2361
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    .line 2362
    .local v15, factory:Landroid/view/LayoutInflater;
    const v23, 0x7f030013

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 2363
    .local v11, checkBoxLayout:Landroid/view/View;
    const v23, 0x7f0b0040

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    .line 2364
    .local v10, cb:Landroid/widget/CheckBox;
    new-instance v23, Lcom/sec/android/app/ve/activity/ProjectListActivity$28;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$28;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2374
    new-instance v23, Lcom/sec/android/app/ve/activity/ProjectListActivity$29;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$29;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2386
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2387
    .local v14, eBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I

    move/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2389
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08006e

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2390
    const v23, 0x7f08000b

    new-instance v24, Lcom/sec/android/app/ve/activity/ProjectListActivity$30;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$30;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2399
    const v23, 0x7f08000c

    new-instance v24, Lcom/sec/android/app/ve/activity/ProjectListActivity$31;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$31;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2407
    invoke-virtual {v14, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2408
    new-instance v23, Lcom/sec/android/app/ve/activity/ProjectListActivity$32;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$32;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2422
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;

    goto/16 :goto_3

    .line 2425
    .end local v10           #cb:Landroid/widget/CheckBox;
    .end local v11           #checkBoxLayout:Landroid/view/View;
    .end local v14           #eBuilder:Landroid/app/AlertDialog$Builder;
    .end local v15           #factory:Landroid/view/LayoutInflater;
    :pswitch_5ae
    const/16 v23, 0xb

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    .line 2426
    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v19

    .line 2428
    .local v19, mPDAlert:Landroid/app/AlertDialog;
    const v23, 0x7f080099

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2429
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08009a

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2430
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08000b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lcom/sec/android/app/ve/activity/ProjectListActivity$33;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$33;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2461
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f08000c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    new-instance v24, Lcom/sec/android/app/ve/activity/ProjectListActivity$34;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$34;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2471
    new-instance v23, Lcom/sec/android/app/ve/activity/ProjectListActivity$35;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$35;-><init>(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2496
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/ve/activity/ProjectListActivity;->lDialog:Landroid/app/Dialog;

    goto/16 :goto_3

    .line 1946
    nop

    :pswitch_data_632
    .packed-switch 0x1
        :pswitch_cc
        :pswitch_11d
        :pswitch_1a0
        :pswitch_3
        :pswitch_2a9
        :pswitch_31c
        :pswitch_3ba
        :pswitch_75
        :pswitch_1f
        :pswitch_4f5
        :pswitch_5ae
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 1627
    const-string v0, "onCreateOptionsMenu"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1628
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->sdcardAsMassStorage:Z

    if-nez v0, :cond_17

    .line 1630
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mInflater:Landroid/view/MenuInflater;

    .line 1631
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mInflater:Landroid/view/MenuInflater;

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1635
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 1762
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1764
    iget-boolean v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->extraInstance:Z

    if-eqz v1, :cond_8

    .line 1786
    :goto_7
    return-void

    .line 1768
    :cond_8
    :try_start_8
    sget-object v1, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->mVEMusicAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1769
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/app/ve/thread/MusicAlbumCacheUtil;->isRefreshSongs:Z

    .line 1771
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgressHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1a

    .line 1772
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProgressHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1773
    :cond_1a
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->progress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_23

    .line 1774
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1778
    :cond_23
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_terminate()V

    .line 1779
    invoke-static {}, Lcom/sec/android/app/ve/thread/LooperThread;->getInstance()Lcom/sec/android/app/ve/thread/LooperThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/thread/LooperThread;->terminate()V

    .line 1780
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_36} :catch_37

    goto :goto_7

    .line 1782
    :catch_37
    move-exception v0

    .line 1783
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inside PLA onDestroy and exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1870
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2d

    .line 1874
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_16

    .line 1876
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->onKeyDownEevnt(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1894
    :goto_15
    return v1

    .line 1878
    :cond_16
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2d

    .line 1879
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->onKeyDownEevnt(ILandroid/view/KeyEvent;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_29

    move-result v1

    goto :goto_15

    .line 1889
    :catch_29
    move-exception v0

    .line 1890
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1894
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_15
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 13
    .parameter "item"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1667
    :try_start_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const v10, 0x7f0b013f

    if-ne v7, v10, :cond_e4

    .line 1668
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_e4

    .line 1669
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 1671
    .local v5, size:I
    new-array v7, v5, [Z

    iput-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->selections:[Z

    .line 1672
    const/4 v1, 0x0

    .local v1, i:I
    :goto_24
    if-lt v1, v5, :cond_b5

    .line 1675
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 1676
    .local v4, mInflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030027

    const/4 v10, 0x0

    invoke-virtual {v4, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1678
    .local v3, layout:Landroid/widget/LinearLayout;
    const v7, 0x7f0b00a6

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    sput-object v7, Lcom/sec/android/app/ve/activity/ProjectListActivity;->project_off:Landroid/widget/ImageView;

    .line 1679
    const v7, 0x7f0b00a7

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    sput-object v7, Lcom/sec/android/app/ve/activity/ProjectListActivity;->project_on:Landroid/widget/ImageView;

    .line 1681
    const/4 v7, 0x1

    sput-boolean v7, Lcom/sec/android/app/ve/activity/ProjectListActivity;->isEditing:Z

    .line 1683
    const/4 v2, 0x0

    .local v2, j:I
    :goto_52
    if-lt v2, v5, :cond_be

    .line 1690
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->but_layout:Landroid/widget/RelativeLayout;

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1691
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_a8

    .line 1693
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "Proj Pos:::::"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\n Proj total::"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->proj_list:Landroid/widget/Gallery;

    invoke-virtual {v10}, Landroid/widget/Gallery;->getChildCount()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1694
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedView:Landroid/view/View;

    if-eqz v7, :cond_d5

    .line 1695
    const-string v7, "making slected view invisible"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1696
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedView:Landroid/view/View;

    const v10, 0x7f0b00a8

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1697
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->notifyDataSetChanged()V

    .line 1701
    :goto_a1
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->setVisibility(I)V

    .line 1704
    :cond_a8
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->disableDeleteButton()V

    .line 1705
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->setVisibility(I)V

    move v7, v8

    .line 1714
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #layout:Landroid/widget/LinearLayout;
    .end local v4           #mInflater:Landroid/view/LayoutInflater;
    .end local v5           #size:I
    :goto_b4
    return v7

    .line 1673
    .restart local v1       #i:I
    .restart local v5       #size:I
    :cond_b5
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->selections:[Z

    const/4 v10, 0x0

    aput-boolean v10, v7, v1

    .line 1672
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_24

    .line 1684
    .restart local v2       #j:I
    .restart local v3       #layout:Landroid/widget/LinearLayout;
    .restart local v4       #mInflater:Landroid/view/LayoutInflater;
    :cond_be
    iget-object v7, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->proj_list:Landroid/widget/Gallery;

    invoke-virtual {v7, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1685
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_d1

    .line 1686
    const v7, 0x7f0b00a6

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1683
    :cond_d1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_52

    .line 1699
    .end local v6           #v:Landroid/view/View;
    :cond_d5
    const-string v7, "Proj :::View is nul"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_da} :catch_db

    goto :goto_a1

    .line 1710
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #layout:Landroid/widget/LinearLayout;
    .end local v4           #mInflater:Landroid/view/LayoutInflater;
    .end local v5           #size:I
    :catch_db
    move-exception v0

    .line 1711
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "Ignore below error"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1712
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_e4
    move v7, v9

    .line 1714
    goto :goto_b4
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/16 v1, -0x6f

    .line 1043
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1044
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->activityInForeground:Z

    .line 1045
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->extraInstance:Z

    if-eqz v0, :cond_f

    .line 1068
    :goto_e
    return-void

    .line 1047
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/ExportThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1048
    const-string v0, "Stopping export when home key pressed"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1049
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->removeDialog(I)V

    .line 1050
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->eThread:Lcom/sec/android/app/ve/thread/ExportThread;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/ExportThread;->stopExport()V

    .line 1053
    :cond_29
    iget v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    if-eq v0, v1, :cond_34

    .line 1054
    iget v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dismissDialog(I)V

    .line 1055
    iput v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    .line 1059
    :cond_34
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_45

    .line 1060
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->setVisibility(I)V

    .line 1063
    :cond_45
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->getVisibility()I

    move-result v0

    if-nez v0, :cond_56

    .line 1064
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->setVisibility(I)V

    .line 1067
    :cond_56
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_terminate()V

    goto :goto_e
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1909
    packed-switch p1, :pswitch_data_2c

    .line 1940
    :goto_3
    :pswitch_3
    return-void

    .line 1911
    :pswitch_4
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    goto :goto_3

    .line 1914
    :pswitch_9
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    goto :goto_3

    .line 1917
    :pswitch_e
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    goto :goto_3

    .line 1920
    :pswitch_12
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    goto :goto_3

    .line 1923
    :pswitch_16
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    goto :goto_3

    .line 1926
    :pswitch_1a
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    goto :goto_3

    .line 1929
    :pswitch_1e
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    goto :goto_3

    .line 1932
    :pswitch_22
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    goto :goto_3

    .line 1935
    :pswitch_27
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->dialogID:I

    goto :goto_3

    .line 1909
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_e
        :pswitch_12
        :pswitch_3
        :pswitch_3
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_9
        :pswitch_4
        :pswitch_22
        :pswitch_27
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const v2, 0x7f0b013f

    .line 1640
    const-string v0, "onPrepareOptionsMenu"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1641
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->sdcardAsMassStorage:Z

    if-eqz v0, :cond_11

    .line 1642
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 1661
    :goto_10
    return v0

    .line 1644
    :cond_11
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->item:Landroid/view/MenuItem;

    .line 1646
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 1647
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3b

    .line 1648
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->getVisibility()I

    move-result v0

    if-nez v0, :cond_43

    .line 1651
    :cond_3b
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1661
    :goto_3e
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_10

    .line 1654
    :cond_43
    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_57

    .line 1655
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mInflater:Landroid/view/MenuInflater;

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1656
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->item:Landroid/view/MenuItem;

    .line 1658
    :cond_57
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->item:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3e
.end method

.method public onResume()V
    .registers 18

    .prologue
    .line 1076
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 1079
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/ve/pm/ProjectManager;->getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v14

    if-eqz v14, :cond_1d

    .line 1080
    const-string v14, "deleting exising clone cliparts"

    invoke-static {v14}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1081
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/ve/pm/ProjectManager;->getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v11

    .line 1082
    .local v11, t:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/TranscodeElement;->deleteAllClipArts()V

    .line 1084
    .end local v11           #t:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_1d
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->activityInForeground:Z

    .line 1086
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->extraInstance:Z

    if-eqz v14, :cond_29

    .line 1244
    :goto_28
    return-void

    .line 1089
    :cond_29
    invoke-static {}, Lcom/sec/android/app/ve/util/Utils;->checkStorage()Z

    move-result v14

    if-eqz v14, :cond_35

    .line 1090
    const-string v14, "onResume Device Memory Low"

    invoke-static {v14}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_28

    .line 1094
    :cond_35
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v14

    const-string v15, "shared"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_47

    .line 1095
    const-string v14, "onResume SDCard used as mass storage"

    invoke-static {v14}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_28

    .line 1100
    :cond_47
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/util/Utils;->isMediaNotMounted(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_51

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->finish()V

    goto :goto_28

    .line 1112
    :cond_51
    const-string v14, "onResume:::ProjListAct"

    invoke-static {v14}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1113
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 1114
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_8e

    .line 1115
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_8e

    .line 1117
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v14

    .line 1118
    invoke-virtual {v14}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v13

    .line 1119
    .local v13, tElements:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/TranscodeElement;>;"
    if-eqz v13, :cond_87

    .line 1120
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v6, v14, -0x1

    .local v6, i:I
    :goto_85
    if-gez v6, :cond_e5

    .line 1173
    .end local v6           #i:I
    :cond_87
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/ve/pm/ProjectManager;->sortList()V

    .line 1176
    .end local v13           #tElements:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/TranscodeElement;>;"
    :cond_8e
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_230

    .line 1177
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_230

    .line 1178
    const-string v14, "Proejct present"

    invoke-static {v14}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->no_project:Lcom/sec/android/app/ve/ui/HelveticaTextView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/sec/android/app/ve/ui/HelveticaTextView;->setVisibility(I)V

    .line 1181
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProjectListFrame:Landroid/widget/FrameLayout;

    const v15, 0x7f020113

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    invoke-virtual {v14}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->getVisibility()I

    move-result v14

    if-nez v14, :cond_1f8

    .line 1185
    const-string v14, "SD view"

    invoke-static {v14}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->setVisibility(I)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->but_layout:Landroid/widget/RelativeLayout;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1203
    :goto_dc
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    invoke-virtual {v14}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->notifyDataSetChanged()V

    goto/16 :goto_28

    .line 1121
    .restart local v6       #i:I
    .restart local v13       #tElements:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/TranscodeElement;>;"
    :cond_e5
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectFileName()Ljava/lang/String;

    move-result-object v10

    .line 1122
    .local v10, projPath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_100

    .line 1125
    invoke-interface {v13, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1120
    :cond_fd
    :goto_fd
    add-int/lit8 v6, v6, -0x1

    goto :goto_85

    .line 1127
    :cond_100
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 1128
    .local v12, tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_107
    invoke-virtual {v12}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v14

    if-lt v7, v14, :cond_17d

    .line 1150
    invoke-virtual {v12}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_fd

    invoke-virtual {v12}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_fd

    .line 1151
    invoke-virtual {v12}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getAdditionlAudioEleList()Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Element;

    .line 1153
    .local v4, element:Lcom/samsung/app/video/editor/external/Element;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1155
    .local v1, audiofile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_13d

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v14

    if-nez v14, :cond_fd

    .line 1157
    :cond_13d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " -"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080005

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 1158
    invoke-virtual {v12}, Lcom/samsung/app/video/editor/external/TranscodeElement;->removeBGMMusic()V

    .line 1160
    :try_start_170
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_177} :catch_178

    goto :goto_fd

    .line 1161
    :catch_178
    move-exception v2

    .line 1163
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_fd

    .line 1129
    .end local v1           #audiofile:Ljava/io/File;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #element:Lcom/samsung/app/video/editor/external/Element;
    :cond_17d
    invoke-virtual {v12}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Element;

    .line 1130
    .restart local v4       #element:Lcom/samsung/app/video/editor/external/Element;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1131
    .local v3, elefile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_19c

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v14

    if-nez v14, :cond_1e3

    .line 1132
    :cond_19c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " -"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080005

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 1133
    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->deleteAllClipArts()V

    .line 1134
    invoke-virtual {v12, v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->removeElement(Lcom/samsung/app/video/editor/external/Element;)Ljava/util/List;

    move-result-object v9

    .line 1135
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    if-eqz v9, :cond_1dc

    .line 1136
    const/4 v8, 0x0

    .local v8, k:I
    :goto_1d6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-lt v8, v14, :cond_1e7

    .line 1142
    .end local v8           #k:I
    :cond_1dc
    :try_start_1dc
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_1e3} :catch_1f3

    .line 1128
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    :cond_1e3
    :goto_1e3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_107

    .line 1137
    .restart local v8       #k:I
    .restart local v9       #list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    :cond_1e7
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v14}, Lcom/samsung/app/video/editor/external/ClipartParams;->remove()V

    .line 1136
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d6

    .line 1143
    .end local v8           #k:I
    :catch_1f3
    move-exception v2

    .line 1145
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e3

    .line 1189
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #elefile:Ljava/io/File;
    .end local v4           #element:Lcom/samsung/app/video/editor/external/Element;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    .end local v10           #projPath:Ljava/lang/String;
    .end local v12           #tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    .end local v13           #tElements:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/TranscodeElement;>;"
    :cond_1f8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    invoke-virtual {v14}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->getVisibility()I

    move-result v14

    if-nez v14, :cond_219

    .line 1190
    const-string v14, "MD view"

    invoke-static {v14}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->setVisibility(I)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->but_layout:Landroid/widget/RelativeLayout;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_dc

    .line 1194
    :cond_219
    const-string v14, "normal view"

    invoke-static {v14}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->proj_list:Landroid/widget/Gallery;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->but_layout:Landroid/widget/RelativeLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_dc

    .line 1207
    :cond_230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->no_project:Lcom/sec/android/app/ve/ui/HelveticaTextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/sec/android/app/ve/ui/HelveticaTextView;->setVisibility(I)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProjectListFrame:Landroid/widget/FrameLayout;

    const v15, 0x7f020116

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 1210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->proj_list:Landroid/widget/Gallery;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/Gallery;->setVisibility(I)V

    .line 1213
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->deleteDrawingFiles()V

    goto/16 :goto_28
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 1071
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1072
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->sdcardAsMassStorage:Z

    if-eqz v0, :cond_a

    .line 1073
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->finish()V

    .line 1074
    :cond_a
    return-void
.end method

.method public removeBroadCastEventsCallback(Lcom/sec/android/app/ve/activity/ProjectListActivity$BroadCastEventsCallback;)V
    .registers 3
    .parameter "aBroadCastEventsCallback"

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadCastEventsCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1040
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadCastEventsCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1041
    :cond_9
    return-void
.end method

.method public setBroadCastEventsCallback(Lcom/sec/android/app/ve/activity/ProjectListActivity$BroadCastEventsCallback;)V
    .registers 3
    .parameter "aBroadCastEventsCallback"

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadCastEventsCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadCastEventsCallbacks:Ljava/util/ArrayList;

    .line 1021
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadCastEventsCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1022
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mBroadCastEventsCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    :cond_18
    return-void
.end method

.method public setUpViews()V
    .registers 3

    .prologue
    .line 3259
    const v0, 0x7f0b00ab

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->proj_list:Landroid/widget/Gallery;

    .line 3261
    const v0, 0x7f0b00ae

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->create_newlayout:Landroid/widget/RelativeLayout;

    .line 3264
    const v0, 0x7f0b00b1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/project/MultipleDelete;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    .line 3265
    const v0, 0x7f0b00b0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/project/ProjectOpView;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    .line 3266
    const v0, 0x7f0b00a9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/DragLayer;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

    .line 3267
    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/ui/HelveticaTextView;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->no_project:Lcom/sec/android/app/ve/ui/HelveticaTextView;

    .line 3268
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->no_project:Lcom/sec/android/app/ve/ui/HelveticaTextView;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mHelveticaNeueUltraLight:Landroid/graphics/Typeface;

    if-eqz v0, :cond_51

    .line 3269
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->no_project:Lcom/sec/android/app/ve/ui/HelveticaTextView;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mHelveticaNeueUltraLight:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/ui/HelveticaTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3271
    :cond_51
    const v0, 0x7f0b00aa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mProjectListFrame:Landroid/widget/FrameLayout;

    .line 3272
    const v0, 0x7f0b00ad

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->but_layout:Landroid/widget/RelativeLayout;

    .line 3273
    const v0, 0x7f0b00a6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->project_off:Landroid/widget/ImageView;

    .line 3274
    const v0, 0x7f0b00a7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->project_on:Landroid/widget/ImageView;

    .line 3276
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->pOpView:Lcom/sec/android/app/ve/view/project/ProjectOpView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/project/ProjectOpView;->setProjectList(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    .line 3277
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDeleteView:Lcom/sec/android/app/ve/view/project/MultipleDelete;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/project/MultipleDelete;->setProjectList(Lcom/sec/android/app/ve/activity/ProjectListActivity;)V

    .line 3278
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDragLayer:Lcom/sec/android/app/ve/view/DragLayer;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mDragListener:Lcom/sec/android/app/ve/view/DragLayer$DragListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/DragLayer;->setDragListener(Lcom/sec/android/app/ve/view/DragLayer$DragListener;)V

    .line 3281
    return-void
.end method

.method public showDeleteDialog()V
    .registers 2

    .prologue
    .line 1811
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    .line 1812
    return-void
.end method

.method public showExportDialog(Landroid/content/Context;)V
    .registers 3
    .parameter "mContext"

    .prologue
    .line 3304
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->eContext:Landroid/content/Context;

    .line 3305
    const-string v0, "from PEA"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 3306
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    .line 3307
    return-void
.end method

.method public showMultipleDeleteDialog()V
    .registers 2

    .prologue
    .line 1815
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    .line 1816
    return-void
.end method

.method public showShareDialog()V
    .registers 2

    .prologue
    .line 2566
    const-string v0, "PLA trysharing true"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 2567
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->trySharing:Z

    .line 2568
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showDialog(I)V

    .line 2569
    return-void
.end method

.method public updateAdapter()V
    .registers 2

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->notifyDataSetChanged()V

    .line 1831
    return-void
.end method

.method public updateProjList()V
    .registers 4

    .prologue
    .line 1799
    iget v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I

    if-ltz v1, :cond_14

    iget v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I

    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_29

    .line 1800
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delete Positon is out of bounds"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1808
    :goto_28
    return-void

    .line 1803
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "del_position::during delete::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1804
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->mSelectedPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 1805
    .local v0, temp:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->deleteProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    .line 1806
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->notifyDataSetChanged()V

    goto :goto_28
.end method

.method public updateProjectList(I)V
    .registers 5
    .parameter "pos"

    .prologue
    .line 1819
    if-ltz p1, :cond_10

    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_23

    .line 1820
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delete Positon is out of bounds"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1827
    :goto_22
    return-void

    .line 1823
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "del_position::during delete::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1824
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 1825
    .local v0, temp:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-static {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->deleteProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    .line 1826
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ProjectListActivity;->imageadpt:Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ProjectListActivity$ImageAdapter;->notifyDataSetChanged()V

    goto :goto_22
.end method
