.class Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;
.super Ljava/lang/Object;
.source "MainActivityView.java"

# interfaces
.implements Lcom/sec/android/app/myfiles/MainActivityView$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/MainActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentContentStrategy"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private mLaunchedView:Landroid/view/View;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/myfiles/MainActivityView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/myfiles/MainActivityView;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->this$0:Lcom/sec/android/app/myfiles/MainActivityView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p2, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->mTag:Ljava/lang/String;

    .line 369
    iput-object p3, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 370
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/myfiles/MainActivityView;Ljava/lang/String;Landroid/content/Intent;Lcom/sec/android/app/myfiles/MainActivityView$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 359
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;-><init>(Lcom/sec/android/app/myfiles/MainActivityView;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .registers 6

    .prologue
    .line 374
    iget-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->this$0:Lcom/sec/android/app/myfiles/MainActivityView;

    iget-object v2, v2, Lcom/sec/android/app/myfiles/MainActivityView;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v2, :cond_e

    .line 375
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 378
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->this$0:Lcom/sec/android/app/myfiles/MainActivityView;

    iget-object v2, v2, Lcom/sec/android/app/myfiles/MainActivityView;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->mTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 380
    .local v0, w:Landroid/view/Window;
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 382
    .local v1, wd:Landroid/view/View;
    :goto_20
    iget-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 383
    iget-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 384
    iget-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->this$0:Lcom/sec/android/app/myfiles/MainActivityView;

    #getter for: Lcom/sec/android/app/myfiles/MainActivityView;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/sec/android/app/myfiles/MainActivityView;->access$300(Lcom/sec/android/app/myfiles/MainActivityView;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 387
    :cond_3f
    iput-object v1, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    .line 397
    iget-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v2, :cond_5a

    .line 398
    iget-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 399
    iget-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 400
    iget-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const/high16 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 402
    :cond_5a
    iget-object v2, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    return-object v2

    .line 380
    .end local v1           #wd:Landroid/view/View;
    :cond_5d
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public tabClosed()V
    .registers 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/myfiles/MainActivityView$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    :cond_b
    return-void
.end method
