.class Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberRangeKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberRangeKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberRangeKeyListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;Lcom/sec/android/app/clockpackage/alarm/NumberPicker$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberRangeKeyListener;-><init>(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 16
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 574
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 577
    .local v2, filtered:Ljava/lang/CharSequence;
    if-nez v2, :cond_a

    .line 578
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 581
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-interface {p4, v8, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v8

    invoke-interface {p4, p6, v8}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 583
    .local v5, result:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 632
    .end local v5           #result:Ljava/lang/String;
    :goto_38
    return-object v5

    .line 589
    .restart local v5       #result:Ljava/lang/String;
    :cond_39
    move-object v3, v5

    .line 592
    .local v3, modifiedResult:Ljava/lang/String;
    const-string v7, "00"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_4c

    .line 593
    const-string v5, ""

    goto :goto_38

    .line 597
    :cond_4c
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_55

    .line 598
    const-string v5, ""

    goto :goto_38

    .line 602
    :cond_55
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_68

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-ne v7, v8, :cond_68

    .line 603
    const-string v5, ""

    goto :goto_38

    .line 605
    :cond_68
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberRangeKeyListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget v4, v7, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mCurrent:I

    .line 608
    .local v4, parsedResult:I
    :try_start_6c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_6f} :catch_79

    move-result v4

    .line 613
    :goto_70
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberRangeKeyListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget v7, v7, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mEnd:I

    if-le v4, v7, :cond_7e

    .line 614
    const-string v5, ""

    goto :goto_38

    .line 609
    :catch_79
    move-exception v0

    .line 610
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_70

    .line 616
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_7e
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberRangeKeyListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    #calls: Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->getSelectedPos(Ljava/lang/String;)I
    invoke-static {v7, v5}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->access$1300(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;Ljava/lang/String;)I

    move-result v6

    .line 628
    .local v6, val:I
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberRangeKeyListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    iget v7, v7, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mEnd:I

    if-le v6, v7, :cond_9e

    .line 629
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberRangeKeyListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mText:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->access$900(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 630
    .local v1, edit:Landroid/text/Editable;
    const/4 v7, 0x0

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_38

    .end local v1           #edit:Landroid/text/Editable;
    :cond_9e
    move-object v5, v2

    .line 632
    goto :goto_38
.end method

.method protected getAcceptedChars()[C
    .registers 2

    .prologue
    .line 567
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->access$1200()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 562
    const/4 v0, 0x2

    return v0
.end method
