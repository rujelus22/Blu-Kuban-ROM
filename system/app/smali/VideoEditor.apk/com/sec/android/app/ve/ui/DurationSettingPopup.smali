.class public Lcom/sec/android/app/ve/ui/DurationSettingPopup;
.super Lcom/sec/android/app/ve/ui/Popupwidget;
.source "DurationSettingPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/ui/DurationSettingPopup$DurationSettingArrayAdapter;
    }
.end annotation


# static fields
.field public static final ARROW_DOWN:I = 0x1

.field public static final ARROW_LEFT:I = 0x3

.field public static final ARROW_RIGHT:I = 0x4

.field public static final ARROW_UP:I = 0x2


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

.field private listAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/ve/ui/PopupActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mArrowDown:Landroid/widget/ImageView;

.field private final mArrowRight:Landroid/widget/ImageView;

.field private mDurationPopupitems:Landroid/widget/ListView;

.field private final mRootView:Landroid/view/View;

.field titleItem:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5
    .parameter "sourceView"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/ui/Popupwidget;-><init>(Landroid/view/View;)V

    .line 35
    iput-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->titleItem:Landroid/widget/TextView;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->actionList:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->context:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->context:Landroid/content/Context;

    .line 42
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 41
    iput-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->inflater:Landroid/view/LayoutInflater;

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->inflater:Landroid/view/LayoutInflater;

    .line 45
    const v1, 0x7f030019

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mRootView:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->setContentView(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mRootView:Landroid/view/View;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->titleItem:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->titleItem:Landroid/widget/TextView;

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mRootView:Landroid/view/View;

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mDurationPopupitems:Landroid/widget/ListView;

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mDurationPopupitems:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mRootView:Landroid/view/View;

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mArrowDown:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mRootView:Landroid/view/View;

    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mArrowRight:Landroid/widget/ImageView;

    .line 56
    return-void
.end method

.method private showArrow(II)V
    .registers 8
    .parameter "whichArrow"
    .parameter "requestedPos"

    .prologue
    const/4 v4, 0x4

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, arrowWidth:I
    const/4 v1, 0x0

    .line 155
    .local v1, param:Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CenterX"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 157
    packed-switch p1, :pswitch_data_4c

    .line 181
    :goto_18
    :pswitch_18
    return-void

    .line 159
    :pswitch_19
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 160
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 162
    .restart local v1       #param:Landroid/view/ViewGroup$MarginLayoutParams;
    sub-int v2, p2, v0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 163
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18

    .line 172
    :pswitch_31
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mArrowRight:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 173
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mArrowRight:Landroid/widget/ImageView;

    .line 174
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 173
    .end local v1           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 176
    .restart local v1       #param:Landroid/view/ViewGroup$MarginLayoutParams;
    mul-int/lit8 v2, v0, 0x4

    sub-int v2, p2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 177
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18

    .line 157
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_31
    .end packed-switch
.end method


# virtual methods
.method public addActionItem(Lcom/sec/android/app/ve/ui/PopupActionItem;)V
    .registers 3
    .parameter "action"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public getmDurationPopupitems()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mDurationPopupitems:Landroid/widget/ListView;

    return-object v0
.end method

.method public setListClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 59
    .local p1, itemListener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mDurationPopupitems:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    return-void
.end method

.method public setmDurationPopupitems(Landroid/widget/ListView;)V
    .registers 2
    .parameter "mDurationPopupitems"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mDurationPopupitems:Landroid/widget/ListView;

    .line 68
    return-void
.end method

.method public show(III)V
    .registers 10
    .parameter "xPosition"
    .parameter "yPosition"
    .parameter "arrowtype"

    .prologue
    const/4 v5, -0x2

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->preShow()V

    .line 77
    new-instance v2, Lcom/sec/android/app/ve/ui/DurationSettingPopup$DurationSettingArrayAdapter;

    iget-object v3, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->actionList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/ve/ui/DurationSettingPopup$DurationSettingArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->listAdapter:Landroid/widget/ArrayAdapter;

    .line 78
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mDurationPopupitems:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, CenterX:I
    const/4 v1, 0x0

    .line 83
    .local v1, CenterY:I
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mRootView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 84
    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 83
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v5, v5}, Landroid/view/View;->measure(II)V

    .line 87
    packed-switch p3, :pswitch_data_bc

    .line 112
    :goto_2a
    :pswitch_2a
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 113
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mSourceView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 115
    return-void

    .line 89
    :pswitch_3b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ARROW_DOWN :CenterX"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CenterY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 93
    invoke-direct {p0, p3, v0}, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->showArrow(II)V

    goto :goto_2a

    .line 103
    :pswitch_73
    iget-object v2, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ARROW_RIGHT : CenterX"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    iget-object v3, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CenterY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 106
    iget-object v3, p0, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CenterY"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, p3, v1}, Lcom/sec/android/app/ve/ui/DurationSettingPopup;->showArrow(II)V

    goto/16 :goto_2a

    .line 87
    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_2a
        :pswitch_2a
        :pswitch_73
    .end packed-switch
.end method
