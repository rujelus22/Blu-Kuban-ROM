.class Lcom/android/mms/ui/NumberPicker$InputTextFilter;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InputTextFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NumberPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$InputTextFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 20
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 1727
    iget-object v10, p0, Lcom/android/mms/ui/NumberPicker$InputTextFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v10}, Lcom/android/mms/ui/NumberPicker;->access$1000(Lcom/android/mms/ui/NumberPicker;)[Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5c

    .line 1728
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1729
    .local v3, filtered:Ljava/lang/CharSequence;
    if-nez v3, :cond_12

    .line 1730
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1733
    :cond_12
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v11, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v11

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v11}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1736
    .local v6, result:Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_49

    .line 1766
    .end local v6           #result:Ljava/lang/String;
    :goto_48
    return-object v6

    .line 1739
    .restart local v6       #result:Ljava/lang/String;
    :cond_49
    iget-object v10, p0, Lcom/android/mms/ui/NumberPicker$InputTextFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    #calls: Lcom/android/mms/ui/NumberPicker;->getSelectedPos(Ljava/lang/String;)I
    invoke-static {v10, v6}, Lcom/android/mms/ui/NumberPicker;->access$1100(Lcom/android/mms/ui/NumberPicker;Ljava/lang/String;)I

    move-result v8

    .line 1746
    .local v8, val:I
    iget-object v10, p0, Lcom/android/mms/ui/NumberPicker$InputTextFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mMaxValue:I
    invoke-static {v10}, Lcom/android/mms/ui/NumberPicker;->access$1200(Lcom/android/mms/ui/NumberPicker;)I

    move-result v10

    if-le v8, v10, :cond_5a

    .line 1747
    const-string v6, ""

    goto :goto_48

    :cond_5a
    move-object v6, v3

    .line 1749
    goto :goto_48

    .line 1752
    .end local v3           #filtered:Ljava/lang/CharSequence;
    .end local v6           #result:Ljava/lang/String;
    .end local v8           #val:I
    :cond_5c
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1753
    .restart local v3       #filtered:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 1754
    const-string v6, ""

    goto :goto_48

    .line 1756
    :cond_6d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v11, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v11

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v11}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1758
    .restart local v6       #result:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 1759
    .local v7, str:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/ui/NumberPicker$InputTextFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v10}, Lcom/android/mms/ui/NumberPicker;->access$1000(Lcom/android/mms/ui/NumberPicker;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_ab
    if-ge v4, v5, :cond_d5

    aget-object v8, v2, v4

    .line 1760
    .local v8, val:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 1761
    .local v9, valLowerCase:Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d2

    .line 1762
    iget-object v10, p0, Lcom/android/mms/ui/NumberPicker$InputTextFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    #calls: Lcom/android/mms/ui/NumberPicker;->postSetSelectionCommand(II)V
    invoke-static {v10, v11, v12}, Lcom/android/mms/ui/NumberPicker;->access$1300(Lcom/android/mms/ui/NumberPicker;II)V

    .line 1763
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    move/from16 v0, p5

    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_48

    .line 1759
    :cond_d2
    add-int/lit8 v4, v4, 0x1

    goto :goto_ab

    .line 1766
    .end local v8           #val:Ljava/lang/String;
    .end local v9           #valLowerCase:Ljava/lang/String;
    :cond_d5
    const-string v6, ""

    goto/16 :goto_48
.end method

.method protected getAcceptedChars()[C
    .registers 2

    .prologue
    .line 1721
    invoke-static {}, Lcom/android/mms/ui/NumberPicker;->access$900()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 1716
    const/4 v0, 0x1

    return v0
.end method
