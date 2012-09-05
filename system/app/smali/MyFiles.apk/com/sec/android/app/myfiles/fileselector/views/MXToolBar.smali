.class public abstract Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;
.super Landroid/widget/RelativeLayout;
.source "MXToolBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarViewModeButtonPressedListener;,
        Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarHomeButtonPressedListener;,
        Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarUpButtonPressedListener;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHomeButton:Landroid/view/View;

.field private mHomeButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarHomeButtonPressedListener;

.field private mUpButton:Landroid/view/View;

.field private mUpButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarUpButtonPressedListener;

.field private mViewModeButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarViewModeButtonPressedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mUpButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarUpButtonPressedListener;

    .line 27
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mHomeButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarHomeButtonPressedListener;

    .line 29
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mViewModeButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarViewModeButtonPressedListener;

    .line 43
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mUpButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarUpButtonPressedListener;

    .line 27
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mHomeButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarHomeButtonPressedListener;

    .line 29
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mViewModeButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarViewModeButtonPressedListener;

    .line 51
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mUpButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarUpButtonPressedListener;

    .line 27
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mHomeButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarHomeButtonPressedListener;

    .line 29
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mViewModeButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarViewModeButtonPressedListener;

    .line 59
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mUpButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mHomeButton:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method pressedHomeButton()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mHomeButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarHomeButtonPressedListener;

    if-eqz v0, :cond_9

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mHomeButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarHomeButtonPressedListener;

    invoke-interface {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarHomeButtonPressedListener;->onToolBarHomeButtonPressed()V

    .line 131
    :cond_9
    return-void
.end method

.method pressedUpButton()V
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mUpButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarUpButtonPressedListener;

    if-eqz v0, :cond_9

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mUpButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarUpButtonPressedListener;

    invoke-interface {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarUpButtonPressedListener;->onToolBarUpButtonPressed()V

    .line 121
    :cond_9
    return-void
.end method

.method public abstract rotate()V
.end method

.method protected setHomeButton(Landroid/view/View;)V
    .registers 4
    .parameter "button"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mHomeButton:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mHomeButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$2;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 231
    move v0, p1

    .line 233
    .local v0, isEnable:Z
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mHomeButton:Landroid/view/View;

    if-eqz v1, :cond_11

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$8;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$8;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 249
    :cond_11
    return-void
.end method

.method public setOnToolBarHomeButtonPressedListener(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarHomeButtonPressedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mHomeButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarHomeButtonPressedListener;

    .line 287
    return-void
.end method

.method public setOnToolBarUpButtonPressedListener(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarUpButtonPressedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mUpButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarUpButtonPressedListener;

    .line 281
    return-void
.end method

.method public setOnToolBarViewModeButtonPressedListener(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarViewModeButtonPressedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mViewModeButtonPressedListener:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarViewModeButtonPressedListener;

    .line 294
    return-void
.end method

.method protected setUpButton(Landroid/view/View;)V
    .registers 4
    .parameter "button"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mUpButton:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mUpButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$1;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method public setUpButtonEnabled(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 203
    move v0, p1

    .line 205
    .local v0, isEnable:Z
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mUpButton:Landroid/view/View;

    if-eqz v1, :cond_11

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$7;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$7;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 225
    :cond_11
    return-void
.end method
