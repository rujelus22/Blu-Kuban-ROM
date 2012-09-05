.class public Lcom/sec/android/app/dlna/view/BottomSoftkeyView;
.super Landroid/widget/LinearLayout;
.source "BottomSoftkeyView.java"


# instance fields
.field private context:Landroid/content/Context;

.field private leftItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private leftListener:Landroid/view/View$OnClickListener;

.field private rightItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private rightListener:Landroid/view/View$OnClickListener;

.field private softKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->leftItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 17
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->rightItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 19
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->softKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 21
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->leftListener:Landroid/view/View$OnClickListener;

    .line 23
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->rightListener:Landroid/view/View$OnClickListener;

    .line 25
    iput-object v1, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->context:Landroid/content/Context;

    .line 29
    iput-object p1, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->context:Landroid/content/Context;

    .line 30
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 32
    .local v0, mInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iput-object v1, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->softKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 33
    iget-object v1, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->softKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->addView(Landroid/view/View;)V

    .line 34
    return-void
.end method


# virtual methods
.method public setButtonText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "left"
    .parameter "right"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->softKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->removeAllViews()V

    .line 38
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->leftItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->softKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v1, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->leftItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->addView(Landroid/view/View;)V

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->rightItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->softKeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    iget-object v1, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->rightItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->addView(Landroid/view/View;)V

    .line 42
    return-void
.end method

.method public setLeftEnabled(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->leftItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 56
    return-void
.end method

.method public setOnLeftClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->leftListener:Landroid/view/View$OnClickListener;

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->leftItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method public setOnRightClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->rightListener:Landroid/view/View$OnClickListener;

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/dlna/view/BottomSoftkeyView;->rightItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method
