.class Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;
.super Landroid/widget/BaseAdapter;
.source "TransitionControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyArrayAdapter"
.end annotation


# instance fields
.field private stateList:Landroid/content/res/ColorStateList;

.field final synthetic this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)V
    .registers 2
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private changeToBlueColor(Landroid/widget/TextView;)V
    .registers 9
    .parameter "txtView"

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 420
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v6, [[I

    .line 421
    new-array v2, v4, [I

    const v3, 0x10100a1

    aput v3, v2, v5

    aput-object v2, v1, v5

    .line 422
    new-array v2, v4, [I

    const v3, 0x101009c

    aput v3, v2, v5

    aput-object v2, v1, v4

    const/4 v2, 0x2

    .line 423
    new-array v3, v4, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-array v3, v5, [I

    aput-object v3, v1, v2

    .line 424
    new-array v2, v6, [I

    fill-array-data v2, :array_34

    .line 425
    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 420
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 426
    return-void

    .line 424
    :array_34
    .array-data 0x4
        0x0t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x7t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 416
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f060002

    const/16 v8, 0x8

    const/4 v7, 0x0

    const v6, 0x7f0b0113

    const v5, 0x7f0b0112

    .line 432
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$7(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003e

    .line 433
    const/4 v4, 0x0

    .line 432
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    move-object v1, p2

    .line 434
    check-cast v1, Landroid/widget/FrameLayout;

    .line 438
    .local v1, view:Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    #getter for: Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->mSelected:I
    invoke-static {v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->access$8(Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;)I

    move-result v2

    if-ne p1, v2, :cond_49

    .line 440
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 439
    check-cast v0, Landroid/widget/TextView;

    .line 442
    .local v0, textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 443
    aget-object v2, v2, p1

    .line 442
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 445
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 457
    :goto_48
    return-object v1

    .line 449
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_49
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 448
    check-cast v0, Landroid/widget/TextView;

    .line 451
    .restart local v0       #textView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView$MyArrayAdapter;->this$0:Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionControlView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 452
    aget-object v2, v2, p1

    .line 451
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 454
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_48
.end method
