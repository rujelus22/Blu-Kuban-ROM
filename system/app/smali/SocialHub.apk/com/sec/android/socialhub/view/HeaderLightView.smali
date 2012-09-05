.class public Lcom/sec/android/socialhub/view/HeaderLightView;
.super Landroid/widget/LinearLayout;
.source "HeaderLightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/view/HeaderLightView$OnScrollController;
    }
.end annotation


# instance fields
.field private mLight:Landroid/view/View;

.field private mLoadMoreListener:Lcom/sec/android/socialhub/view/HeaderLightView$OnScrollController;

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lcom/sec/android/socialhub/view/HeaderLightView;->mLoadMoreListener:Lcom/sec/android/socialhub/view/HeaderLightView$OnScrollController;

    .line 15
    iput-object v0, p0, Lcom/sec/android/socialhub/view/HeaderLightView;->mLight:Landroid/view/View;

    .line 39
    new-instance v0, Lcom/sec/android/socialhub/view/HeaderLightView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/HeaderLightView$1;-><init>(Lcom/sec/android/socialhub/view/HeaderLightView;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/HeaderLightView;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 20
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/HeaderLightView;->initialize(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/view/HeaderLightView;)Lcom/sec/android/socialhub/view/HeaderLightView$OnScrollController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/sec/android/socialhub/view/HeaderLightView;->mLoadMoreListener:Lcom/sec/android/socialhub/view/HeaderLightView$OnScrollController;

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 31
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/HeaderLightView;->mLight:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/sec/android/socialhub/view/HeaderLightView;->mLight:Landroid/view/View;

    const v1, 0x7f02013f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 33
    iget-object v0, p0, Lcom/sec/android/socialhub/view/HeaderLightView;->mLight:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/HeaderLightView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 35
    iget-object v0, p0, Lcom/sec/android/socialhub/view/HeaderLightView;->mLight:Landroid/view/View;

    const/4 v1, -0x1

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/view/HeaderLightView;->addView(Landroid/view/View;II)V

    .line 36
    return-void
.end method


# virtual methods
.method public setOnScrollController(Lcom/sec/android/socialhub/view/HeaderLightView$OnScrollController;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sec/android/socialhub/view/HeaderLightView;->mLoadMoreListener:Lcom/sec/android/socialhub/view/HeaderLightView$OnScrollController;

    .line 26
    return-void
.end method
