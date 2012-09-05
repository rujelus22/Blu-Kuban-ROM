.class Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$FactoryTestAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListFunctionTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FactoryTestAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;)V
    .registers 3
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$FactoryTestAdapter;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 353
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$FactoryTestAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 354
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 358
    const/4 v0, 0x7

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 363
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 368
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/high16 v5, -0x100

    const/16 v4, 0x8

    .line 375
    if-nez p2, :cond_8b

    .line 377
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$FactoryTestAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030011

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 379
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;

    invoke-direct {v0}, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;-><init>()V

    .line 380
    .local v0, holder:Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;
    const v1, 0x7f090034

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testNumber:Landroid/widget/TextView;

    .line 381
    const v1, 0x7f090035

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName:Landroid/widget/TextView;

    .line 382
    const v1, 0x7f090036

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->space1:Landroid/widget/TextView;

    .line 383
    const v1, 0x7f090037

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName2:Landroid/widget/TextView;

    .line 384
    const v1, 0x7f090038

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->space2:Landroid/widget/TextView;

    .line 385
    const v1, 0x7f090039

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName3:Landroid/widget/TextView;

    .line 387
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 394
    :goto_5a
    if-nez p1, :cond_92

    .line 396
    const-string v1, "FunctionTest"

    const-string v2, "Motor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "1."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName:Landroid/widget/TextView;

    const-string v2, "Motor"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 400
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    :cond_8a
    :goto_8a
    return-object p2

    .line 391
    .end local v0           #holder:Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;
    :cond_8b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;

    .restart local v0       #holder:Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;
    goto :goto_5a

    .line 405
    :cond_92
    const/4 v1, 0x1

    if-ne p1, v1, :cond_c4

    .line 407
    const-string v1, "FunctionTest"

    const-string v2, "VGACamera"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "2."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName:Landroid/widget/TextView;

    const-string v2, "MainCamera"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8a

    .line 416
    :cond_c4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_f6

    .line 418
    const-string v1, "FunctionTest"

    const-string v2, "SUBmera"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "3."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName:Landroid/widget/TextView;

    const-string v2, "SUBCamera"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8a

    .line 426
    :cond_f6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_129

    .line 428
    const-string v1, "FunctionTest"

    const-string v2, "Orientation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "4."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName:Landroid/widget/TextView;

    const-string v2, "Orientation"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8a

    .line 437
    :cond_129
    const/4 v1, 0x4

    if-ne p1, v1, :cond_15c

    .line 439
    const-string v1, "FunctionTest"

    const-string v2, "Proximity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "5."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName:Landroid/widget/TextView;

    const-string v2, "Proximity"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 443
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8a

    .line 449
    :cond_15c
    const/4 v1, 0x5

    if-ne p1, v1, :cond_18f

    .line 451
    const-string v1, "FunctionTest"

    const-string v2, "Intensity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "6."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName:Landroid/widget/TextView;

    const-string v2, "Intensity"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8a

    .line 460
    :cond_18f
    const/4 v1, 0x6

    if-ne p1, v1, :cond_8a

    .line 462
    const-string v1, "FunctionTest"

    const-string v2, "2nd RSSI Debug"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testNumber:Landroid/widget/TextView;

    const-string v2, "7."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName:Landroid/widget/TextView;

    const-string v2, "2nd RSSI Debug"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 466
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->space1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->space2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v1, v0, Lcom/android/samsungtest/SimpleFunctionTest/ListFunctionTest$ViewHolder;->testName3:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8a
.end method
