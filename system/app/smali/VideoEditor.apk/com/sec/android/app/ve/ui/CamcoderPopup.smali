.class public Lcom/sec/android/app/ve/ui/CamcoderPopup;
.super Lcom/sec/android/app/ve/ui/Popupwidget;
.source "CamcoderPopup.java"


# instance fields
.field private actionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/ve/ui/PopupActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final inflater:Landroid/view/LayoutInflater;

.field private mDurationPopupitems:Landroid/view/ViewGroup;

.field private final mRootView:Landroid/view/View;

.field titleItem:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5
    .parameter "sourceView"

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/ui/Popupwidget;-><init>(Landroid/view/View;)V

    .line 26
    iput-object v2, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->titleItem:Landroid/widget/LinearLayout;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->actionList:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->context:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->context:Landroid/content/Context;

    .line 33
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 32
    iput-object v0, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->inflater:Landroid/view/LayoutInflater;

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->inflater:Landroid/view/LayoutInflater;

    .line 36
    const v1, 0x7f030017

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->mRootView:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/ui/CamcoderPopup;->setContentView(Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->mRootView:Landroid/view/View;

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->mDurationPopupitems:Landroid/view/ViewGroup;

    .line 39
    return-void
.end method

.method private createActionList()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 60
    iget-object v4, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->titleItem:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_c

    .line 61
    iget-object v4, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->mDurationPopupitems:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->titleItem:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    iget-object v4, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_16

    .line 84
    return-void

    .line 65
    :cond_16
    iget-object v4, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/ve/ui/PopupActionItem;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/ui/PopupActionItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, title:Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/ve/ui/PopupActionItem;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/ui/PopupActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 76
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/ve/ui/PopupActionItem;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/ui/PopupActionItem;->getListener()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-direct {p0, v2, v1, v4}, Lcom/sec/android/app/ve/ui/CamcoderPopup;->getActionItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v3

    .line 78
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 79
    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    .line 81
    iget-object v4, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->mDurationPopupitems:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method private getActionItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 11
    .parameter "title"
    .parameter "icon"
    .parameter "listener"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f030005

    const/16 v4, 0x97

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, container:Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 89
    .local v1, img:Landroid/widget/ImageView;
    if-eqz p2, :cond_3a

    .line 90
    iget-object v3, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #container:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 92
    .restart local v0       #container:Landroid/widget/LinearLayout;
    const v3, 0x7f0b0015

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #img:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 97
    .restart local v1       #img:Landroid/widget/ImageView;
    :goto_1b
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    const v3, 0x7f0b000b

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 100
    .local v2, text:Landroid/widget/TextView;
    if-eqz p2, :cond_31

    .line 101
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    :cond_31
    if-eqz p1, :cond_36

    .line 105
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_36
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-object v0

    .line 94
    .end local v2           #text:Landroid/widget/TextView;
    :cond_3a
    iget-object v3, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #container:Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .restart local v0       #container:Landroid/widget/LinearLayout;
    goto :goto_1b
.end method


# virtual methods
.method public addActionItem(Lcom/sec/android/app/ve/ui/PopupActionItem;)V
    .registers 3
    .parameter "action"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public show(II)V
    .registers 6
    .parameter "xPosition"
    .parameter "yPosition"

    .prologue
    const/4 v2, -0x2

    .line 46
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/CamcoderPopup;->preShow()V

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/ve/ui/CamcoderPopup;->createActionList()V

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->mRootView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 49
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/android/app/ve/ui/CamcoderPopup;->mSourceView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 53
    return-void
.end method
