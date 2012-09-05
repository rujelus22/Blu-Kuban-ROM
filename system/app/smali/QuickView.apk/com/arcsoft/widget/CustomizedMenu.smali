.class public Lcom/arcsoft/widget/CustomizedMenu;
.super Landroid/widget/RelativeLayout;
.source "CustomizedMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;
    }
.end annotation


# static fields
.field private static final MENU_IMAGEIDS_IMG_L:[I = null

.field private static final MENU_IMAGEIDS_IMG_L_MORE:[I = null

.field private static final MENU_IMAGEIDS_S_AND_S:[I = null

.field private static final MENU_IMAGEIDS_VIDEO_L:[I = null

.field private static final MENU_IMAGEIDS_VIDEO_L_MORE:[I = null

.field private static final MENU_TEXTIDS_IMG:[I = null

.field private static final MENU_TEXTIDS_IMG_MORE:[I = null

.field private static final MENU_TEXTIDS_S_AND_S:[I = null

.field private static final MENU_TEXTIDS_VIDEO:[I = null

.field private static final MENU_TEXTIDS_VIDEO_MORE:[I = null

.field public static final ORIENTATION_LANDSCAPE_1:I = 0x0

.field public static final ORIENTATION_LANDSCAPE_2:I = 0xb4

.field public static final ORIENTATION_PORTRAIT_1:I = 0x5a

.field public static final ORIENTATION_PORTRAIT_2:I = 0x10e

.field private static mMenuIcons:[I

.field private static mMenuTextIds:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:I

.field public mCurrentFocus:I

.field private mFactory:Landroid/view/LayoutInflater;

.field private mIsMenuShown:Z

.field private mIsSNS:Z

.field private mLastIsVideo:Z

.field private mMenuFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private mMenuView:Landroid/widget/RelativeLayout;

.field private mOrientation:I

.field private m_Listener:Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;

.field private myAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 38
    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuIcons:[I

    .line 39
    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuTextIds:[I

    .line 40
    new-array v0, v1, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->MENU_IMAGEIDS_IMG_L:[I

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_58

    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->MENU_IMAGEIDS_IMG_L_MORE:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_62

    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->MENU_IMAGEIDS_VIDEO_L:[I

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->MENU_IMAGEIDS_VIDEO_L_MORE:[I

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_76

    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->MENU_TEXTIDS_IMG:[I

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_80

    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->MENU_TEXTIDS_IMG_MORE:[I

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_8a

    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->MENU_TEXTIDS_VIDEO:[I

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_94

    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->MENU_TEXTIDS_VIDEO_MORE:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_9e

    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->MENU_IMAGEIDS_S_AND_S:[I

    .line 75
    new-array v0, v1, [I

    fill-array-data v0, :array_a8

    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->MENU_TEXTIDS_S_AND_S:[I

    return-void

    .line 40
    nop

    :array_4e
    .array-data 0x4
        0xdt 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
    .end array-data

    .line 44
    :array_58
    .array-data 0x4
        0xdt 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
    .end array-data

    .line 48
    :array_62
    .array-data 0x4
        0xdt 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
    .end array-data

    .line 52
    :array_6c
    .array-data 0x4
        0xdt 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
    .end array-data

    .line 56
    :array_76
    .array-data 0x4
        0x2t 0x0t 0x4t 0x7ft
        0x1t 0x0t 0x4t 0x7ft
        0x3t 0x0t 0x4t 0x7ft
    .end array-data

    .line 59
    :array_80
    .array-data 0x4
        0x2t 0x0t 0x4t 0x7ft
        0x1t 0x0t 0x4t 0x7ft
        0x18t 0x0t 0x4t 0x7ft
    .end array-data

    .line 62
    :array_8a
    .array-data 0x4
        0x2t 0x0t 0x4t 0x7ft
        0x1t 0x0t 0x4t 0x7ft
        0x4t 0x0t 0x4t 0x7ft
    .end array-data

    .line 65
    :array_94
    .array-data 0x4
        0x2t 0x0t 0x4t 0x7ft
        0x1t 0x0t 0x4t 0x7ft
        0x18t 0x0t 0x4t 0x7ft
    .end array-data

    .line 70
    :array_9e
    .array-data 0x4
        0x4t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
    .end array-data

    .line 75
    :array_a8
    .array-data 0x4
        0x5t 0x0t 0x4t 0x7ft
        0x1t 0x0t 0x4t 0x7ft
        0x18t 0x0t 0x4t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCount:I

    .line 26
    iput-boolean v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mIsMenuShown:Z

    .line 27
    iput-boolean v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mLastIsVideo:Z

    .line 28
    iput-object v2, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mOrientation:I

    .line 37
    iput-object v2, p0, Lcom/arcsoft/widget/CustomizedMenu;->mFactory:Landroid/view/LayoutInflater;

    .line 79
    iput-boolean v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mIsSNS:Z

    .line 81
    iput-object v2, p0, Lcom/arcsoft/widget/CustomizedMenu;->m_Listener:Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;

    .line 82
    iput v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCurrentFocus:I

    .line 430
    new-instance v0, Lcom/arcsoft/widget/CustomizedMenu$3;

    invoke-direct {v0, p0}, Lcom/arcsoft/widget/CustomizedMenu$3;-><init>(Lcom/arcsoft/widget/CustomizedMenu;)V

    iput-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 94
    iput v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCount:I

    .line 95
    iput-object p1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mFactory:Landroid/view/LayoutInflater;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 6
    .parameter "context"
    .parameter "bIsSNS"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCount:I

    .line 26
    iput-boolean v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mIsMenuShown:Z

    .line 27
    iput-boolean v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mLastIsVideo:Z

    .line 28
    iput-object v2, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mOrientation:I

    .line 37
    iput-object v2, p0, Lcom/arcsoft/widget/CustomizedMenu;->mFactory:Landroid/view/LayoutInflater;

    .line 79
    iput-boolean v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mIsSNS:Z

    .line 81
    iput-object v2, p0, Lcom/arcsoft/widget/CustomizedMenu;->m_Listener:Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;

    .line 82
    iput v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCurrentFocus:I

    .line 430
    new-instance v0, Lcom/arcsoft/widget/CustomizedMenu$3;

    invoke-direct {v0, p0}, Lcom/arcsoft/widget/CustomizedMenu$3;-><init>(Lcom/arcsoft/widget/CustomizedMenu;)V

    iput-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 102
    iput v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCount:I

    .line 103
    iput-object p1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mContext:Landroid/content/Context;

    .line 104
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mFactory:Landroid/view/LayoutInflater;

    .line 107
    iput-boolean p2, p0, Lcom/arcsoft/widget/CustomizedMenu;->mIsSNS:Z

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/arcsoft/widget/CustomizedMenu;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/arcsoft/widget/CustomizedMenu;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/CustomizedMenu;->setMenuFocusable(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/arcsoft/widget/CustomizedMenu;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/arcsoft/widget/CustomizedMenu;->saveCurrentFocus(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/arcsoft/widget/CustomizedMenu;)Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->m_Listener:Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;

    return-object v0
.end method

.method private initMenu()V
    .registers 4

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/arcsoft/widget/CustomizedMenu;->removeAllViews()V

    .line 173
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    .line 174
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/arcsoft/widget/CustomizedMenu;->addView(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 177
    return-void
.end method

.method private initMenuStates()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 180
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_7

    .line 189
    :goto_6
    return-void

    .line 182
    :cond_7
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 184
    .local v0, menu:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #menu:Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 186
    .restart local v0       #menu:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #menu:Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 188
    .restart local v0       #menu:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_6
.end method

.method private saveCurrentFocus(Z)V
    .registers 6
    .parameter "reset"

    .prologue
    const/4 v1, 0x0

    .line 452
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1d

    .line 453
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_focus_id"

    if-eqz p1, :cond_1e

    move v0, v1

    :goto_16
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 456
    :cond_1d
    return-void

    .line 453
    :cond_1e
    iget v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCurrentFocus:I

    goto :goto_16
.end method

.method private setAlphaAnimation(Z)V
    .registers 7
    .parameter "bMoveOut"

    .prologue
    .line 263
    const/4 v0, 0x0

    .local v0, fromX:F
    const/4 v1, 0x0

    .line 264
    .local v1, toX:F
    if-eqz p1, :cond_20

    .line 265
    const/4 v0, 0x0

    .line 266
    const/high16 v1, 0x3f80

    .line 272
    :goto_7
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/arcsoft/widget/CustomizedMenu;->myAnimation:Landroid/view/animation/Animation;

    .line 273
    iget-object v2, p0, Lcom/arcsoft/widget/CustomizedMenu;->myAnimation:Landroid/view/animation/Animation;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 274
    iget-object v2, p0, Lcom/arcsoft/widget/CustomizedMenu;->myAnimation:Landroid/view/animation/Animation;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 275
    return-void

    .line 268
    :cond_20
    const/high16 v0, 0x3f80

    .line 269
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private setMenuFocusable(Z)V
    .registers 5
    .parameter "focus"

    .prologue
    .line 419
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 420
    .local v0, menu:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_10

    .line 421
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 422
    :cond_10
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #menu:Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 423
    .restart local v0       #menu:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_20

    .line 424
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 425
    :cond_20
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #menu:Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 426
    .restart local v0       #menu:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_30

    .line 427
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 428
    :cond_30
    return-void
.end method

.method public static setMenuResource([I[I)V
    .registers 2
    .parameter "iconIds"
    .parameter "textIds"

    .prologue
    .line 111
    sput-object p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuIcons:[I

    .line 112
    sput-object p1, Lcom/arcsoft/widget/CustomizedMenu;->mMenuTextIds:[I

    .line 113
    return-void
.end method

.method private setTranslateAnimation(Z)V
    .registers 9
    .parameter "bMoveOut"

    .prologue
    .line 278
    const/4 v0, 0x0

    .local v0, fromX:F
    const/4 v2, 0x0

    .local v2, toX:F
    const/4 v1, 0x0

    .local v1, fromY:F
    const/4 v3, 0x0

    .line 279
    .local v3, toY:F
    iget v4, p0, Lcom/arcsoft/widget/CustomizedMenu;->mOrientation:I

    if-nez v4, :cond_2c

    .line 280
    const/4 v0, 0x0

    .line 281
    const/4 v2, 0x0

    .line 282
    if-eqz p1, :cond_28

    .line 283
    const/high16 v1, 0x42c8

    .line 284
    const/4 v3, 0x0

    .line 322
    :cond_f
    :goto_f
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v4, v0, v2, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v4, p0, Lcom/arcsoft/widget/CustomizedMenu;->myAnimation:Landroid/view/animation/Animation;

    .line 323
    iget-object v4, p0, Lcom/arcsoft/widget/CustomizedMenu;->myAnimation:Landroid/view/animation/Animation;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 324
    iget-object v4, p0, Lcom/arcsoft/widget/CustomizedMenu;->myAnimation:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 325
    return-void

    .line 286
    :cond_28
    const/4 v1, 0x0

    .line 287
    const/high16 v3, 0x42c8

    goto :goto_f

    .line 289
    :cond_2c
    iget v4, p0, Lcom/arcsoft/widget/CustomizedMenu;->mOrientation:I

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_3e

    .line 290
    const/4 v0, 0x0

    .line 291
    const/4 v2, 0x0

    .line 292
    if-eqz p1, :cond_3a

    .line 293
    const/high16 v1, -0x3d38

    .line 294
    const/4 v3, 0x0

    goto :goto_f

    .line 296
    :cond_3a
    const/4 v1, 0x0

    .line 297
    const/high16 v3, -0x3d38

    goto :goto_f

    .line 299
    :cond_3e
    iget v4, p0, Lcom/arcsoft/widget/CustomizedMenu;->mOrientation:I

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_50

    .line 300
    const/4 v1, 0x0

    .line 301
    const/4 v3, 0x0

    .line 302
    if-eqz p1, :cond_4c

    .line 303
    const/high16 v0, -0x3d38

    .line 304
    const/4 v2, 0x0

    goto :goto_f

    .line 306
    :cond_4c
    const/4 v0, 0x0

    .line 307
    const/high16 v2, -0x3d38

    goto :goto_f

    .line 310
    :cond_50
    iget v4, p0, Lcom/arcsoft/widget/CustomizedMenu;->mOrientation:I

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_f

    .line 311
    const/4 v1, 0x0

    .line 312
    const/4 v3, 0x0

    .line 313
    if-eqz p1, :cond_5e

    .line 314
    const/high16 v0, 0x42c8

    .line 315
    const/4 v2, 0x0

    goto :goto_f

    .line 317
    :cond_5e
    const/4 v0, 0x0

    .line 318
    const/high16 v2, 0x42c8

    goto :goto_f
.end method


# virtual methods
.method public addMenu(II)Z
    .registers 14
    .parameter "imageResId"
    .parameter "textResId"

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x1

    const v9, 0x7f020016

    const/4 v5, 0x0

    .line 192
    iget v7, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCount:I

    if-lt v7, v10, :cond_b

    .line 240
    :goto_a
    return v5

    .line 194
    :cond_b
    iget v7, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCount:I

    .line 195
    iget v7, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCount:I

    if-ne v7, v6, :cond_56

    .line 197
    iget-object v7, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v8, 0x7f060008

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 198
    .local v1, menu1:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 199
    iget-object v5, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v7, 0x7f060009

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 200
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 203
    iget-object v5, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 204
    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v5, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v7, 0x7f06000a

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 206
    .local v4, text:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/arcsoft/widget/CustomizedMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0           #image:Landroid/widget/ImageView;
    .end local v1           #menu1:Landroid/widget/RelativeLayout;
    .end local v4           #text:Landroid/widget/TextView;
    :cond_54
    :goto_54
    move v5, v6

    .line 240
    goto :goto_a

    .line 208
    :cond_56
    iget v7, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCount:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9b

    .line 209
    iget-object v7, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v8, 0x7f06000c

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 210
    .local v2, menu2:Landroid/widget/RelativeLayout;
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 211
    iget-object v5, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v7, 0x7f06000d

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 213
    .restart local v0       #image:Landroid/widget/ImageView;
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 214
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v5, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 216
    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v5, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v7, 0x7f06000e

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 218
    .restart local v4       #text:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/arcsoft/widget/CustomizedMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_54

    .line 219
    .end local v0           #image:Landroid/widget/ImageView;
    .end local v2           #menu2:Landroid/widget/RelativeLayout;
    .end local v4           #text:Landroid/widget/TextView;
    :cond_9b
    iget v7, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCount:I

    if-ne v7, v10, :cond_54

    .line 220
    iget-object v7, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v8, 0x7f060010

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 221
    .local v3, menu3:Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 223
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 224
    iget-object v5, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v7, 0x7f060011

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 225
    .restart local v0       #image:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    iget-object v5, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 227
    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v5, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v7, 0x7f060012

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 229
    .restart local v4       #text:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/arcsoft/widget/CustomizedMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_54
.end method

.method public changeMenuType(Z)V
    .registers 5
    .parameter "bVideo"

    .prologue
    const/4 v2, 0x0

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, showAfterChanged:Z
    iget-boolean v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mLastIsVideo:Z

    if-ne v1, p1, :cond_7

    .line 131
    :cond_6
    :goto_6
    return-void

    .line 123
    :cond_7
    iget-boolean v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mIsMenuShown:Z

    if-eqz v1, :cond_c

    .line 124
    const/4 v0, 0x1

    .line 125
    :cond_c
    invoke-virtual {p0, v2}, Lcom/arcsoft/widget/CustomizedMenu;->hideMenu(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/arcsoft/widget/CustomizedMenu;->removeAllViews()V

    .line 127
    invoke-virtual {p0, p1}, Lcom/arcsoft/widget/CustomizedMenu;->setMenu(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/arcsoft/widget/CustomizedMenu;->init()I

    .line 129
    if-eqz v0, :cond_6

    .line 130
    invoke-virtual {p0, v2}, Lcom/arcsoft/widget/CustomizedMenu;->showMenu(Z)V

    goto :goto_6
.end method

.method public getCurrentOrientation()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mOrientation:I

    return v0
.end method

.method public hideMenu(Z)V
    .registers 4
    .parameter "bShowAnimation"

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mIsMenuShown:Z

    if-nez v0, :cond_a

    .line 416
    :cond_9
    :goto_9
    return-void

    .line 384
    :cond_a
    iput-boolean v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mIsMenuShown:Z

    .line 385
    if-eqz p1, :cond_23

    .line 386
    invoke-direct {p0, v1}, Lcom/arcsoft/widget/CustomizedMenu;->setAlphaAnimation(Z)V

    .line 387
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->myAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/arcsoft/widget/CustomizedMenu$2;

    invoke-direct {v1, p0}, Lcom/arcsoft/widget/CustomizedMenu$2;-><init>(Lcom/arcsoft/widget/CustomizedMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 408
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->myAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_9

    .line 410
    :cond_23
    iput v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCurrentFocus:I

    .line 411
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/arcsoft/widget/CustomizedMenu;->saveCurrentFocus(Z)V

    .line 413
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_9
.end method

.method public init()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 151
    const/4 v2, 0x0

    .line 152
    .local v2, ret:I
    iput v5, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCount:I

    .line 153
    invoke-direct {p0}, Lcom/arcsoft/widget/CustomizedMenu;->initMenuStates()V

    .line 154
    invoke-direct {p0}, Lcom/arcsoft/widget/CustomizedMenu;->initMenu()V

    .line 156
    sget-object v3, Lcom/arcsoft/widget/CustomizedMenu;->mMenuIcons:[I

    array-length v1, v3

    .line 157
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v1, :cond_1e

    .line 159
    :try_start_10
    sget-object v3, Lcom/arcsoft/widget/CustomizedMenu;->mMenuIcons:[I

    aget v3, v3, v0

    sget-object v4, Lcom/arcsoft/widget/CustomizedMenu;->mMenuTextIds:[I

    aget v4, v4, v0

    invoke-virtual {p0, v3, v4}, Lcom/arcsoft/widget/CustomizedMenu;->addMenu(II)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_36

    .line 157
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 164
    :cond_1e
    iget-object v3, p0, Lcom/arcsoft/widget/CustomizedMenu;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_32

    .line 165
    iget-object v3, p0, Lcom/arcsoft/widget/CustomizedMenu;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "last_focus_id"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCurrentFocus:I

    .line 166
    :cond_32
    invoke-direct {p0, v5}, Lcom/arcsoft/widget/CustomizedMenu;->setMenuFocusable(Z)V

    .line 167
    return v2

    .line 160
    :catch_36
    move-exception v3

    goto :goto_1b
.end method

.method public isMenuShown()Z
    .registers 2

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mIsMenuShown:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 460
    iget-boolean v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mIsMenuShown:Z

    if-nez v1, :cond_5

    .line 484
    :cond_4
    :goto_4
    return-void

    .line 463
    :cond_5
    const/4 v0, 0x0

    .line 464
    .local v0, index:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_28

    .line 478
    :goto_d
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/arcsoft/widget/CustomizedMenu;->hideMenu(Z)V

    .line 479
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->m_Listener:Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;

    if-eqz v1, :cond_4

    .line 480
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->m_Listener:Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;

    invoke-interface {v1}, Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;->onAutoHideMenu()V

    .line 481
    if-eqz v0, :cond_4

    .line 482
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->m_Listener:Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;

    invoke-interface {v1, v0}, Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;->onMenuItemSelected(I)V

    goto :goto_4

    .line 466
    :sswitch_22
    const/4 v0, 0x1

    .line 467
    goto :goto_d

    .line 469
    :sswitch_24
    const/4 v0, 0x2

    .line 470
    goto :goto_d

    .line 472
    :sswitch_26
    const/4 v0, 0x3

    .line 473
    goto :goto_d

    .line 464
    :sswitch_data_28
    .sparse-switch
        0x7f060008 -> :sswitch_22
        0x7f06000c -> :sswitch_24
        0x7f060010 -> :sswitch_26
    .end sparse-switch
.end method

.method public registerListener(Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/arcsoft/widget/CustomizedMenu;->m_Listener:Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;

    .line 86
    return-void
.end method

.method public setMenu(Z)V
    .registers 3
    .parameter "isVideo"

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->mIsSNS:Z

    if-eqz v0, :cond_f

    .line 136
    sget-object v0, Lcom/arcsoft/widget/CustomizedMenu;->MENU_IMAGEIDS_S_AND_S:[I

    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuIcons:[I

    .line 137
    sget-object v0, Lcom/arcsoft/widget/CustomizedMenu;->MENU_TEXTIDS_S_AND_S:[I

    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuTextIds:[I

    .line 146
    :goto_c
    iput-boolean p1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mLastIsVideo:Z

    .line 147
    return-void

    .line 139
    :cond_f
    if-nez p1, :cond_1a

    .line 140
    sget-object v0, Lcom/arcsoft/widget/CustomizedMenu;->MENU_IMAGEIDS_IMG_L_MORE:[I

    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuIcons:[I

    .line 141
    sget-object v0, Lcom/arcsoft/widget/CustomizedMenu;->MENU_TEXTIDS_IMG_MORE:[I

    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuTextIds:[I

    goto :goto_c

    .line 143
    :cond_1a
    sget-object v0, Lcom/arcsoft/widget/CustomizedMenu;->MENU_IMAGEIDS_VIDEO_L_MORE:[I

    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuIcons:[I

    .line 144
    sget-object v0, Lcom/arcsoft/widget/CustomizedMenu;->MENU_TEXTIDS_VIDEO_MORE:[I

    sput-object v0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuTextIds:[I

    goto :goto_c
.end method

.method public setMenuEnable(IZ)V
    .registers 6
    .parameter "index"
    .parameter "bEnabled"

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, menu:Landroid/widget/RelativeLayout;
    packed-switch p1, :pswitch_data_2e

    .line 260
    :cond_4
    :goto_4
    return-void

    .line 247
    :pswitch_5
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #menu:Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 258
    .restart local v0       #menu:Landroid/widget/RelativeLayout;
    :goto_10
    if-eqz v0, :cond_4

    .line 259
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_4

    .line 250
    :pswitch_16
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #menu:Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 251
    .restart local v0       #menu:Landroid/widget/RelativeLayout;
    goto :goto_10

    .line 253
    :pswitch_22
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #menu:Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 254
    .restart local v0       #menu:Landroid/widget/RelativeLayout;
    goto :goto_10

    .line 245
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_16
        :pswitch_22
    .end packed-switch
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 5
    .parameter "l"

    .prologue
    .line 489
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const v2, 0x7f060013

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 490
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz v0, :cond_10

    .line 491
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 492
    :cond_10
    return-void
.end method

.method public showMenu(Z)V
    .registers 6
    .parameter "bShowAnimation"

    .prologue
    const/4 v3, 0x1

    .line 332
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mIsMenuShown:Z

    if-eqz v1, :cond_a

    .line 376
    :cond_9
    :goto_9
    return-void

    .line 337
    :cond_a
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 338
    iput-boolean v3, p0, Lcom/arcsoft/widget/CustomizedMenu;->mIsMenuShown:Z

    .line 339
    if-eqz p1, :cond_29

    .line 340
    invoke-direct {p0, v3}, Lcom/arcsoft/widget/CustomizedMenu;->setAlphaAnimation(Z)V

    .line 341
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->myAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/arcsoft/widget/CustomizedMenu$1;

    invoke-direct {v2, p0}, Lcom/arcsoft/widget/CustomizedMenu$1;-><init>(Lcom/arcsoft/widget/CustomizedMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 365
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/arcsoft/widget/CustomizedMenu;->myAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_9

    .line 367
    :cond_29
    const/4 v0, 0x0

    .line 368
    .local v0, menu:Landroid/widget/RelativeLayout;
    iget v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCurrentFocus:I

    if-eqz v1, :cond_3d

    .line 370
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/arcsoft/widget/CustomizedMenu;->mCurrentFocus:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #menu:Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 371
    .restart local v0       #menu:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_3d

    .line 372
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 374
    :cond_3d
    invoke-direct {p0, v3}, Lcom/arcsoft/widget/CustomizedMenu;->setMenuFocusable(Z)V

    goto :goto_9
.end method

.method public unregisterListener()V
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu;->m_Listener:Lcom/arcsoft/widget/CustomizedMenu$onMenuClickListener;

    .line 90
    return-void
.end method
