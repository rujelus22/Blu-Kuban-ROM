.class public abstract Lcom/sec/android/app/myfiles/fileselector/views/MXView;
.super Landroid/widget/LinearLayout;
.source "MXView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$OnViewModeChangedListener;
.implements Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarHomeButtonPressedListener;
.implements Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarUpButtonPressedListener;
.implements Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarViewModeButtonPressedListener;
.implements Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;


# instance fields
.field protected mContentFrame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

.field protected mContext:Landroid/content/Context;

.field protected mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

.field private mEmptyView:Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;

.field private mPleaseWaitString:Ljava/lang/String;

.field protected mTitleBar:Lcom/sec/android/app/myfiles/fileselector/views/MXTitleBar;

.field protected mToolBar:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

.field private mViewModeDlg:Landroid/app/AlertDialog;

.field private mViewModeString:Ljava/lang/String;

.field private mWaitProgressDlg:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    .line 48
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mToolBar:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    .line 50
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mTitleBar:Lcom/sec/android/app/myfiles/fileselector/views/MXTitleBar;

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContentFrame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    .line 54
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mViewModeDlg:Landroid/app/AlertDialog;

    .line 56
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    .line 67
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContext:Landroid/content/Context;

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mViewModeString:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContext:Landroid/content/Context;

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mPleaseWaitString:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    .line 48
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mToolBar:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    .line 50
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mTitleBar:Lcom/sec/android/app/myfiles/fileselector/views/MXTitleBar;

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContentFrame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    .line 54
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mViewModeDlg:Landroid/app/AlertDialog;

    .line 56
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    .line 75
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContext:Landroid/content/Context;

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mViewModeString:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContext:Landroid/content/Context;

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mPleaseWaitString:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public getContentFrame()Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContentFrame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    return-object v0
.end method

.method public hideEmptyView()V
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mEmptyView:Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;

    if-eqz v0, :cond_11

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mEmptyView:Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContentFrame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->setVisibility(I)V

    .line 188
    :cond_11
    return-void
.end method

.method public isShowingViewModeDlg()Z
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mViewModeDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mViewModeDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 206
    const/4 v0, 0x1

    .line 208
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public makeAndShowToast(Ljava/lang/String;I)V
    .registers 4
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContentFrame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->changeViewMode(I)V

    .line 236
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 237
    return-void
.end method

.method public onFolderChanged(Ljava/lang/String;ZZ)V
    .registers 7
    .parameter "foldername"
    .parameter "canGoUpFolder"
    .parameter "canGoHomeFolder"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mTitleBar:Lcom/sec/android/app/myfiles/fileselector/views/MXTitleBar;

    if-eqz v1, :cond_9

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mTitleBar:Lcom/sec/android/app/myfiles/fileselector/views/MXTitleBar;

    invoke-interface {v1, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXTitleBar;->setTitle(Ljava/lang/String;)V

    .line 153
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mToolBar:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    if-eqz v1, :cond_12

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mToolBar:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->setUpButtonEnabled(Z)V

    .line 156
    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mToolBar:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    if-eqz v1, :cond_1b

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mToolBar:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->setHomeButtonEnabled(Z)V

    .line 159
    :cond_1b
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContentFrame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    if-eqz v1, :cond_24

    .line 161
    :try_start_1f
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContentFrame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->setFirstSelection()V
    :try_end_24
    .catch Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException; {:try_start_1f .. :try_end_24} :catch_25

    .line 166
    :cond_24
    :goto_24
    return-void

    .line 162
    :catch_25
    move-exception v0

    .line 163
    .local v0, e:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;
    const-string v1, "[MyFiles]"

    const-string v2, "mContentFrame.setFirstSelection() error. viewmode is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public onItemExecute(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "path"

    .prologue
    .line 276
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 279
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->setFolder(Ljava/lang/String;)V

    .line 283
    :goto_10
    return-void

    .line 281
    :cond_11
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->execute(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public onToolBarHomeButtonPressed()V
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->goHomeFolder()V

    .line 197
    return-void
.end method

.method public onToolBarUpButtonPressed()V
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->goUpFolder()V

    .line 193
    return-void
.end method

.method public setAdapter(Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContentFrame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->setAdapter(Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;)V

    .line 130
    return-void
.end method

.method public setContentFrame(Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;)V
    .registers 3
    .parameter "frame"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContentFrame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContentFrame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    if-eqz v0, :cond_10

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContentFrame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->setMXView(Lcom/sec/android/app/myfiles/fileselector/views/MXView;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContentFrame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->setOnViewModeChangedListener(Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$OnViewModeChangedListener;)V

    .line 126
    :cond_10
    return-void
.end method

.method public setController(Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;)V
    .registers 3
    .parameter "controller"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->setView(Lcom/sec/android/app/myfiles/fileselector/views/MXView;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->setAdapter(Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;)V

    .line 100
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .registers 2
    .parameter "emptyView"

    .prologue
    .line 173
    check-cast p1, Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mEmptyView:Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;

    .line 174
    return-void
.end method

.method public setIcon(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V
    .registers 5
    .parameter "path"
    .parameter "b"
    .parameter "scaleType"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContentFrame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->setIcon(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V

    .line 142
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "path"
    .parameter "b"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContentFrame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->setThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 146
    return-void
.end method

.method public setTitleBar(Lcom/sec/android/app/myfiles/fileselector/views/MXTitleBar;)V
    .registers 2
    .parameter "titlebar"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mTitleBar:Lcom/sec/android/app/myfiles/fileselector/views/MXTitleBar;

    .line 117
    return-void
.end method

.method public setToolBar(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;)V
    .registers 3
    .parameter "toolbar"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mToolBar:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mToolBar:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->setOnToolBarHomeButtonPressedListener(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarHomeButtonPressedListener;)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mToolBar:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->setOnToolBarUpButtonPressedListener(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarUpButtonPressedListener;)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mToolBar:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->setOnToolBarViewModeButtonPressedListener(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$OnToolBarViewModeButtonPressedListener;)V

    .line 113
    return-void
.end method

.method public showEmptyView()V
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mEmptyView:Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;

    if-eqz v0, :cond_11

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContentFrame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mEmptyView:Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;->setVisibility(I)V

    .line 181
    :cond_11
    return-void
.end method

.method public declared-synchronized showWaitProgressDialog(Ljava/lang/String;Z)V
    .registers 7
    .parameter "msg"
    .parameter "isShow"

    .prologue
    .line 245
    monitor-enter p0

    if-eqz p2, :cond_2c

    .line 247
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1e

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    .line 255
    :goto_12
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/views/MXView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXView$1;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/MXView;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_29

    .line 271
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    .line 250
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_29

    goto :goto_12

    .line 245
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0

    .line 267
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1c

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mWaitProgressDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_29

    goto :goto_1c
.end method

.method public showWaitProgressDialog(Z)V
    .registers 3
    .parameter "isShow"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->mPleaseWaitString:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->showWaitProgressDialog(Ljava/lang/String;Z)V

    .line 241
    return-void
.end method
