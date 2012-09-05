.class public Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
.super Landroid/app/Activity;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;,
        Lcom/sec/android/mimage/photoretouching/PhotoRetouching$ResolverAdapter;
    }
.end annotation


# static fields
.field public static final ENDPROGRESS_EXIT:I = 0xc

.field public static final ENDPROGRESS_MENUOPEN:I = 0xd

.field public static final ENDPROGRESS_SAVETODB:I = 0xb

.field public static final ENDPROGRESS_SHOWSHARE:I = 0xa

.field public static final FINISH_PROGRESS:I = 0x1

.field private static final INVALID_CHAR:[Ljava/lang/String; = null

.field private static final MAX_LENGTH:I = 0x32

.field public static final SHOW_PROGRESS:I

.field private static final sSubmenu_color_icons:[I

.field private static final sSubmenu_filter_icons:[I

.field private static final sSubmenu_select_icons:[I

.field private static final sSubmenu_stroke_icons:[I

.field private static final sSubmenu_tool_icons:[I

.field public static statusMain:I

.field public static statusSub:I


# instance fields
.field public DEFAULT_OFFSET_X:I

.field public DEFAULT_OFFSET_Y:I

.field private FCL:Landroid/view/View$OnFocusChangeListener;

.field bEdit:Z

.field bLoadSuccess:Z

.field bPressSave:Z

.field bSubMenu:Z

.field bTouchMove:Z

.field private brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

.field private bt_adddel:Landroid/widget/ImageButton;

.field private bt_brushsize:Landroid/widget/ImageButton;

.field private bt_color:Landroid/widget/ImageButton;

.field private bt_crop:Landroid/widget/ImageButton;

.field private bt_filter:Landroid/widget/ImageButton;

.field private bt_move:Landroid/widget/ImageButton;

.field private bt_redo:Landroid/widget/ImageButton;

.field private bt_rotate:Landroid/widget/ImageButton;

.field private bt_tool:Landroid/widget/ImageButton;

.field private bt_undo:Landroid/widget/ImageButton;

.field private currentDontShow:I

.field private currentSubDialog:I

.field private currentSubDialogType:I

.field private currentlyFocusedBtn:I

.field private input:Landroid/widget/EditText;

.field private inst:Landroid/app/Instrumentation;

.field private isOptionMenuOpen:Z

.field private mDBfront:I

.field private mDBrear:I

.field private mDontShowDialog:[Z

.field private mDontShowList:[Ljava/lang/String;

.field private mDontShowTemp:Z

.field private mGesture:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

.field private mResolvedIntent:Landroid/content/Intent;

.field private final mStackModeButtonAction:Ljava/lang/Runnable;

.field private mState:I

.field private mToast:Landroid/widget/Toast;

.field private mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mX:F

.field private mY:F

.field private m_dlg:Landroid/app/Dialog;

.field private mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

.field private mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;

.field private muri:Landroid/net/Uri;

.field submenulistener:Landroid/view/View$OnClickListener;

.field private undo_redo_pos:I

.field private workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x6

    const/4 v3, 0x4

    .line 99
    new-array v0, v3, [I

    fill-array-data v0, :array_5e

    sput-object v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sSubmenu_tool_icons:[I

    .line 100
    new-array v0, v4, [I

    fill-array-data v0, :array_6a

    sput-object v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sSubmenu_filter_icons:[I

    .line 102
    new-array v0, v3, [I

    fill-array-data v0, :array_7a

    sput-object v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sSubmenu_color_icons:[I

    .line 103
    new-array v0, v4, [I

    fill-array-data v0, :array_86

    sput-object v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sSubmenu_select_icons:[I

    .line 105
    new-array v0, v5, [I

    fill-array-data v0, :array_96

    sput-object v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sSubmenu_stroke_icons:[I

    .line 2604
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2605
    const-string v2, "\\"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ":"

    aput-object v2, v0, v1

    const-string v1, "*"

    aput-object v1, v0, v5

    const-string v1, "?"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "\""

    aput-object v2, v0, v1

    const-string v1, "<"

    aput-object v1, v0, v4

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\n"

    aput-object v2, v0, v1

    .line 2604
    sput-object v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->INVALID_CHAR:[Ljava/lang/String;

    .line 90
    return-void

    .line 99
    :array_5e
    .array-data 0x4
        0x1ct 0x0t 0x2t 0x7ft
        0x1bt 0x0t 0x2t 0x7ft
        0xd2t 0x0t 0x2t 0x7ft
        0x2dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 100
    :array_6a
    .array-data 0x4
        0xcat 0x0t 0x2t 0x7ft
        0xcct 0x0t 0x2t 0x7ft
        0xcdt 0x0t 0x2t 0x7ft
        0xcft 0x0t 0x2t 0x7ft
        0xcbt 0x0t 0x2t 0x7ft
        0xcet 0x0t 0x2t 0x7ft
    .end array-data

    .line 102
    :array_7a
    .array-data 0x4
        0xb9t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0x2ft 0x0t 0x2t 0x7ft
    .end array-data

    .line 103
    :array_86
    .array-data 0x4
        0x18t 0x0t 0x2t 0x7ft
        0x3t 0x0t 0x2t 0x7ft
        0xc9t 0x0t 0x2t 0x7ft
        0x91t 0x0t 0x2t 0x7ft
        0x1et 0x0t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
    .end array-data

    .line 105
    :array_96
    .array-data 0x4
        0xc8t 0x0t 0x2t 0x7ft
        0xc7t 0x0t 0x2t 0x7ft
        0xc6t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    const/16 v0, 0x2d

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->DEFAULT_OFFSET_Y:I

    .line 94
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->DEFAULT_OFFSET_X:I

    .line 110
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bTouchMove:Z

    .line 112
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bEdit:Z

    .line 114
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    .line 116
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bLoadSuccess:Z

    .line 122
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;

    .line 124
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    .line 125
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    .line 126
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    .line 128
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->muri:Landroid/net/Uri;

    .line 129
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mToast:Landroid/widget/Toast;

    .line 132
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    .line 134
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new_selection"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "ghost_effect"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "speedline_effect"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "copy_to_another"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowList:[Ljava/lang/String;

    .line 136
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowTemp:Z

    .line 137
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentDontShow:I

    .line 140
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    .line 141
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    .line 144
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    .line 145
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    .line 146
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    .line 147
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    .line 148
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    .line 150
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    .line 151
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    .line 152
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;

    .line 153
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;

    .line 154
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    .line 156
    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    .line 158
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->inst:Landroid/app/Instrumentation;

    .line 160
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    .line 161
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isOptionMenuOpen:Z

    .line 543
    new-instance v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->FCL:Landroid/view/View$OnFocusChangeListener;

    .line 621
    new-instance v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$2;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mHandler:Landroid/os/Handler;

    .line 1555
    new-instance v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$3;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$3;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mStackModeButtonAction:Ljava/lang/Runnable;

    .line 2035
    new-instance v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$4;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->submenulistener:Landroid/view/View$OnClickListener;

    .line 2482
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bPressSave:Z

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Z
    .registers 2
    .parameter

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isOptionMenuOpen:Z

    return v0
.end method

.method static synthetic access$1(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$10(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$11(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$12(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/app/Dialog;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 140
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    return-void
.end method

.method static synthetic access$14(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/app/Dialog;
    .registers 2
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$15(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/app/Instrumentation;
    .registers 2
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->inst:Landroid/app/Instrumentation;

    return-object v0
.end method

.method static synthetic access$16(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/MaskManager;
    .registers 2
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    return-object v0
.end method

.method static synthetic access$17(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
    .registers 2
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    return-object v0
.end method

.method static synthetic access$18(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/WorkSpace;
    .registers 2
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    return-object v0
.end method

.method static synthetic access$19(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/common/ImageInfo;
    .registers 2
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 160
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    return-void
.end method

.method static synthetic access$20(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/DBAdapter;
    .registers 2
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;

    return-object v0
.end method

.method static synthetic access$21(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Lcom/sec/android/mimage/photoretouching/DBAdapter;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;

    return-void
.end method

.method static synthetic access$22(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)I
    .registers 2
    .parameter

    .prologue
    .line 132
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    return v0
.end method

.method static synthetic access$23(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 131
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBfront:I

    return-void
.end method

.method static synthetic access$24(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 131
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBrear:I

    return-void
.end method

.method static synthetic access$25(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)I
    .registers 2
    .parameter

    .prologue
    .line 131
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBrear:I

    return v0
.end method

.method static synthetic access$26(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 132
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    return-void
.end method

.method static synthetic access$27(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 3013
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    return-void
.end method

.method static synthetic access$28(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 139
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    return-void
.end method

.method static synthetic access$29(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Lcom/sec/android/mimage/photoretouching/WorkSpace;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    return-void
.end method

.method static synthetic access$3(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$30(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/graphics/Rect;
    .registers 2
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$31(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;F)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2788
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mX:F

    return-void
.end method

.method static synthetic access$32(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;F)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2788
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mY:F

    return-void
.end method

.method static synthetic access$33(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)F
    .registers 2
    .parameter

    .prologue
    .line 2788
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mX:F

    return v0
.end method

.method static synthetic access$34(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)F
    .registers 2
    .parameter

    .prologue
    .line 2788
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mY:F

    return v0
.end method

.method static synthetic access$35(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$36(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 141
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    return-void
.end method

.method static synthetic access$37(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)[Z
    .registers 2
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowDialog:[Z

    return-object v0
.end method

.method static synthetic access$38(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowTemp:Z

    return-void
.end method

.method static synthetic access$39(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/Toast;
    .registers 2
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$40(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/widget/Toast;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$41(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Lcom/sec/android/mimage/photoretouching/mask/Brush;
    .registers 2
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    return-object v0
.end method

.method static synthetic access$42(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1113
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->changeSelModeBtn(I)V

    return-void
.end method

.method static synthetic access$43(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mStackModeButtonAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$44(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1119
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->changeSelSizeBtn(I)V

    return-void
.end method

.method static synthetic access$45(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->muri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$46(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/content/Intent;
    .registers 2
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mResolvedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$47(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)I
    .registers 2
    .parameter

    .prologue
    .line 137
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentDontShow:I

    return v0
.end method

.method static synthetic access$48(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Z
    .registers 2
    .parameter

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowTemp:Z

    return v0
.end method

.method static synthetic access$49(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)[Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$50()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 2604
    sget-object v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->INVALID_CHAR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$51(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/net/Uri;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->muri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$52(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 621
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$9(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;
    .registers 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private changeSelModeBtn(I)V
    .registers 7
    .parameter "step"

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1115
    .local v1, r:Landroid/content/res/Resources;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1116
    .local v0, drawableid:I
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1117
    return-void
.end method

.method private changeSelSizeBtn(I)V
    .registers 7
    .parameter "step"

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1121
    .local v1, r:Landroid/content/res/Resources;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stroke"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1122
    .local v0, drawableid:I
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1123
    return-void
.end method

.method private showSaveAsMsg()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1504
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->muri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1505
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_24

    .line 1506
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1507
    .local v1, text:Ljava/lang/String;
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1509
    .end local v1           #text:Ljava/lang/String;
    :cond_24
    return-void
.end method

.method private showToast(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 3015
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3024
    return-void
.end method


# virtual methods
.method public MyDialog(ILandroid/os/Message;)Landroid/app/Dialog;
    .registers 14
    .parameter "category"
    .parameter "msg"

    .prologue
    .line 2485
    const v7, 0xc001

    if-eq p1, v7, :cond_7

    .line 2486
    const/4 v7, 0x0

    .line 2598
    :goto_6
    return-object v7

    .line 2489
    :cond_7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2490
    .local v2, factory:Landroid/view/LayoutInflater;
    const v7, 0x7f030004

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2492
    .local v6, view:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2494
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2495
    const v7, 0x7f060008

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2498
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    if-eqz v7, :cond_ad

    .line 2500
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2501
    .local v5, str:Ljava/lang/String;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    .line 2503
    const v7, 0x7f090013

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    .line 2504
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2514
    :goto_42
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2515
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 2516
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    new-instance v8, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$21;

    invoke-direct {v8, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$21;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    .line 2521
    const-wide/16 v9, 0x12c

    .line 2516
    invoke-virtual {v7, v8, v9, v10}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2523
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 2524
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    invoke-virtual {p0, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2525
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v3

    .line 2526
    .local v3, length:I
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 2528
    const v7, 0x7f090014

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 2530
    .local v4, okBtn:Landroid/widget/Button;
    const v7, 0x7f090015

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2532
    .local v0, cancelBtn:Landroid/widget/Button;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    .line 2534
    new-instance v7, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;

    invoke-direct {v7, p0, p2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$22;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/os/Message;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2579
    new-instance v7, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$23;

    invoke-direct {v7, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$23;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2592
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 2594
    const v7, 0xc001

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    .line 2596
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bPressSave:Z

    .line 2598
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    goto/16 :goto_6

    .line 2508
    .end local v0           #cancelBtn:Landroid/widget/Button;
    .end local v3           #length:I
    .end local v4           #okBtn:Landroid/widget/Button;
    .end local v5           #str:Ljava/lang/String;
    :cond_ad
    const v7, 0x7f090013

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    .line 2509
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/common/Image;->getSaveFileName()Ljava/lang/String;

    move-result-object v5

    .line 2510
    .restart local v5       #str:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42
.end method

.method public MyDialog(ILjava/lang/String;)Landroid/app/Dialog;
    .registers 14
    .parameter "category"
    .parameter "title"

    .prologue
    const v10, 0x7f060006

    const v9, 0x7f060005

    .line 2351
    const/4 v1, 0x0

    .line 2354
    .local v1, dlgBuilder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_fa

    .line 2479
    :goto_a
    :pswitch_a
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    return-object v8

    .line 2356
    :pswitch_d
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .end local v1           #dlgBuilder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2357
    .restart local v1       #dlgBuilder:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f060008

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2359
    const-string v8, "exit"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 2361
    const v8, 0x7f06003b

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2363
    new-instance v8, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;

    invoke-direct {v8, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$14;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v1, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2372
    new-instance v8, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$15;

    invoke-direct {v8, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$15;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v1, v10, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2409
    :goto_36
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    .line 2410
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 2412
    const v8, 0xc000

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    goto :goto_a

    .line 2385
    :cond_47
    const v8, 0x7f06003a

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2387
    new-instance v8, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$16;

    invoke-direct {v8, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$16;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v1, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2396
    new-instance v8, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$17;

    invoke-direct {v8, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$17;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v1, v10, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_36

    .line 2418
    :pswitch_5e
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2419
    .local v2, factory:Landroid/view/LayoutInflater;
    const v8, 0x7f030001

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2421
    .local v4, layout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2422
    .local v5, r:Landroid/content/res/Resources;
    const-string v8, "string"

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, p2, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2424
    .local v6, str_id:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .end local v1           #dlgBuilder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2425
    .restart local v1       #dlgBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2426
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2428
    const v8, 0x7f090004

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 2429
    .local v7, text:Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "introduction_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "string"

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2430
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2432
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a9
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowList:[Ljava/lang/String;

    array-length v8, v8

    if-lt v3, v8, :cond_e9

    .line 2441
    :goto_ae
    const v8, 0x7f090005

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2443
    .local v0, check:Landroid/widget/CheckBox;
    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowTemp:Z

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2445
    new-instance v8, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$18;

    invoke-direct {v8, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$18;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2450
    new-instance v8, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$19;

    invoke-direct {v8, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$19;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2457
    const v8, 0x7f060002

    new-instance v9, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$20;

    invoke-direct {v9, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$20;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2471
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    .line 2472
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 2474
    const v8, 0xc002

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    goto/16 :goto_a

    .line 2433
    .end local v0           #check:Landroid/widget/CheckBox;
    :cond_e9
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowList:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f6

    .line 2434
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentDontShow:I

    goto :goto_ae

    .line 2432
    :cond_f6
    add-int/lit8 v3, v3, 0x1

    goto :goto_a9

    .line 2354
    nop

    :pswitch_data_fa
    .packed-switch 0xc000
        :pswitch_d
        :pswitch_a
        :pswitch_5e
    .end packed-switch
.end method

.method public RunAfterIntro(I)V
    .registers 10
    .parameter "type"

    .prologue
    const v7, 0xa002

    const v6, 0xa004

    const/4 v1, 0x0

    .line 2666
    packed-switch p1, :pswitch_data_78

    .line 2701
    :goto_a
    return-void

    .line 2668
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 2669
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 2671
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 2672
    new-instance v0, Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->submenulistener:Landroid/view/View$OnClickListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/WorkSpace;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    .line 2673
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v0, :cond_3c

    .line 2674
    sput v6, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 2678
    :goto_30
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->getViewGroup()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setContentView(Landroid/view/View;)V

    .line 2679
    iput v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    goto :goto_a

    .line 2676
    :cond_3c
    sput v6, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto :goto_30

    .line 2682
    :pswitch_3f
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 2683
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 2684
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 2686
    new-instance v0, Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/16 v4, 0x9

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->submenulistener:Landroid/view/View$OnClickListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/WorkSpace;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    .line 2687
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v0, :cond_70

    .line 2688
    sput v6, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 2692
    :goto_64
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->getViewGroup()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setContentView(Landroid/view/View;)V

    .line 2693
    iput v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    goto :goto_a

    .line 2690
    :cond_70
    sput v6, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto :goto_64

    .line 2696
    :pswitch_73
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->openGalleryforCopy()V

    goto :goto_a

    .line 2666
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_b
        :pswitch_3f
        :pswitch_73
    .end packed-switch
.end method

.method SetEnableButton(Z)V
    .registers 7
    .parameter "benable"

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    if-eqz v0, :cond_d

    .line 387
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 388
    :cond_d
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    if-eqz v0, :cond_16

    .line 389
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 390
    :cond_16
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1f

    .line 391
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 392
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    if-eqz v0, :cond_28

    .line 393
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 394
    :cond_28
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    if-eqz v0, :cond_31

    .line 395
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 397
    :cond_31
    if-nez p1, :cond_61

    .line 399
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3c

    .line 400
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 401
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    if-eqz v0, :cond_45

    .line 402
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 443
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4e

    .line 444
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 445
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;

    if-eqz v0, :cond_57

    .line 446
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 447
    :cond_57
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    if-eqz v0, :cond_60

    .line 448
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 449
    :cond_60
    return-void

    .line 406
    :cond_61
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    if-eqz v0, :cond_70

    .line 408
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBfront:I

    if-ne v0, v1, :cond_ba

    .line 409
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 414
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7f

    .line 416
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBrear:I

    if-ne v0, v1, :cond_c0

    .line 417
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 422
    :cond_7f
    :goto_7f
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    if-eqz v0, :cond_9c

    .line 424
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v0, :cond_9c

    .line 426
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v0

    if-le v0, v3, :cond_97

    .line 427
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v0

    if-gt v0, v3, :cond_9c

    .line 428
    :cond_97
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 432
    :cond_9c
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    if-eqz v0, :cond_45

    .line 434
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v0, :cond_45

    .line 436
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v0

    if-le v0, v3, :cond_b4

    .line 437
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v0

    if-gt v0, v3, :cond_45

    .line 438
    :cond_b4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_45

    .line 411
    :cond_ba
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_70

    .line 419
    :cond_c0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_7f
.end method

.method protected closeDialog(Landroid/app/Dialog;)V
    .registers 2
    .parameter "dlg"

    .prologue
    .line 642
    if-eqz p1, :cond_5

    .line 643
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 644
    :cond_5
    const/4 p1, 0x0

    .line 645
    return-void
.end method

.method protected endProgress(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const v1, 0xa001

    .line 1467
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_4e

    .line 1498
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showSaveAsMsg()V

    .line 1501
    :goto_d
    return-void

    .line 1470
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->muri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showShareAppList(Landroid/net/Uri;)V

    .line 1471
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showSaveAsMsg()V

    goto :goto_d

    .line 1474
    :pswitch_17
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 1475
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 1476
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startView()V

    .line 1477
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    .line 1478
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v0, :cond_39

    .line 1479
    sput v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 1483
    :goto_2c
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    if-eqz v0, :cond_35

    .line 1484
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->clear()V

    .line 1485
    :cond_35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    goto :goto_d

    .line 1481
    :cond_39
    sput v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto :goto_2c

    .line 1488
    :pswitch_3c
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showSaveAsMsg()V

    .line 1489
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bEdit:Z

    .line 1490
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onBackPressed()V

    goto :goto_d

    .line 1493
    :pswitch_45
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showSaveAsMsg()V

    .line 1494
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bEdit:Z

    .line 1495
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startLauncherActivity()V

    goto :goto_d

    .line 1467
    :pswitch_data_4e
    .packed-switch 0xa
        :pswitch_e
        :pswitch_17
        :pswitch_3c
        :pswitch_45
    .end packed-switch
.end method

.method public getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;
    .registers 6
    .parameter "ctx"

    .prologue
    .line 2609
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 2646
    .local v0, FilterArray:[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 2648
    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$24;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$24;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    aput-object v2, v0, v1

    .line 2662
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getOffsetYvalue(F)I
    .registers 7
    .parameter "y"

    .prologue
    .line 1157
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->DEFAULT_OFFSET_Y:I

    .line 1159
    .local v3, offset:I
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v4

    if-nez v4, :cond_21

    .line 1161
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getViewHeight()F

    move-result v4

    float-to-int v2, v4

    .line 1162
    .local v2, drawHeight:I
    add-int/lit8 v0, v2, -0x14

    .line 1163
    .local v0, bottomOffset1:I
    add-int/lit8 v4, v3, -0x5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x14

    sub-int v1, v2, v4

    .line 1165
    .local v1, bottomOffset2:I
    int-to-float v4, v0

    cmpl-float v4, p1, v4

    if-lez v4, :cond_22

    .line 1166
    const/4 v3, 0x5

    .line 1174
    .end local v0           #bottomOffset1:I
    .end local v1           #bottomOffset2:I
    .end local v2           #drawHeight:I
    :cond_21
    :goto_21
    return v3

    .line 1168
    .restart local v0       #bottomOffset1:I
    .restart local v1       #bottomOffset2:I
    .restart local v2       #drawHeight:I
    :cond_22
    int-to-float v4, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_21

    .line 1169
    float-to-int v4, p1

    sub-int/2addr v4, v1

    shr-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    goto :goto_21
.end method

.method protected getPath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 2737
    if-eqz p1, :cond_e

    .line 2739
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2740
    .local v1, cur:Landroid/database/Cursor;
    if-nez v1, :cond_f

    .line 2757
    .end local v1           #cur:Landroid/database/Cursor;
    :cond_e
    :goto_e
    return-object v3

    .line 2743
    .restart local v1       #cur:Landroid/database/Cursor;
    :cond_f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2748
    const-string v4, "_data"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2749
    .local v0, columnIndex:I
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_20

    move-result-object v3

    .line 2750
    .local v3, path:Ljava/lang/String;
    goto :goto_e

    .line 2755
    .end local v0           #columnIndex:I
    .end local v1           #cur:Landroid/database/Cursor;
    .end local v3           #path:Ljava/lang/String;
    :catch_20
    move-exception v2

    .line 2757
    .local v2, e:Ljava/lang/Exception;
    goto :goto_e
.end method

.method public hasSelection()Z
    .registers 7

    .prologue
    .line 1573
    const/4 v0, 0x1

    .line 1574
    .local v0, flag:Z
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getObjroi()Landroid/graphics/Rect;

    move-result-object v1

    .line 1575
    .local v1, objROI:Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    add-int/lit8 v3, v4, 0x1

    .line 1576
    .local v3, object_width:I
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    add-int/lit8 v2, v4, 0x1

    .line 1579
    .local v2, object_height:I
    if-lez v3, :cond_19

    if-gtz v2, :cond_1a

    .line 1580
    :cond_19
    const/4 v0, 0x0

    .line 1583
    :cond_1a
    return v0
.end method

.method protected init()Z
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 308
    new-instance v7, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;

    new-instance v8, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;

    invoke-direct {v8, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$MultiTouchScaleGestureListener;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-direct {v7, p0, v8}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;)V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGesture:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;

    .line 310
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v7, :cond_1b

    .line 312
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->clear()V

    .line 313
    iput-object v12, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 316
    :cond_1b
    new-instance v7, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-direct {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;-><init>()V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 318
    iput-object v12, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    .line 319
    const v7, 0xa000

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    .line 320
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowList:[Ljava/lang/String;

    array-length v7, v7

    new-array v7, v7, [Z

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowDialog:[Z

    .line 321
    const/4 v1, 0x0

    .local v1, i:I
    :goto_31
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowList:[Ljava/lang/String;

    array-length v7, v7

    if-lt v1, v7, :cond_9d

    .line 324
    iput-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowTemp:Z

    .line 326
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->closeDialog(Landroid/app/Dialog;)V

    .line 327
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mVisibleRect:Landroid/graphics/Rect;

    .line 329
    iput v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    .line 330
    iput v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    .line 331
    iput-object v12, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    .line 333
    new-instance v7, Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-direct {v7}, Lcom/sec/android/mimage/photoretouching/mask/Brush;-><init>()V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    .line 334
    new-instance v7, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-direct {v7, v8}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;-><init>(Lcom/sec/android/mimage/photoretouching/mask/Brush;)V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    .line 335
    new-instance v7, Lcom/sec/android/mimage/photoretouching/DBAdapter;

    invoke-direct {v7, p0}, Lcom/sec/android/mimage/photoretouching/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;

    .line 337
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 339
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "start"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 341
    const-string v7, "[PhotoEditor_U1ICS_120206]"

    const-string v8, "Photo Retouching Launcher"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v7, "path"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, path:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/common/Image;->copyToDB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, new_path:Ljava/lang/String;
    if-nez v3, :cond_a4

    .line 346
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;

    invoke-static {v7, v4}, Lcom/sec/android/mimage/photoretouching/DBController;->clearAndsaveToDB(Lcom/sec/android/mimage/photoretouching/DBAdapter;Ljava/lang/String;)[I

    move-result-object v5

    .line 347
    .local v5, pos:[I
    aget v7, v5, v9

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBfront:I

    .line 348
    aget v7, v5, v11

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBrear:I

    .line 349
    const-string v7, "[PhotoEditor_U1ICS_120206]"

    const-string v8, "didnot copy the original to DB"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_95
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBrear:I

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    .line 357
    iput-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bEdit:Z

    .line 358
    const/4 v6, 0x1

    .line 381
    .end local v3           #new_path:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #pos:[I
    .local v6, startfromLauncher:Z
    :goto_9c
    return v6

    .line 322
    .end local v2           #intent:Landroid/content/Intent;
    .end local v6           #startfromLauncher:Z
    :cond_9d
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowDialog:[Z

    aput-boolean v9, v7, v1

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 351
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #new_path:Ljava/lang/String;
    .restart local v4       #path:Ljava/lang/String;
    :cond_a4
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;

    invoke-static {v7, v3}, Lcom/sec/android/mimage/photoretouching/DBController;->clearAndsaveToDB(Lcom/sec/android/mimage/photoretouching/DBAdapter;Ljava/lang/String;)[I

    move-result-object v5

    .line 352
    .restart local v5       #pos:[I
    aget v7, v5, v9

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBfront:I

    .line 353
    aget v7, v5, v11

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBrear:I

    goto :goto_95

    .line 362
    .end local v3           #new_path:Ljava/lang/String;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #pos:[I
    :cond_b3
    const-string v7, "[PhotoEditor_U1ICS_120206]"

    const-string v8, "Photo Rettouching undo/redo"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "db_front"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBfront:I

    .line 364
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "db_rear"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBrear:I

    .line 365
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "undo_redo_pos"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    .line 367
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    if-ne v7, v10, :cond_101

    .line 368
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->open()Lcom/sec/android/mimage/photoretouching/DBAdapter;

    .line 369
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->fetchAllBooks()Landroid/database/Cursor;

    move-result-object v0

    .line 370
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBrear:I

    .line 371
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBrear:I

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    .line 372
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 373
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/DBAdapter;->close()V

    .line 376
    .end local v0           #c:Landroid/database/Cursor;
    :cond_101
    iput-boolean v11, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bEdit:Z

    .line 377
    const/4 v6, 0x0

    .line 378
    .restart local v6       #startfromLauncher:Z
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "isSub"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    goto :goto_9c
.end method

.method protected load(Ljava/lang/String;)Z
    .registers 5
    .parameter "path_str"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    if-eqz v0, :cond_9

    .line 568
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 570
    :cond_9
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->release()V

    .line 572
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->pre_load(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 574
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->release()V

    .line 575
    const/4 v0, 0x0

    .line 582
    :goto_18
    return v0

    .line 578
    :cond_19
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    if-eqz v0, :cond_32

    .line 579
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->set(II)Z

    .line 582
    :cond_32
    const/4 v0, 0x1

    goto :goto_18
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 28
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2234
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2236
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_1d3

    .line 2237
    const v3, 0xb002

    move/from16 v0, p1

    if-ne v0, v3, :cond_16f

    .line 2238
    if-eqz p3, :cond_3f

    .line 2239
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    .line 2240
    .local v19, path_str:Ljava/lang/String;
    if-nez v19, :cond_40

    .line 2241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 2242
    const v3, 0x7f06002b

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    .line 2243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 2244
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startView()V

    .line 2245
    const v3, 0xa001

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    .line 2347
    .end local v19           #path_str:Ljava/lang/String;
    :cond_3f
    :goto_3f
    return-void

    .line 2250
    .restart local v19       #path_str:Ljava/lang/String;
    :cond_40
    new-instance v18, Ljava/io/File;

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2251
    .local v18, lfile:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6e

    .line 2252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 2253
    const v3, 0x7f06002b

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    .line 2254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 2255
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startView()V

    .line 2256
    const v3, 0xa001

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    goto :goto_3f

    .line 2259
    :cond_6e
    const/4 v15, 0x0

    .line 2260
    .local v15, backbmp:Landroid/graphics/Bitmap;
    const/16 v16, 0x0

    .line 2261
    .local v16, backbmp2:Landroid/graphics/Bitmap;
    const/16 v23, 0x0

    .line 2262
    .local v23, tmpBitmap2:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/common/Image;->loadBitmapforCopyto(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2264
    .local v2, tmpBitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_9c

    .line 2265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 2266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 2267
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startView()V

    .line 2268
    const v3, 0xa001

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    goto :goto_3f

    .line 2273
    :cond_9c
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 2276
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 2281
    .local v7, m:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getOtherSWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v21, v3, v4

    .line 2282
    .local v21, scaleWidth:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getOtherSHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v20, v3, v4

    .line 2284
    .local v20, scaleHeight:F
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2287
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 2288
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 2290
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2291
    const/4 v2, 0x0

    .line 2293
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->recycle()V

    .line 2294
    const/16 v23, 0x0

    .line 2296
    if-eqz v15, :cond_14b

    if-eqz v16, :cond_14b

    .line 2297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 2298
    new-instance v8, Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/16 v12, 0xa

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->submenulistener:Landroid/view/View$OnClickListener;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getHandler()Landroid/os/Handler;

    move-result-object v14

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/mimage/photoretouching/WorkSpace;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;ILandroid/view/View$OnClickListener;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    .line 2299
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v3, :cond_145

    .line 2300
    const v3, 0xa004

    sput v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 2304
    :goto_124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->getViewGroup()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setContentView(Landroid/view/View;)V

    .line 2305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v15, v1}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->changeSubImage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 2306
    const v3, 0xa002

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    goto/16 :goto_3f

    .line 2302
    :cond_145
    const v3, 0xa004

    sput v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto :goto_124

    .line 2309
    :cond_14b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 2310
    const v3, 0x7f06002b

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    .line 2311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 2312
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startView()V

    .line 2313
    const v3, 0xa001

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    goto/16 :goto_3f

    .line 2320
    .end local v2           #tmpBitmap:Landroid/graphics/Bitmap;
    .end local v7           #m:Landroid/graphics/Matrix;
    .end local v15           #backbmp:Landroid/graphics/Bitmap;
    .end local v16           #backbmp2:Landroid/graphics/Bitmap;
    .end local v18           #lfile:Ljava/io/File;
    .end local v19           #path_str:Ljava/lang/String;
    .end local v20           #scaleHeight:F
    .end local v21           #scaleWidth:F
    .end local v23           #tmpBitmap2:Landroid/graphics/Bitmap;
    :cond_16f
    const v3, 0xb000

    move/from16 v0, p1

    if-ne v0, v3, :cond_3f

    .line 2321
    if-eqz p3, :cond_3f

    .line 2322
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v22

    .line 2323
    .local v22, str:Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2324
    .restart local v18       #lfile:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_19b

    .line 2325
    const v3, 0x7f06002b

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    goto/16 :goto_3f

    .line 2327
    :cond_19b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->release()V

    .line 2329
    new-instance v17, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2331
    .local v17, intent:Landroid/content/Intent;
    const-string v3, "path"

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2332
    const-string v3, "start"

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2333
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bEdit:Z

    .line 2334
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startActivity(Landroid/content/Intent;)V

    .line 2335
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finish()V

    goto/16 :goto_3f

    .line 2341
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #lfile:Ljava/io/File;
    .end local v22           #str:Ljava/lang/String;
    :cond_1d3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 2342
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startView()V

    .line 2343
    const v3, 0xa001

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    goto/16 :goto_3f
.end method

.method public onBackPressed()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0xa001

    .line 1301
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    const v2, 0xa002

    if-ne v1, v2, :cond_31

    .line 1302
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    if-eqz v1, :cond_15

    .line 1303
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->cancel()V

    .line 1304
    :cond_15
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    .line 1305
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v1, v5}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 1306
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1, v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 1308
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startView()V

    .line 1309
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    .line 1310
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v1, :cond_2e

    .line 1311
    sput v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 1337
    :cond_2d
    :goto_2d
    return-void

    .line 1313
    :cond_2e
    sput v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto :goto_2d

    .line 1318
    :cond_31
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bTouchMove:Z

    if-nez v1, :cond_2d

    .line 1321
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bEdit:Z

    if-eqz v1, :cond_47

    .line 1323
    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->SetEnableButton(Z)V

    .line 1325
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    .line 1326
    const v1, 0xc000

    const-string v2, "exit"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_2d

    .line 1328
    :cond_47
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->release()V

    .line 1329
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-nez v1, :cond_58

    .line 1330
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/mimage/photoretouching/LauncherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1331
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startActivity(Landroid/content/Intent;)V

    .line 1333
    .end local v0           #intent:Landroid/content/Intent;
    :cond_58
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_2d
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "view"

    .prologue
    const v5, 0xa005

    const v8, 0xa004

    const/4 v4, 0x1

    const v3, 0xa001

    const/4 v2, 0x0

    .line 882
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isOptionMenuOpen:Z

    if-eqz v0, :cond_10

    .line 1111
    :cond_f
    :goto_f
    return-void

    .line 886
    :cond_10
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v0, :cond_83

    .line 887
    sget v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    if-ne v0, v3, :cond_f

    .line 896
    :cond_18
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4b

    .line 898
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v1, 0xc00d

    if-eq v0, v1, :cond_40

    .line 899
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v1, 0xc00a

    if-eq v0, v1, :cond_40

    .line 900
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v1, 0xc009

    if-eq v0, v1, :cond_40

    .line 901
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v1, 0xc00c

    if-eq v0, v1, :cond_40

    .line 902
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v1, 0xc00b

    if-ne v0, v1, :cond_45

    .line 903
    :cond_40
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dismissDialog(I)V

    .line 905
    :cond_45
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    .line 906
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    .line 909
    :cond_4b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_88

    .line 910
    const v0, 0xc00c

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->removeDialog(I)V

    .line 911
    const v0, 0xc00c

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showDialog(I)V

    .line 912
    const v0, 0xc00c

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    .line 931
    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_d0

    .line 932
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c8

    .line 933
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 934
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 936
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->setActionType(I)V

    .line 937
    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->changeSelModeBtn(I)V

    goto :goto_f

    .line 891
    :cond_83
    sget v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    if-eq v0, v3, :cond_18

    goto :goto_f

    .line 914
    :cond_88
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_98

    .line 915
    const v0, 0xc00d

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showDialog(I)V

    .line 916
    const v0, 0xc00d

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    goto :goto_60

    .line 918
    :cond_98
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_a8

    .line 919
    const v0, 0xc00a

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showDialog(I)V

    .line 920
    const v0, 0xc00a

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    goto :goto_60

    .line 922
    :cond_a8
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_b8

    .line 923
    const v0, 0xc009

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showDialog(I)V

    .line 924
    const v0, 0xc009

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    goto :goto_60

    .line 926
    :cond_b8
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_60

    .line 927
    const v0, 0xc00b

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showDialog(I)V

    .line 928
    const v0, 0xc00b

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    goto :goto_60

    .line 939
    :cond_c8
    const v0, 0x7f060035

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    goto/16 :goto_f

    .line 943
    :cond_d0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_127

    .line 945
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bLoadSuccess:Z

    if-eqz v0, :cond_f

    .line 949
    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->SetEnableButton(Z)V

    .line 951
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    if-eqz v0, :cond_f

    .line 954
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 958
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    if-eqz v0, :cond_f9

    .line 960
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 961
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 963
    :cond_f9
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 965
    new-instance v0, Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/16 v4, 0xe

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->submenulistener:Landroid/view/View$OnClickListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/WorkSpace;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    .line 966
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v0, :cond_124

    .line 967
    sput v8, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 972
    :goto_114
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->getViewGroup()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setContentView(Landroid/view/View;)V

    .line 974
    const v0, 0xa002

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    goto/16 :goto_f

    .line 969
    :cond_124
    sput v8, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto :goto_114

    .line 980
    :cond_127
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_17e

    .line 982
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bLoadSuccess:Z

    if-eqz v0, :cond_f

    .line 986
    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->SetEnableButton(Z)V

    .line 988
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    if-eqz v0, :cond_f

    .line 991
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 995
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    if-eqz v0, :cond_150

    .line 997
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 998
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 1000
    :cond_150
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 1002
    new-instance v0, Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    const/16 v4, 0xf

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->submenulistener:Landroid/view/View$OnClickListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/WorkSpace;-><init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;ILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    .line 1003
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v0, :cond_17b

    .line 1004
    sput v8, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 1009
    :goto_16b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->getViewGroup()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setContentView(Landroid/view/View;)V

    .line 1011
    const v0, 0xa002

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    goto/16 :goto_f

    .line 1006
    :cond_17b
    sput v8, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto :goto_16b

    .line 1015
    :cond_17e
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1eb

    .line 1017
    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->SetEnableButton(Z)V

    .line 1019
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->GetExternalStorageMount()Z

    move-result v0

    if-eqz v0, :cond_193

    .line 1021
    const v0, 0x7f060036

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    goto/16 :goto_f

    .line 1025
    :cond_193
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v0, :cond_1af

    .line 1026
    sput v5, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 1031
    :goto_199
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    if-eqz v0, :cond_1a2

    .line 1032
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 1035
    :cond_1a2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBfront:I

    if-gt v0, v1, :cond_1b2

    .line 1036
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->startAnim()V

    goto/16 :goto_f

    .line 1028
    :cond_1af
    sput v5, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto :goto_199

    .line 1039
    :cond_1b2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    .line 1042
    new-array v6, v4, [Ljava/lang/Object;

    .line 1043
    .local v6, datas:[Ljava/lang/Object;
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    invoke-static {v0, v1, v6}, Lcom/sec/android/mimage/photoretouching/DBController;->load_db(Lcom/sec/android/mimage/photoretouching/DBAdapter;I[Ljava/lang/Object;)Z

    .line 1045
    aget-object v7, v6, v2

    check-cast v7, Ljava/lang/String;

    .line 1047
    .local v7, path:Ljava/lang/String;
    if-eqz v6, :cond_f

    .line 1048
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/common/Image;->checkIfFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    .line 1049
    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startMainActivity(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1051
    :cond_1d2
    const v0, 0x7f06002b

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    .line 1052
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v0, :cond_1e8

    .line 1053
    sput v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 1057
    :goto_1de
    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->SetEnableButton(Z)V

    .line 1058
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->startAnim()V

    goto/16 :goto_f

    .line 1055
    :cond_1e8
    sput v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto :goto_1de

    .line 1064
    .end local v6           #datas:[Ljava/lang/Object;
    .end local v7           #path:Ljava/lang/String;
    :cond_1eb
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_f

    .line 1066
    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->SetEnableButton(Z)V

    .line 1068
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->GetExternalStorageMount()Z

    move-result v0

    if-eqz v0, :cond_200

    .line 1070
    const v0, 0x7f060036

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    goto/16 :goto_f

    .line 1074
    :cond_200
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v0, :cond_21c

    .line 1075
    sput v5, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 1080
    :goto_206
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    if-eqz v0, :cond_20f

    .line 1081
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 1083
    :cond_20f
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBrear:I

    if-lt v0, v1, :cond_21f

    .line 1084
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->startAnim()V

    goto/16 :goto_f

    .line 1077
    :cond_21c
    sput v5, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto :goto_206

    .line 1087
    :cond_21f
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    .line 1090
    new-array v6, v4, [Ljava/lang/Object;

    .line 1091
    .restart local v6       #datas:[Ljava/lang/Object;
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mdatabase:Lcom/sec/android/mimage/photoretouching/DBAdapter;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    invoke-static {v0, v1, v6}, Lcom/sec/android/mimage/photoretouching/DBController;->load_db(Lcom/sec/android/mimage/photoretouching/DBAdapter;I[Ljava/lang/Object;)Z

    .line 1093
    aget-object v7, v6, v2

    check-cast v7, Ljava/lang/String;

    .line 1095
    .restart local v7       #path:Ljava/lang/String;
    if-eqz v6, :cond_f

    .line 1096
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/common/Image;->checkIfFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23f

    .line 1097
    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startMainActivity(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1099
    :cond_23f
    const v0, 0x7f06002b

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    .line 1100
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    if-eqz v0, :cond_255

    .line 1101
    sput v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 1105
    :goto_24b
    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->SetEnableButton(Z)V

    .line 1106
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->startAnim()V

    goto/16 :goto_f

    .line 1103
    :cond_255
    sput v3, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto :goto_24b
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10
    .parameter "newConfig"

    .prologue
    const v4, 0xc001

    const/16 v3, 0x400

    const v2, 0xc002

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 651
    const v0, 0xc00d

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->removeDialog(I)V

    .line 652
    const v0, 0xc00a

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->removeDialog(I)V

    .line 653
    const v0, 0xc009

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->removeDialog(I)V

    .line 654
    const v0, 0xc00c

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->removeDialog(I)V

    .line 655
    const v0, 0xc00b

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->removeDialog(I)V

    .line 659
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v1, 0xc000

    if-eq v0, v1, :cond_3a

    .line 661
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    if-eq v0, v2, :cond_3a

    .line 662
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v1, 0xc007

    if-ne v0, v1, :cond_3f

    .line 663
    :cond_3a
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->closeDialog(Landroid/app/Dialog;)V

    .line 665
    :cond_3f
    const/4 v5, 0x0

    .line 667
    .local v5, isOrientationChanged:Z
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    if-ne v0, v4, :cond_5f

    .line 669
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_23c

    .line 684
    :cond_49
    :goto_49
    if-nez v5, :cond_5f

    .line 685
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->closeDialog(Landroid/app/Dialog;)V

    .line 687
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    if-nez v0, :cond_ad

    .line 688
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILandroid/os/Message;)Landroid/app/Dialog;

    .line 699
    :cond_5f
    :goto_5f
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    const v1, 0xa002

    if-ne v0, v1, :cond_124

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    if-eqz v0, :cond_124

    .line 700
    const/4 v5, 0x1

    .line 701
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0, v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 702
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_244

    .line 722
    :goto_75
    const-string v0, "[PhotoEditor_U1ICS_120206]"

    const-string v1, "workspace configuration changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->submenulistener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->init_by_config(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Landroid/view/View$OnClickListener;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;Z)V

    .line 724
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->getViewGroup()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setContentView(Landroid/view/View;)V

    .line 777
    :goto_91
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 779
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    if-nez v0, :cond_1b0

    .line 796
    :cond_98
    :goto_98
    return-void

    .line 671
    :pswitch_99
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 672
    const/4 v5, 0x1

    .line 674
    goto :goto_49

    .line 676
    :pswitch_a3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_49

    .line 677
    const/4 v5, 0x1

    .line 679
    goto :goto_49

    .line 689
    :cond_ad
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    if-ne v0, v6, :cond_bf

    .line 690
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILandroid/os/Message;)Landroid/app/Dialog;

    goto :goto_5f

    .line 691
    :cond_bf
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d2

    .line 692
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILandroid/os/Message;)Landroid/app/Dialog;

    goto :goto_5f

    .line 693
    :cond_d2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5f

    .line 694
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v6, v1, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILandroid/os/Message;)Landroid/app/Dialog;

    goto/16 :goto_5f

    .line 704
    :pswitch_e6
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_ef

    .line 705
    const/4 v5, 0x0

    .line 707
    :cond_ef
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0, v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setPortrait(Z)V

    .line 708
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 709
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto/16 :goto_75

    .line 712
    :pswitch_104
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 713
    const/4 v5, 0x0

    .line 715
    :cond_10d
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setPortrait(Z)V

    .line 716
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->setFlags(II)V

    .line 717
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_75

    .line 727
    :cond_124
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bLoadSuccess:Z

    if-eqz v0, :cond_1a7

    .line 728
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0, v6}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 729
    const-string v0, "[PhotoEditor_U1ICS_120206]"

    const-string v1, "select configuration changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 731
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startView()V

    .line 733
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v1, 0xc000

    if-ne v0, v1, :cond_161

    .line 735
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    if-nez v0, :cond_154

    .line 736
    const v0, 0xc000

    const-string v1, "exit"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILjava/lang/String;)Landroid/app/Dialog;

    .line 770
    :cond_14f
    :goto_14f
    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->SetEnableButton(Z)V

    goto/16 :goto_91

    .line 737
    :cond_154
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    if-ne v0, v6, :cond_14f

    .line 738
    const v0, 0xc000

    const-string v1, "open"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_14f

    .line 752
    :cond_161
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    if-ne v0, v2, :cond_18f

    .line 754
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    if-nez v0, :cond_16f

    .line 755
    const-string v0, "ghost_effect"

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_14f

    .line 756
    :cond_16f
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    if-ne v0, v6, :cond_179

    .line 757
    const-string v0, "speedline_effect"

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_14f

    .line 758
    :cond_179
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_184

    .line 759
    const-string v0, "copy_to_another"

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_14f

    .line 760
    :cond_184
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14f

    .line 761
    const-string v0, "new_selection"

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_14f

    .line 763
    :cond_18f
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v1, 0xc007

    if-ne v0, v1, :cond_19c

    .line 764
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->muri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showShareAppList(Landroid/net/Uri;)V

    goto :goto_14f

    .line 766
    :cond_19c
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14f

    .line 767
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showDialog(I)V

    goto :goto_14f

    .line 773
    :cond_1a7
    const-string v0, "[PhotoEditor_U1ICS_120206]"

    const-string v1, "loading not finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_91

    .line 782
    :cond_1b0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_98

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isOptionMenuOpen:Z

    if-nez v0, :cond_98

    .line 783
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v0, v7}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 784
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    if-ne v0, v6, :cond_1cc

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_98

    .line 785
    :cond_1cc
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_98

    .line 786
    :cond_1d8
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1e4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_98

    .line 787
    :cond_1e4
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_98

    .line 788
    :cond_1f0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1fc

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_98

    .line 789
    :cond_1fc
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_208

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_98

    .line 790
    :cond_208
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_214

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_98

    .line 791
    :cond_214
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_221

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_98

    .line 792
    :cond_221
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_22e

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_98

    .line 793
    :cond_22e
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_98

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_98

    .line 669
    nop

    :pswitch_data_23c
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_99
    .end packed-switch

    .line 702
    :pswitch_data_244
    .packed-switch 0x1
        :pswitch_104
        :pswitch_e6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 24
    .parameter "savedInstanceState"

    .prologue
    .line 168
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 171
    .local v11, matrix:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 172
    iget v0, v11, Landroid/util/DisplayMetrics;->xdpi:F

    move/from16 v17, v0

    .line 173
    .local v17, xdpi:F
    iget v0, v11, Landroid/util/DisplayMetrics;->ydpi:F

    move/from16 v18, v0

    .line 174
    .local v18, ydpi:F
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 176
    .local v6, dpi:F
    const/16 v19, 0x2d

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->DEFAULT_OFFSET_Y:I

    .line 177
    const/high16 v19, 0x4320

    cmpg-float v19, v6, v19

    if-gez v19, :cond_4b

    .line 178
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->DEFAULT_OFFSET_Y:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v6

    const/high16 v20, 0x4320

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->DEFAULT_OFFSET_Y:I

    .line 181
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->inst:Landroid/app/Instrumentation;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 183
    const-string v19, "null"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mToast:Landroid/widget/Toast;

    .line 185
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    .line 186
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->getAvailableExternalMemorySize()J

    move-result-wide v4

    .line 188
    .local v4, available_memsize:J
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 189
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 190
    .local v7, extras:Landroid/os/Bundle;
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, action:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "path"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 193
    .local v12, path:Ljava/lang/String;
    const-string v19, "android.intent.action.SEND"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_130

    .line 194
    const v19, 0xa000

    sput v19, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 196
    const-string v19, "android.intent.extra.STREAM"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_11e

    .line 198
    const-wide/32 v19, 0xa00000

    cmp-long v19, v4, v19

    if-gez v19, :cond_c1

    .line 200
    const-string v19, "[PhotoEditor_U1ICS_120206]"

    const-string v20, "not enough memory"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const v19, 0x7f060038

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finish()V

    .line 304
    :cond_c0
    :goto_c0
    return-void

    .line 208
    :cond_c1
    const-string v19, "android.intent.extra.STREAM"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/net/Uri;

    .line 210
    .local v16, uri:Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v19

    const-string v20, "content"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f6

    .line 211
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 216
    :goto_df
    if-nez v12, :cond_fb

    .line 217
    const v19, 0x7f06002b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    .line 219
    const-string v19, "[PhotoEditor_U1ICS_120206]"

    const-string v20, "path from share is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finish()V

    goto :goto_c0

    .line 213
    :cond_f6
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    goto :goto_df

    .line 224
    :cond_fb
    invoke-static {v12}, Lcom/sec/android/mimage/photoretouching/common/Image;->checkIfFileExists(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_116

    .line 226
    const v19, 0x7f06002b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    .line 228
    const-string v19, "[PhotoEditor_U1ICS_120206]"

    const-string v20, "there isn\'t file"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finish()V

    goto :goto_c0

    .line 234
    :cond_116
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    .line 237
    .end local v16           #uri:Landroid/net/Uri;
    :cond_11e
    const-string v19, "path"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v19, "start"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 242
    :cond_130
    const-wide/32 v19, 0xa00000

    cmp-long v19, v4, v19

    if-gez v19, :cond_14d

    .line 244
    const-string v19, "[PhotoEditor_U1ICS_120206]"

    const-string v20, "not enough memory"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const v19, 0x7f060038

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finish()V

    goto/16 :goto_c0

    .line 252
    :cond_14d
    const-string v19, "[PhotoEditor_U1ICS_120206]"

    const-string v20, "onCreate Start"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->init()Z

    move-result v15

    .line 256
    .local v15, startfromLauncher:Z
    const-string v19, "PhotoEditorSharedPreferences"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 257
    .local v14, settings:Landroid/content/SharedPreferences;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowList:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v8, v0, :cond_1a5

    .line 263
    invoke-static {v12}, Lcom/sec/android/mimage/photoretouching/common/Image;->checkIfFileExists(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1e9

    .line 265
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->load(Ljava/lang/String;)Z

    move-result v13

    .line 267
    .local v13, result_load:Z
    if-nez v13, :cond_1c2

    .line 269
    const v19, 0x7f06002b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finish()V

    .line 273
    if-eqz v15, :cond_c0

    .line 274
    new-instance v10, Landroid/content/Intent;

    const-class v19, Lcom/sec/android/mimage/photoretouching/LauncherActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .local v10, intent2:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c0

    .line 258
    .end local v10           #intent2:Landroid/content/Intent;
    .end local v13           #result_load:Z
    :cond_1a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowDialog:[Z

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDontShowList:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v8

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    aput-boolean v20, v19, v8

    .line 257
    add-int/lit8 v8, v8, 0x1

    goto :goto_167

    .line 281
    .restart local v13       #result_load:Z
    :cond_1c2
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bLoadSuccess:Z

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startView()V

    .line 285
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1e3

    .line 286
    const v19, 0xa001

    sput v19, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusSub:I

    .line 291
    :goto_1da
    const-string v19, "[PhotoEditor_U1ICS_120206]"

    const-string v20, "onCreate End"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c0

    .line 288
    :cond_1e3
    const v19, 0xa001

    sput v19, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    goto :goto_1da

    .line 295
    .end local v13           #result_load:Z
    :cond_1e9
    const v19, 0x7f06002b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    .line 297
    const-string v19, "[PhotoEditor_U1ICS_120206]"

    const-string v20, "there isn\'t file"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finish()V

    .line 299
    if-eqz v15, :cond_c0

    .line 300
    new-instance v10, Landroid/content/Intent;

    const-class v19, Lcom/sec/android/mimage/photoretouching/LauncherActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .restart local v10       #intent2:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 13
    .parameter "id"

    .prologue
    .line 1589
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->takeKeyEvents(Z)V

    .line 1591
    const/4 v0, 0x0

    .line 1592
    .local v0, dialog:Lcom/sec/android/mimage/photoretouching/SubMenuDialog;
    const/4 v5, 0x0

    .line 1593
    .local v5, submenuBuilder:Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;
    const/4 v3, 0x0

    .line 1594
    .local v3, options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;>;"
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/CharSequence;

    .line 1595
    .local v6, tmp:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 1597
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    packed-switch p1, :pswitch_data_2de

    .line 2023
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v7

    :goto_12
    return-object v7

    .line 1599
    :pswitch_13
    new-instance v5, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;

    .end local v5           #submenuBuilder:Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;
    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1600
    .restart local v5       #submenuBuilder:Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;
    const v7, 0x7f060019

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 1602
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1603
    .restart local v3       #options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;>;"
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f040002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 1604
    const/4 v1, 0x0

    .local v1, i:I
    :goto_33
    array-length v7, v6

    if-ne v1, v7, :cond_68

    .line 1607
    new-instance v7, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;

    invoke-direct {v7, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$7;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v5, v3, v7}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->setItems(Ljava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;)Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;

    .line 1643
    const v7, 0x7f030008

    invoke-virtual {v5, v7}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->create(I)Lcom/sec/android/mimage/photoretouching/SubMenuDialog;

    move-result-object v0

    .line 1644
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1645
    const/16 v7, 0x33

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1646
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v7

    if-eqz v7, :cond_82

    .line 1647
    const/16 v7, 0x63

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1648
    const/16 v7, 0x150

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1653
    :goto_61
    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1654
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    move-object v7, v0

    .line 1656
    goto :goto_12

    .line 1605
    :cond_68
    new-instance v7, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;

    aget-object v8, v6, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sSubmenu_color_icons:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1604
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 1650
    :cond_82
    const/16 v7, 0x19f

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1651
    const/16 v7, 0x50

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_61

    .line 1659
    .end local v1           #i:I
    :pswitch_8b
    new-instance v5, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;

    .end local v5           #submenuBuilder:Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;
    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1660
    .restart local v5       #submenuBuilder:Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;
    const v7, 0x7f06001f

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 1662
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1663
    .restart local v3       #options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;>;"
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f040003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 1664
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_ab
    array-length v7, v6

    if-ne v1, v7, :cond_e8

    .line 1668
    new-instance v7, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;

    invoke-direct {v7, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$8;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v5, v3, v7}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->setItems(Ljava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;)Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;

    .line 1739
    const-string v7, "[PhotoEditor_U1ICS_120206]"

    const-string v8, "create submenu dialog"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const v7, 0x7f030009

    invoke-virtual {v5, v7}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->create(I)Lcom/sec/android/mimage/photoretouching/SubMenuDialog;

    move-result-object v0

    .line 1741
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1742
    const/16 v7, 0x33

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1743
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v7

    if-eqz v7, :cond_102

    .line 1744
    const/16 v7, 0x4c

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1745
    const/16 v7, 0x6c

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1750
    :goto_e0
    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1751
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    move-object v7, v0

    .line 1752
    goto/16 :goto_12

    .line 1665
    :cond_e8
    new-instance v7, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;

    aget-object v8, v6, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sSubmenu_filter_icons:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    .line 1747
    :cond_102
    const/16 v7, 0x12b

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1748
    const/16 v7, 0xa

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_e0

    .line 1755
    .end local v1           #i:I
    :pswitch_10b
    new-instance v5, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;

    .end local v5           #submenuBuilder:Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;
    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1756
    .restart local v5       #submenuBuilder:Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;
    const v7, 0x7f060026

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 1757
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1758
    .restart local v3       #options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;>;"
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f040004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 1759
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_12b
    array-length v7, v6

    if-ne v1, v7, :cond_161

    .line 1763
    new-instance v7, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;

    invoke-direct {v7, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$9;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v5, v3, v7}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->setItems(Ljava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;)Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;

    .line 1860
    const v7, 0x7f03000f

    invoke-virtual {v5, v7}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->create(I)Lcom/sec/android/mimage/photoretouching/SubMenuDialog;

    move-result-object v0

    .line 1861
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1862
    const/16 v7, 0x33

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1863
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v7

    if-eqz v7, :cond_17b

    .line 1864
    const/16 v7, 0x78

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1865
    const/16 v7, 0x150

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1870
    :goto_159
    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1871
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    move-object v7, v0

    .line 1872
    goto/16 :goto_12

    .line 1760
    :cond_161
    new-instance v7, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;

    aget-object v8, v6, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sSubmenu_tool_icons:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1759
    add-int/lit8 v1, v1, 0x1

    goto :goto_12b

    .line 1867
    :cond_17b
    const/16 v7, 0x157

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1868
    const/16 v7, 0xa

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_159

    .line 1875
    .end local v1           #i:I
    :pswitch_184
    new-instance v5, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;

    .end local v5           #submenuBuilder:Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;
    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1876
    .restart local v5       #submenuBuilder:Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;
    const v7, 0x7f06000e

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 1877
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->smartModeOn()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->setSmartMode(Z)V

    .line 1879
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1880
    .restart local v3       #options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;>;"
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f040005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 1881
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1ad
    array-length v7, v6

    if-ne v1, v7, :cond_1e3

    .line 1892
    new-instance v7, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;

    invoke-direct {v7, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$10;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v5, v3, v7}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->setItems(Ljava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;)Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;

    .line 1963
    const v7, 0x7f03000d

    invoke-virtual {v5, v7}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->create(I)Lcom/sec/android/mimage/photoretouching/SubMenuDialog;

    move-result-object v0

    .line 1964
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1965
    const/16 v7, 0x33

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1966
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v7

    if-eqz v7, :cond_239

    .line 1967
    const/16 v7, 0x4c

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1968
    const/16 v7, 0x56

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1973
    :goto_1db
    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1975
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    move-object v7, v0

    .line 1976
    goto/16 :goto_12

    .line 1882
    :cond_1e3
    const/4 v7, 0x2

    if-eq v1, v7, :cond_1e9

    const/4 v7, 0x4

    if-ne v1, v7, :cond_221

    .line 1883
    :cond_1e9
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->hasSelection()Z

    move-result v7

    if-nez v7, :cond_209

    .line 1884
    new-instance v7, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;

    aget-object v8, v6, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sSubmenu_select_icons:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1881
    :goto_206
    add-int/lit8 v1, v1, 0x1

    goto :goto_1ad

    .line 1886
    :cond_209
    new-instance v7, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;

    aget-object v8, v6, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sSubmenu_select_icons:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_206

    .line 1889
    :cond_221
    new-instance v7, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;

    aget-object v8, v6, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sSubmenu_select_icons:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_206

    .line 1970
    :cond_239
    const/16 v7, 0x5a

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1971
    const/16 v7, 0x36

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1db

    .line 1979
    .end local v1           #i:I
    :pswitch_242
    new-instance v5, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;

    .end local v5           #submenuBuilder:Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;
    invoke-direct {v5, p0}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1980
    .restart local v5       #submenuBuilder:Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;
    const v7, 0x7f060015

    invoke-virtual {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1981
    .local v4, str:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_270

    .line 1982
    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    const/16 v9, 0x12

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1984
    :cond_270
    invoke-virtual {v5, v4}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 1986
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1987
    .restart local v3       #options:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;>;"
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f040006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 1988
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_284
    array-length v7, v6

    if-ne v1, v7, :cond_2ba

    .line 1991
    new-instance v7, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;

    invoke-direct {v7, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$11;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v5, v3, v7}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->setItems(Ljava/util/ArrayList;Landroid/content/DialogInterface$OnClickListener;)Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;

    .line 2007
    const v7, 0x7f03000e

    invoke-virtual {v5, v7}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Builder;->create(I)Lcom/sec/android/mimage/photoretouching/SubMenuDialog;

    move-result-object v0

    .line 2008
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 2009
    const/16 v7, 0x33

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2010
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v7

    if-eqz v7, :cond_2d4

    .line 2011
    const/16 v7, 0xf8

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2012
    const/16 v7, 0x56

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2017
    :goto_2b2
    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 2018
    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    move-object v7, v0

    .line 2020
    goto/16 :goto_12

    .line 1989
    :cond_2ba
    new-instance v7, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;

    aget-object v8, v6, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->sSubmenu_stroke_icons:[I

    aget v10, v10, v1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/sec/android/mimage/photoretouching/SubMenuDialog$Option;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1988
    add-int/lit8 v1, v1, 0x1

    goto :goto_284

    .line 2014
    :cond_2d4
    const/16 v7, 0x5a

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2015
    const/16 v7, 0xa

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2b2

    .line 1597
    nop

    :pswitch_data_2de
    .packed-switch 0xc009
        :pswitch_8b
        :pswitch_13
        :pswitch_10b
        :pswitch_184
        :pswitch_242
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 1355
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1356
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->closeDialog(Landroid/app/Dialog;)V

    .line 1242
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1243
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 15
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2884
    const/16 v10, 0x52

    if-ne p1, v10, :cond_4b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v10

    if-eqz v10, :cond_4b

    .line 2886
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isOptionMenuOpen:Z

    .line 2887
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2888
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2889
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2890
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2891
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2892
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2893
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2894
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2895
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2896
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2898
    const/4 v10, 0x1

    .line 2967
    :goto_4a
    return v10

    .line 2901
    :cond_4b
    const/4 v10, 0x4

    if-ne p1, v10, :cond_50

    .line 2903
    const/4 v10, 0x1

    goto :goto_4a

    .line 2906
    :cond_50
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    .line 2907
    .local v9, wm:Landroid/view/WindowManager;
    if-nez v9, :cond_58

    const/4 v10, 0x0

    goto :goto_4a

    .line 2908
    :cond_58
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Display;->getOrientation()I

    move-result v8

    .line 2909
    .local v8, orientation:I
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    if-nez v10, :cond_d6

    const/16 v10, 0x13

    if-eq p1, v10, :cond_74

    const/16 v10, 0x14

    if-eq p1, v10, :cond_74

    .line 2910
    const/16 v10, 0x15

    if-eq p1, v10, :cond_74

    const/16 v10, 0x16

    if-ne p1, v10, :cond_d6

    .line 2911
    :cond_74
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v10

    if-nez v10, :cond_c4

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v10

    if-nez v10, :cond_c4

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v10

    if-nez v10, :cond_c4

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v10

    if-nez v10, :cond_c4

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v10

    if-nez v10, :cond_c4

    .line 2912
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v10

    if-nez v10, :cond_c4

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v10

    if-nez v10, :cond_c4

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v10

    if-nez v10, :cond_c4

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v10

    if-nez v10, :cond_c4

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_c6

    .line 2913
    :cond_c4
    const/4 v10, 0x0

    goto :goto_4a

    .line 2915
    :cond_c6
    if-nez v8, :cond_d0

    .line 2916
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 2920
    :goto_cd
    const/4 v10, 0x1

    goto/16 :goto_4a

    .line 2918
    :cond_d0
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_cd

    .line 2923
    :cond_d6
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    if-eqz v10, :cond_1c6

    const/16 v10, 0x13

    if-eq p1, v10, :cond_ea

    const/16 v10, 0x14

    if-eq p1, v10, :cond_ea

    .line 2924
    const/16 v10, 0x15

    if-eq p1, v10, :cond_ea

    const/16 v10, 0x16

    if-ne p1, v10, :cond_1c6

    .line 2925
    :cond_ea
    const v10, 0x7f09002c

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2926
    .local v2, btn_ok:Landroid/widget/Button;
    const v10, 0x7f09002d

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2928
    .local v0, btn_cancel:Landroid/widget/Button;
    const v10, 0x7f090018

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 2929
    .local v4, btn_rotate1:Landroid/widget/ImageButton;
    const v10, 0x7f090019

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 2930
    .local v5, btn_rotate2:Landroid/widget/ImageButton;
    const v10, 0x7f09001a

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 2931
    .local v6, btn_rotate3:Landroid/widget/ImageButton;
    const v10, 0x7f09001b

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 2933
    .local v7, btn_rotate4:Landroid/widget/ImageButton;
    const v10, 0x7f09001c

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 2934
    .local v1, btn_minus:Landroid/widget/ImageButton;
    const v10, 0x7f09001e

    invoke-virtual {p0, v10}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 2936
    .local v3, btn_plus:Landroid/widget/ImageButton;
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v10, v10, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/16 v11, 0xe

    if-ne v10, v11, :cond_167

    .line 2938
    invoke-virtual {v2}, Landroid/widget/Button;->isFocused()Z

    move-result v10

    if-nez v10, :cond_15e

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v10

    if-nez v10, :cond_15e

    .line 2939
    invoke-virtual {v4}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v10

    if-nez v10, :cond_15e

    invoke-virtual {v5}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v10

    if-nez v10, :cond_15e

    invoke-virtual {v6}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v10

    if-nez v10, :cond_15e

    invoke-virtual {v7}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_161

    .line 2940
    :cond_15e
    const/4 v10, 0x0

    goto/16 :goto_4a

    .line 2942
    :cond_161
    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    .line 2943
    const/4 v10, 0x1

    goto/16 :goto_4a

    .line 2946
    :cond_167
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v10, v10, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    if-eqz v10, :cond_190

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v10, v10, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_190

    .line 2947
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v10, v10, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_190

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v10, v10, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_190

    .line 2948
    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v10, v10, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_190

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v10, v10, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_1b1

    .line 2950
    :cond_190
    invoke-virtual {v2}, Landroid/widget/Button;->isFocused()Z

    move-result v10

    if-nez v10, :cond_1a8

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v10

    if-nez v10, :cond_1a8

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v10

    if-nez v10, :cond_1a8

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_1ab

    .line 2951
    :cond_1a8
    const/4 v10, 0x0

    goto/16 :goto_4a

    .line 2953
    :cond_1ab
    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    .line 2954
    const/4 v10, 0x1

    goto/16 :goto_4a

    .line 2958
    :cond_1b1
    invoke-virtual {v2}, Landroid/widget/Button;->isFocused()Z

    move-result v10

    if-nez v10, :cond_1bd

    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_1c0

    .line 2959
    :cond_1bd
    const/4 v10, 0x0

    goto/16 :goto_4a

    .line 2961
    :cond_1c0
    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    .line 2962
    const/4 v10, 0x1

    goto/16 :goto_4a

    .line 2967
    .end local v0           #btn_cancel:Landroid/widget/Button;
    .end local v1           #btn_minus:Landroid/widget/ImageButton;
    .end local v2           #btn_ok:Landroid/widget/Button;
    .end local v3           #btn_plus:Landroid/widget/ImageButton;
    .end local v4           #btn_rotate1:Landroid/widget/ImageButton;
    .end local v5           #btn_rotate2:Landroid/widget/ImageButton;
    .end local v6           #btn_rotate3:Landroid/widget/ImageButton;
    .end local v7           #btn_rotate4:Landroid/widget/ImageButton;
    :cond_1c6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v10

    goto/16 :goto_4a
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    .line 2973
    if-ne p1, v3, :cond_b5

    .line 2975
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    if-nez v1, :cond_c

    .line 2976
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onBackPressed()V

    .line 3010
    :goto_b
    return v0

    .line 2979
    :cond_c
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    if-eq v1, v0, :cond_26

    .line 2980
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_26

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2f

    .line 2981
    :cond_26
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onBackPressed()V

    .line 2982
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_b

    .line 2984
    :cond_2f
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    if-eq v1, v3, :cond_5a

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5a

    .line 2985
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5a

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_5a

    .line 2986
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_5a

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_63

    .line 2987
    :cond_5a
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onBackPressed()V

    .line 2988
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_b

    .line 2990
    :cond_63
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_83

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_83

    .line 2991
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_83

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_8c

    .line 2992
    :cond_83
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onBackPressed()V

    .line 2993
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_b

    .line 2995
    :cond_8c
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_9e

    .line 2996
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onBackPressed()V

    .line 2997
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_b

    .line 2999
    :cond_9e
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_b0

    .line 3000
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onBackPressed()V

    .line 3001
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_b

    .line 3004
    :cond_b0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onBackPressed()V

    goto/16 :goto_b

    .line 3010
    :cond_b5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_b
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/16 v5, 0xa

    const v4, 0xc001

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1416
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f09002f

    if-ne v2, v3, :cond_2e

    .line 1418
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bEdit:Z

    if-eqz v2, :cond_27

    .line 1419
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 1421
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    .line 1422
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILandroid/os/Message;)Landroid/app/Dialog;

    .line 1458
    :goto_26
    return v0

    .line 1424
    :cond_27
    const v1, 0x7f060034

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    goto :goto_26

    .line 1428
    :cond_2e
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f090030

    if-ne v2, v3, :cond_71

    .line 1430
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 1431
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bEdit:Z

    if-nez v2, :cond_44

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->muri:Landroid/net/Uri;

    if-nez v2, :cond_52

    .line 1433
    :cond_44
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    .line 1434
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0, v5, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILandroid/os/Message;)Landroid/app/Dialog;

    goto :goto_26

    .line 1435
    :cond_52
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->muri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6b

    .line 1436
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->muri:Landroid/net/Uri;

    .line 1437
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    .line 1438
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0, v5, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILandroid/os/Message;)Landroid/app/Dialog;

    goto :goto_26

    .line 1441
    :cond_6b
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->muri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showShareAppList(Landroid/net/Uri;)V

    goto :goto_26

    .line 1445
    :cond_71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f09002e

    if-ne v2, v3, :cond_92

    .line 1447
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 1448
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bEdit:Z

    if-eqz v1, :cond_8e

    .line 1450
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    .line 1451
    const v1, 0xc000

    const-string v2, "open"

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->MyDialog(ILjava/lang/String;)Landroid/app/Dialog;

    goto :goto_26

    .line 1453
    :cond_8e
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startLauncherActivity()V

    goto :goto_26

    :cond_92
    move v0, v1

    .line 1458
    goto :goto_26
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 1385
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1386
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1387
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1388
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1389
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1390
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1391
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1392
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1393
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1394
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1396
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    if-ne v0, v1, :cond_43

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 1407
    :cond_3c
    :goto_3c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isOptionMenuOpen:Z

    .line 1409
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1410
    return-void

    .line 1397
    :cond_43
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4e

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_3c

    .line 1398
    :cond_4e
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_59

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_3c

    .line 1399
    :cond_59
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_64

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_3c

    .line 1400
    :cond_64
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_3c

    .line 1401
    :cond_6f
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7a

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_3c

    .line 1402
    :cond_7a
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_85

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_3c

    .line 1403
    :cond_85
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_91

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_3c

    .line 1404
    :cond_91
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_9d

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_3c

    .line 1405
    :cond_9d
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3c

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_3c
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    if-eqz v0, :cond_9

    .line 1224
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 1226
    :cond_9
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v1, 0xc003

    if-ne v0, v1, :cond_15

    .line 1227
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->closeDialog(Landroid/app/Dialog;)V

    .line 1230
    :cond_15
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    const v1, 0xa002

    if-ne v0, v1, :cond_25

    .line 1231
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    if-eqz v0, :cond_25

    .line 1232
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->clearView()V

    .line 1236
    :cond_25
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1237
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1362
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isOptionMenuOpen:Z

    .line 1364
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1365
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1366
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1367
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1368
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1369
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1370
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1371
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1372
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1373
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 1375
    const v0, 0x7f09002e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f06000b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1376
    const v0, 0x7f09002f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f060008

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1377
    const v0, 0x7f090030

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f060009

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1378
    return v2
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1248
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_62

    .line 1259
    :cond_d
    :goto_d
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    const v2, 0xa002

    if-ne v1, v2, :cond_49

    .line 1260
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    if-eqz v1, :cond_1d

    .line 1261
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->resumeView()V

    .line 1274
    :cond_1d
    :goto_1d
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1276
    return-void

    .line 1250
    :pswitch_21
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1251
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_d

    .line 1254
    :pswitch_35
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isPortrait()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1255
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_d

    .line 1264
    :cond_49
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v2, 0xc001

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    if-eqz v1, :cond_1d

    .line 1265
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$5;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$5;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    .line 1270
    const-wide/16 v3, 0x12c

    .line 1265
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1d

    .line 1248
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_35
        :pswitch_21
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 1127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_38

    .line 1128
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    if-eq v1, v3, :cond_38

    .line 1129
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v2, 0xc00d

    if-eq v1, v2, :cond_2f

    .line 1130
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v2, 0xc00a

    if-eq v1, v2, :cond_2f

    .line 1131
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v2, 0xc009

    if-eq v1, v2, :cond_2f

    .line 1132
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v2, 0xc00c

    if-eq v1, v2, :cond_2f

    .line 1133
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v2, 0xc00b

    if-ne v1, v2, :cond_34

    .line 1134
    :cond_2f
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->dismissDialog(I)V

    .line 1136
    :cond_34
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    .line 1137
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    .line 1141
    :cond_38
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    const v2, 0xa001

    if-ne v1, v2, :cond_45

    .line 1142
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mGesture:Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;

    invoke-virtual {v1, p1}, Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1152
    :cond_44
    :goto_44
    return v0

    .line 1144
    :cond_45
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    const v2, 0xa002

    if-ne v1, v2, :cond_44

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    if-eqz v1, :cond_44

    .line 1146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v0, :cond_44

    .line 1147
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->workspace:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_44
.end method

.method public onWindowFocusChanged(Z)V
    .registers 10
    .parameter "hasFocus"

    .prologue
    const v7, 0xc00c

    const v6, 0xc00b

    const v5, 0xc00a

    const v4, 0xc009

    const/4 v3, -0x1

    .line 800
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 803
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_3a

    .line 805
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v2, 0xc00d

    if-eq v1, v2, :cond_2e

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    if-eq v1, v5, :cond_2e

    .line 806
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    if-eq v1, v4, :cond_2e

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    if-eq v1, v7, :cond_2e

    .line 807
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    if-ne v1, v6, :cond_3a

    .line 809
    :cond_2e
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    const v2, 0xc00d

    if-ne v1, v2, :cond_5b

    .line 810
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 822
    :cond_3a
    :goto_3a
    if-eqz p1, :cond_83

    .line 823
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    if-eqz v1, :cond_4c

    .line 824
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    const v2, 0xa001

    if-ne v1, v2, :cond_4c

    .line 825
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->startAnim()V

    .line 828
    :cond_4c
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->SetEnableButton(Z)V

    .line 829
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    .line 830
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialogType:I

    .line 832
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->input:Landroid/widget/EditText;

    .line 839
    :cond_57
    :goto_57
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 840
    return-void

    .line 811
    :cond_5b
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    if-ne v1, v5, :cond_65

    .line 812
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_3a

    .line 813
    :cond_65
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    if-ne v1, v4, :cond_6f

    .line 814
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_3a

    .line 815
    :cond_6f
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    if-ne v1, v7, :cond_79

    .line 816
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_3a

    .line 817
    :cond_79
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    if-ne v1, v6, :cond_3a

    .line 818
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_3a

    .line 834
    :cond_83
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    if-eqz v1, :cond_57

    .line 835
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    goto :goto_57
.end method

.method public openFromGallery(I)V
    .registers 4
    .parameter "requestCode"

    .prologue
    .line 2028
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2030
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2031
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2032
    const v1, 0x7f060007

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2033
    return-void
.end method

.method public openGalleryforCopy()V
    .registers 3

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endAnim()V

    .line 1565
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawMask(Z)V

    .line 1566
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->setImageInfo(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    .line 1568
    const v0, 0xb002

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->openFromGallery(I)V

    .line 1569
    return-void
.end method

.method protected pre_load(Ljava/lang/String;)Z
    .registers 9
    .parameter "path_str"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 587
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5, v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setMainFlag(Z)V

    .line 588
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->clear()V

    .line 590
    if-nez p1, :cond_11

    move v2, v3

    .line 615
    :goto_10
    return v2

    .line 594
    :cond_11
    const-string v5, "[PhotoEditor_U1ICS_120206]"

    const-string v6, "start load bitmap "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-array v0, v4, [I

    .line 598
    .local v0, rotate:[I
    invoke-static {p1, v0}, Lcom/sec/android/mimage/photoretouching/common/Image;->loadBitmap(Ljava/lang/String;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 600
    .local v1, tmp:Landroid/graphics/Bitmap;
    const-string v5, "[PhotoEditor_U1ICS_120206]"

    const-string v6, "end load bitmap"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    if-nez v1, :cond_30

    .line 603
    const-string v2, "[PhotoEditor_U1ICS_120206]"

    const-string v4, "load failed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 604
    goto :goto_10

    .line 607
    :cond_30
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    aget v3, v0, v3

    invoke-virtual {v5, v1, p1, v3, v4}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setImageBuff(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Z

    .line 609
    const v3, 0xa001

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mState:I

    move-object v0, v2

    .line 611
    check-cast v0, [I

    .line 613
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->muri:Landroid/net/Uri;

    move v2, v4

    .line 615
    goto :goto_10
.end method

.method protected release()V
    .registers 2

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    if-eqz v0, :cond_9

    .line 1341
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->release()V

    .line 1343
    :cond_9
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v0, :cond_12

    .line 1344
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->clear()V

    .line 1346
    :cond_12
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    if-eqz v0, :cond_1b

    .line 1348
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->clearImageInfo()V

    .line 1350
    :cond_1b
    return-void
.end method

.method protected saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/os/Message;Ljava/lang/String;)V
    .registers 15
    .parameter "context"
    .parameter "bitmap"
    .parameter "msg"
    .parameter "filename"

    .prologue
    .line 2705
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->getAvailableExternalMemorySize()J

    move-result-wide v6

    .line 2706
    .local v6, available_memsize:J
    const-wide/32 v0, 0x100000

    cmp-long v0, v6, v0

    if-gez v0, :cond_19

    .line 2708
    const-string v0, "[PhotoEditor_U1ICS_120206]"

    const-string v1, "not enough memory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    const v0, 0x7f060037

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V

    .line 2728
    :goto_18
    return-void

    .line 2714
    :cond_19
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$25;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$25;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/os/Message;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2724
    .local v9, worker:Ljava/lang/Thread;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 2725
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 2726
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 2727
    .local v8, msg2:Landroid/os/Message;
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_18
.end method

.method public showShareAppList(Landroid/net/Uri;)V
    .registers 18
    .parameter "uri"

    .prologue
    .line 2153
    if-eqz p1, :cond_75

    .line 2154
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2156
    .local v7, intent:Landroid/content/Intent;
    const-string v13, "android.intent.action.SEND"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2157
    const-string v13, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v7, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2158
    const-string v13, "image/jpeg"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2159
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2161
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mResolvedIntent:Landroid/content/Intent;

    .line 2163
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2164
    .local v4, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 2166
    .local v11, pm:Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    invoke-virtual {v11, v7, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 2167
    .local v1, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v13, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v13, v11}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2169
    const/4 v8, -0x1

    .line 2170
    .local v8, loc:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2171
    .local v10, package_name:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-lt v5, v13, :cond_76

    .line 2178
    :goto_44
    if-ltz v8, :cond_49

    .line 2179
    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2182
    :cond_49
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8b

    .line 2183
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mResolvedIntent:Landroid/content/Intent;

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2184
    .local v12, resolvedIntent:Landroid/content/Intent;
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v3, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2185
    .local v3, ai:Landroid/content/pm/ActivityInfo;
    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v15, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2186
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startActivity(Landroid/content/Intent;)V

    .line 2229
    .end local v1           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #ai:Landroid/content/pm/ActivityInfo;
    .end local v4           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #i:I
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #loc:I
    .end local v10           #package_name:Ljava/lang/String;
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    .end local v12           #resolvedIntent:Landroid/content/Intent;
    :cond_75
    :goto_75
    return-void

    .line 2172
    .restart local v1       #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4       #builder:Landroid/app/AlertDialog$Builder;
    .restart local v5       #i:I
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v8       #loc:I
    .restart local v10       #package_name:Ljava/lang/String;
    .restart local v11       #pm:Landroid/content/pm/PackageManager;
    :cond_76
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 2173
    .local v6, info:Landroid/content/pm/ResolveInfo;
    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_88

    .line 2174
    move v8, v5

    .line 2175
    goto :goto_44

    .line 2171
    :cond_88
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 2190
    .end local v6           #info:Landroid/content/pm/ResolveInfo;
    :cond_8b
    new-instance v9, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Ljava/util/List;)V

    .line 2206
    .local v9, mShareListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$ResolverAdapter;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$ResolverAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 2208
    .local v2, adapter:Lcom/sec/android/mimage/photoretouching/PhotoRetouching$ResolverAdapter;
    const v13, 0x7f06000a

    invoke-virtual {v4, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2209
    invoke-virtual {v4, v2, v9}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2210
    const v13, 0x7f060004

    new-instance v14, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$13;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-virtual {v4, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2217
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    .line 2218
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->show()V

    .line 2220
    const v13, 0xc007

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I

    goto :goto_75
.end method

.method protected startLauncherActivity()V
    .registers 3

    .prologue
    .line 1547
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->release()V

    .line 1548
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bLoadSuccess:Z

    .line 1549
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->finish()V

    .line 1551
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/mimage/photoretouching/LauncherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1552
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startActivity(Landroid/content/Intent;)V

    .line 1553
    return-void
.end method

.method protected startMainActivity(Ljava/lang/String;)V
    .registers 7
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 1512
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->release()V

    .line 1514
    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bLoadSuccess:Z

    .line 1515
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$6;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$6;-><init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1528
    .local v1, worker:Ljava/lang/Thread;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1529
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1531
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1532
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "path"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1534
    const-string v2, "db_front"

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBfront:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1535
    const-string v2, "db_rear"

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBrear:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1536
    const-string v2, "undo_redo_pos"

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1538
    const-string v2, "isSub"

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bSubMenu:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1540
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startActivity(Landroid/content/Intent;)V

    .line 1541
    invoke-virtual {p0, v4, v4}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->overridePendingTransition(II)V

    .line 1542
    const-string v2, "[PhotoEditor_U1ICS_120206]"

    const-string v3, "start Activity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    return-void
.end method

.method protected startView()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/16 v4, 0x400

    const/4 v5, 0x1

    .line 453
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->setContentView(I)V

    .line 455
    const v2, 0x7f09000c

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    .line 457
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 458
    .local v1, wm:Landroid/view/WindowManager;
    if-nez v1, :cond_1e

    .line 541
    :goto_1d
    return-void

    .line 459
    :cond_1e
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 460
    .local v0, orientation:I
    if-eq v0, v5, :cond_2a

    if-ne v0, v8, :cond_182

    .line 461
    :cond_2a
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2, v6}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setPortrait(Z)V

    .line 462
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 463
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 470
    :goto_3d
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v2, :cond_48

    .line 471
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->setImageInfo(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V

    .line 473
    :cond_48
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    if-eqz v2, :cond_59

    .line 474
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mask:Lcom/sec/android/mimage/photoretouching/mask/MaskManager;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->setMask(Lcom/sec/android/mimage/photoretouching/mask/MaskManager;Lcom/sec/android/mimage/photoretouching/mask/Brush;)V

    .line 477
    :cond_59
    const v2, 0x7f090007

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    .line 478
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    const v2, 0x7f09000a

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    .line 481
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getActionType()I

    move-result v2

    if-eqz v2, :cond_96

    .line 484
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 485
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 486
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getActionType()I

    move-result v2

    if-ne v2, v7, :cond_199

    .line 487
    invoke-direct {p0, v8}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->changeSelModeBtn(I)V

    .line 493
    :cond_96
    :goto_96
    const v2, 0x7f090008

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    .line 494
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    const v2, 0x7f090009

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    .line 497
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    .line 500
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getStep()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->changeSelSizeBtn(I)V

    .line 504
    const v2, 0x7f09000e

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    .line 505
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBfront:I

    if-ne v2, v3, :cond_19e

    .line 506
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 510
    :goto_e5
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    const v2, 0x7f09000f

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    .line 513
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->undo_redo_pos:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mDBrear:I

    if-ne v2, v3, :cond_1a5

    .line 514
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 518
    :goto_100
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    const v2, 0x7f090012

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;

    .line 521
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    const v2, 0x7f090011

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;

    .line 524
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    const v2, 0x7f090010

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    .line 527
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->startAnim()V

    .line 531
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->FCL:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 532
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->FCL:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 533
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->FCL:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 534
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->FCL:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 535
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->FCL:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 536
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->FCL:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 537
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->FCL:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 538
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->FCL:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 539
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->FCL:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 540
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->FCL:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_1d

    .line 465
    :cond_182
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    invoke-virtual {v2, v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->setPortrait(Z)V

    .line 466
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x800

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFlags(II)V

    .line 467
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_3d

    .line 489
    :cond_199
    invoke-direct {p0, v7}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->changeSelModeBtn(I)V

    goto/16 :goto_96

    .line 508
    :cond_19e
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_e5

    .line 516
    :cond_1a5
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_100
.end method

.method public touch_down(FF)Z
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 1179
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getActionType()I

    move-result v1

    if-eqz v1, :cond_1d

    .line 1181
    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bTouchMove:Z

    .line 1182
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->DEFAULT_OFFSET_X:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getOffsetYvalue(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->startBrush(FF)V

    .line 1185
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public touch_move(FFFF)Z
    .registers 9
    .parameter "x"
    .parameter "y"
    .parameter "distX"
    .parameter "distY"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1190
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getActionType()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 1192
    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bTouchMove:Z

    .line 1193
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->DEFAULT_OFFSET_X:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getOffsetYvalue(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->moveBrush(FF)V

    .line 1204
    :goto_1d
    return v0

    .line 1198
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    if-nez v0, :cond_24

    move v0, v1

    .line 1199
    goto :goto_1d

    .line 1200
    :cond_24
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->getScale()F

    move-result v0

    const/high16 v2, 0x3f80

    cmpl-float v0, v0, v2

    if-lez v0, :cond_37

    .line 1201
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    neg-float v2, p3

    neg-float v3, p4

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->panBy(FF)V

    :cond_37
    move v0, v1

    .line 1204
    goto :goto_1d
.end method

.method public touch_up(FFZ)Z
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "bbrush"

    .prologue
    const/4 v0, 0x0

    .line 1209
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->brush:Lcom/sec/android/mimage/photoretouching/mask/Brush;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/mask/Brush;->getActionType()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 1211
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mView:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->DEFAULT_OFFSET_X:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getOffsetYvalue(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-virtual {v1, v2, v3, p3}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->endBrush(FFZ)V

    .line 1213
    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bTouchMove:Z

    .line 1214
    const/4 v0, 0x1

    .line 1218
    :goto_1d
    return v0

    .line 1217
    :cond_1e
    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bTouchMove:Z

    goto :goto_1d
.end method
