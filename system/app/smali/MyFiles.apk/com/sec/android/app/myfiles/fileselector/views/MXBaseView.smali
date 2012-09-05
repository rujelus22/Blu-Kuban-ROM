.class public Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;
.super Lcom/sec/android/app/myfiles/fileselector/views/MXView;
.source "MXBaseView.java"


# instance fields
.field emptyview:Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;

.field frame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

.field toolbar:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/fileselector/views/MXView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method public initViews()V
    .registers 3

    .prologue
    .line 28
    const v1, 0x7f0c0030

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->toolbar:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    .line 29
    const v1, 0x7f0c0031

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MXTitleBar;

    .line 30
    .local v0, titlebar:Lcom/sec/android/app/myfiles/fileselector/views/MXTitleBar;
    const v1, 0x7f0c0032

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->frame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    .line 31
    const v1, 0x7f0c0036

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->emptyview:Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;

    .line 33
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->toolbar:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->setToolBar(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;)V

    .line 34
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->setTitleBar(Lcom/sec/android/app/myfiles/fileselector/views/MXTitleBar;)V

    .line 35
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->frame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->setContentFrame(Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;)V

    .line 36
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->emptyview:Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->setEmptyView(Landroid/view/View;)V

    .line 37
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->frame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->setMXView(Lcom/sec/android/app/myfiles/fileselector/views/MXView;)V

    .line 38
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->showEmptyView()V

    .line 39
    return-void
.end method

.method public onViewModeChanged(Ljava/lang/String;)V
    .registers 2
    .parameter "viewmode"

    .prologue
    .line 44
    return-void
.end method

.method public rotate(I)V
    .registers 3
    .parameter "orientation"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->toolbar:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->rotate()V

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->frame:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->rotate(I)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->emptyview:Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/MXEmptyView;->setEmptyImage(I)V

    .line 56
    return-void
.end method
