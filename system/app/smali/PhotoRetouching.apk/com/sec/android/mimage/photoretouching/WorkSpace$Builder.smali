.class public Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;
.super Ljava/lang/Object;
.source "WorkSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/WorkSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field public mInflater:Landroid/view/LayoutInflater;

.field private mOkCancelListener:Landroid/view/View$OnClickListener;

.field private progress:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/WorkSpace;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "base"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->context:Landroid/content/Context;

    .line 239
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->mInflater:Landroid/view/LayoutInflater;

    .line 241
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->progress:I

    .line 242
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->mOkCancelListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->create()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;
    .registers 2
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    return-object v0
.end method

.method private create()Landroid/view/View;
    .registers 15

    .prologue
    const/16 v13, 0x52

    const/16 v12, 0x51

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x4

    .line 282
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030010

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 284
    .local v1, layout:Landroid/view/ViewGroup;
    const v5, 0x7f09002a

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 285
    .local v4, t_title:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->getTitle(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    const v5, 0x7f09002c

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v6, Lcom/sec/android/mimage/photoretouching/WorkSpace;->btn_ok:Landroid/widget/Button;

    .line 288
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/16 v6, 0xd

    if-ne v5, v6, :cond_43

    .line 289
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/WorkSpace;->btn_ok:Landroid/widget/Button;

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 291
    :cond_43
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    const v5, 0x7f09002d

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v6, Lcom/sec/android/mimage/photoretouching/WorkSpace;->btn_cancel:Landroid/widget/Button;

    .line 293
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/WorkSpace;->btn_cancel:Landroid/widget/Button;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$1;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$1;-><init>(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 307
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->mOkCancelListener:Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_78

    .line 308
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/WorkSpace;->btn_ok:Landroid/widget/Button;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$2;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$2;-><init>(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/WorkSpace;->btn_cancel:Landroid/widget/Button;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$3;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$3;-><init>(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    :cond_78
    new-instance v2, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$4;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$4;-><init>(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)V

    .line 366
    .local v2, listener:Landroid/widget/SeekBar$OnSeekBarChangeListener;
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    if-ge v5, v9, :cond_141

    .line 367
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/AdjustView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->context:Landroid/content/Context;

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->progress:I

    invoke-direct {v6, v7, v2, v9, v8}, Lcom/sec/android/mimage/photoretouching/AdjustView;-><init>(Landroid/content/Context;Landroid/widget/SeekBar$OnSeekBarChangeListener;II)V

    #setter for: Lcom/sec/android/mimage/photoretouching/WorkSpace;->centerMenu:Landroid/view/ViewGroup;
    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$6(Lcom/sec/android/mimage/photoretouching/WorkSpace;Landroid/view/ViewGroup;)V

    .line 372
    :cond_91
    :goto_91
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace;->centerMenu:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$7(Lcom/sec/android/mimage/photoretouching/WorkSpace;)Landroid/view/ViewGroup;

    move-result-object v5

    if-eqz v5, :cond_b6

    .line 373
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x5a

    invoke-direct {v3, v10, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 374
    .local v3, params:Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 375
    iput v13, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 376
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace;->centerMenu:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$7(Lcom/sec/android/mimage/photoretouching/WorkSpace;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace;->centerMenu:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$7(Lcom/sec/android/mimage/photoretouching/WorkSpace;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 380
    .end local v3           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_b6
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/16 v6, 0xe

    if-ne v5, v6, :cond_140

    .line 382
    const/4 v0, 0x0

    .line 384
    .local v0, RotateMenu:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030006

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0           #RotateMenu:Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 386
    .restart local v0       #RotateMenu:Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    const v5, 0x7f090018

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v6, Lcom/sec/android/mimage/photoretouching/WorkSpace;->btn_rotate1:Landroid/widget/ImageButton;

    .line 387
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/WorkSpace;->btn_rotate1:Landroid/widget/ImageButton;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$5;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$5;-><init>(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    const v5, 0x7f090019

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v6, Lcom/sec/android/mimage/photoretouching/WorkSpace;->btn_rotate2:Landroid/widget/ImageButton;

    .line 398
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/WorkSpace;->btn_rotate2:Landroid/widget/ImageButton;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$6;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$6;-><init>(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    const v5, 0x7f09001a

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v6, Lcom/sec/android/mimage/photoretouching/WorkSpace;->btn_rotate3:Landroid/widget/ImageButton;

    .line 408
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/WorkSpace;->btn_rotate3:Landroid/widget/ImageButton;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$7;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$7;-><init>(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    const v5, 0x7f09001b

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, v6, Lcom/sec/android/mimage/photoretouching/WorkSpace;->btn_rotate4:Landroid/widget/ImageButton;

    .line 418
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/WorkSpace;->btn_rotate4:Landroid/widget/ImageButton;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$8;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$8;-><init>(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x5a

    invoke-direct {v3, v10, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 429
    .restart local v3       #params:Landroid/widget/FrameLayout$LayoutParams;
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 430
    iput v13, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 432
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 436
    .end local v0           #RotateMenu:Landroid/view/ViewGroup;
    .end local v3           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_140
    return-object v1

    .line 368
    :cond_141
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_14e

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    if-ne v5, v9, :cond_91

    .line 369
    :cond_14e
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/AdjustView;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->context:Landroid/content/Context;

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->progress:I

    invoke-direct {v6, v7, v2, v11, v8}, Lcom/sec/android/mimage/photoretouching/AdjustView;-><init>(Landroid/content/Context;Landroid/widget/SeekBar$OnSeekBarChangeListener;II)V

    #setter for: Lcom/sec/android/mimage/photoretouching/WorkSpace;->centerMenu:Landroid/view/ViewGroup;
    invoke-static {v5, v6}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$6(Lcom/sec/android/mimage/photoretouching/WorkSpace;Landroid/view/ViewGroup;)V

    goto/16 :goto_91
.end method

.method private getTitle(I)Ljava/lang/String;
    .registers 6
    .parameter "action"

    .prologue
    const/16 v3, 0xe

    .line 253
    const/4 v2, 0x4

    if-ge p1, v2, :cond_15

    .line 254
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, stringArray:[Ljava/lang/String;
    aget-object v1, v0, p1

    .line 275
    .end local v0           #stringArray:[Ljava/lang/String;
    :goto_14
    return-object v1

    .line 256
    :cond_15
    const/16 v2, 0xa

    if-ge p1, v2, :cond_2b

    .line 257
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 258
    .restart local v0       #stringArray:[Ljava/lang/String;
    add-int/lit8 v2, p1, -0x4

    aget-object v1, v0, v2

    goto :goto_14

    .line 259
    .end local v0           #stringArray:[Ljava/lang/String;
    :cond_2b
    if-ge p1, v3, :cond_3f

    .line 260
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 261
    .restart local v0       #stringArray:[Ljava/lang/String;
    add-int/lit8 v2, p1, -0xa

    aget-object v1, v0, v2

    goto :goto_14

    .line 263
    .end local v0           #stringArray:[Ljava/lang/String;
    :cond_3f
    if-ne p1, v3, :cond_4f

    .line 265
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, tempstring:Ljava/lang/String;
    goto :goto_14

    .line 268
    .end local v1           #tempstring:Ljava/lang/String;
    :cond_4f
    const/16 v2, 0xf

    if-ne p1, v2, :cond_61

    .line 270
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    .restart local v1       #tempstring:Ljava/lang/String;
    goto :goto_14

    .line 275
    .end local v1           #tempstring:Ljava/lang/String;
    :cond_61
    const/4 v1, 0x0

    goto :goto_14
.end method


# virtual methods
.method public setOkCancelListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->mOkCancelListener:Landroid/view/View$OnClickListener;

    .line 246
    return-void
.end method

.method public setProgress(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 249
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->progress:I

    .line 250
    return-void
.end method
