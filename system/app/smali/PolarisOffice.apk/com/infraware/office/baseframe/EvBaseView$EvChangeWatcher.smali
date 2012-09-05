.class Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;
.super Ljava/lang/Object;
.source "EvBaseView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvChangeWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseView;


# direct methods
.method private constructor <init>(Lcom/infraware/office/baseframe/EvBaseView;)V
    .registers 2
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/infraware/office/baseframe/EvBaseView;Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;-><init>(Lcom/infraware/office/baseframe/EvBaseView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "buffer"

    .prologue
    .line 701
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 32
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 616
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v2

    .line 617
    .local v2, evInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static/range {p1 .. p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v26

    .line 618
    .local v26, t:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget-boolean v3, v3, Lcom/infraware/office/baseframe/EvBaseView;->mbRemoveBColor:Z

    if-eqz v3, :cond_4d

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/infraware/office/baseframe/EvBaseView;->mbRemoveBColor:Z

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget v3, v3, Lcom/infraware/office/baseframe/EvBaseView;->mRemoveBColorE:I

    add-int/lit8 v13, v3, -0x1

    .line 622
    .local v13, tt:I
    if-gtz v26, :cond_23

    if-lez v13, :cond_24

    .line 623
    :cond_23
    const/4 v13, -0x1

    .line 625
    :cond_24
    if-nez v26, :cond_35

    if-nez v13, :cond_35

    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_35

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/infraware/office/baseframe/EvBaseView;->mbDeletedFirstPos:Z

    .line 629
    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget v3, v3, Lcom/infraware/office/baseframe/EvBaseView;->mRemoveBColorS:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget v4, v4, Lcom/infraware/office/baseframe/EvBaseView;->mRemoveBColorE:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/infraware/office/evengine/EvInterface;->ISetCompBackColor(IIIIJJIII)V

    .line 651
    .end local v13           #tt:I
    :cond_4c
    :goto_4c
    return-void

    .line 633
    :cond_4d
    if-lez v26, :cond_74

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget-boolean v3, v3, Lcom/infraware/office/baseframe/EvBaseView;->mbDeletedFirstPos:Z

    if-eqz v3, :cond_74

    .line 636
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/infraware/office/baseframe/EvBaseView;->mbDeletedFirstPos:Z

    .line 637
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, -0x1

    const-wide/16 v21, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    move-object v14, v2

    invoke-virtual/range {v14 .. v25}, Lcom/infraware/office/evengine/EvInterface;->ISetCompBackColor(IIIIJJIII)V

    goto :goto_4c

    .line 641
    :cond_74
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget-boolean v3, v3, Lcom/infraware/office/baseframe/EvBaseView;->mbDeletedFirstPos:Z

    if-nez v3, :cond_4c

    .line 642
    if-nez v26, :cond_a0

    if-nez p2, :cond_a0

    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_a0

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_a0

    .line 643
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, -0x1

    const-wide/16 v21, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v14, v2

    invoke-virtual/range {v14 .. v25}, Lcom/infraware/office/evengine/EvInterface;->ISetCompBackColor(IIIIJJIII)V

    goto :goto_4c

    .line 645
    :cond_a0
    const/4 v3, 0x1

    move/from16 v0, v26

    if-ne v0, v3, :cond_4c

    if-nez p2, :cond_4c

    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_4c

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_4c

    .line 646
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, -0x1

    const-wide/16 v21, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    move-object v14, v2

    invoke-virtual/range {v14 .. v25}, Lcom/infraware/office/evengine/EvInterface;->ISetCompBackColor(IIIIJJIII)V

    goto :goto_4c
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 5
    .parameter "buf"
    .parameter "what"
    .parameter "s"
    .parameter "e"

    .prologue
    .line 713
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 10
    .parameter "buf"
    .parameter "what"
    .parameter "s"
    .parameter "e"
    .parameter "st"
    .parameter "en"

    .prologue
    .line 705
    const-string v0, "EvBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSpanChanged s="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 706
    const-string v2, " st="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " en="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 705
    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 8
    .parameter "buf"
    .parameter "what"
    .parameter "s"
    .parameter "e"

    .prologue
    .line 719
    instance-of v0, p2, Landroid/text/style/BackgroundColorSpan;

    if-eqz v0, :cond_3f

    .line 720
    const-string v0, "EvBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove bspan start="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p2, Landroid/text/style/BackgroundColorSpan;

    .end local p2
    invoke-virtual {p2}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/infraware/office/baseframe/EvBaseView;->mbRemoveBColor:Z

    .line 722
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iput p3, v0, Lcom/infraware/office/baseframe/EvBaseView;->mRemoveBColorS:I

    .line 723
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iput p4, v0, Lcom/infraware/office/baseframe/EvBaseView;->mRemoveBColorE:I

    .line 725
    :cond_3f
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 25
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 655
    const-string v2, "EvBaseView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onTextChanged start="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 656
    const-string v4, " before="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " after="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/infraware/office/util/EvUtil;->stringToHexa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 655
    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_8d

    move-object/from16 v16, p1

    .line 659
    check-cast v16, Landroid/text/Spannable;

    .line 660
    .local v16, sp:Landroid/text/Spannable;
    const/4 v2, 0x0

    invoke-interface/range {v16 .. v16}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/text/style/BackgroundColorSpan;

    .line 661
    .local v13, bspans:[Landroid/text/style/BackgroundColorSpan;
    array-length v14, v13

    .line 662
    .local v14, count:I
    new-array v0, v14, [I

    move-object/from16 v19, v0

    .line 663
    .local v19, vs:[I
    new-array v0, v14, [I

    move-object/from16 v18, v0

    .line 664
    .local v18, ve:[I
    new-array v0, v14, [I

    move-object/from16 v17, v0

    .line 665
    .local v17, vc:[I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_67
    if-lt v15, v14, :cond_ea

    .line 672
    invoke-static/range {v16 .. v16}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v12

    .line 673
    .local v12, t:I
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v1

    .line 674
    .local v1, evInterface:Lcom/infraware/office/evengine/EvInterface;
    const/4 v2, 0x2

    if-ne v14, v2, :cond_13c

    .line 675
    const/4 v2, 0x0

    aget v2, v19, v2

    const/4 v3, 0x0

    aget v3, v18, v3

    const/4 v4, 0x1

    aget v4, v19, v4

    const/4 v5, 0x1

    aget v5, v18, v5

    const/4 v6, 0x0

    aget v6, v17, v6

    int-to-long v6, v6

    const/4 v8, 0x1

    aget v8, v17, v8

    int-to-long v8, v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/infraware/office/evengine/EvInterface;->ISetCompBackColor(IIIIJJIII)V

    .line 680
    .end local v1           #evInterface:Lcom/infraware/office/evengine/EvInterface;
    .end local v12           #t:I
    .end local v13           #bspans:[Landroid/text/style/BackgroundColorSpan;
    .end local v14           #count:I
    .end local v15           #i:I
    .end local v16           #sp:Landroid/text/Spannable;
    .end local v17           #vc:[I
    .end local v18           #ve:[I
    .end local v19           #vs:[I
    :cond_8d
    :goto_8d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseView;->mbForceClear:Z

    if-eqz v2, :cond_a4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseView;->mbEditableClear:Z

    if-nez v2, :cond_a4

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/infraware/office/baseframe/EvBaseView;->mbComposing:Z

    .line 683
    :cond_a4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseView;->mbEditableClear:Z

    if-nez v2, :cond_154

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget-object v2, v2, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v2, :cond_cb

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget-object v2, v2, Lcom/infraware/office/baseframe/EvBaseView;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget-boolean v3, v3, Lcom/infraware/office/baseframe/EvBaseView;->mbComposing:Z

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->onTextChanged(ZLjava/lang/CharSequence;III)V

    .line 687
    :cond_cb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseView;->mbComposing:Z

    if-nez v2, :cond_e9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    iget-boolean v2, v2, Lcom/infraware/office/baseframe/EvBaseView;->mbForceClear:Z

    if-nez v2, :cond_e9

    .line 688
    const-string v2, "EvBaseView"

    const-string v3, "mEditable clear"

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseView;->clearEditable()V

    .line 696
    :cond_e9
    :goto_e9
    return-void

    .line 666
    .restart local v13       #bspans:[Landroid/text/style/BackgroundColorSpan;
    .restart local v14       #count:I
    .restart local v15       #i:I
    .restart local v16       #sp:Landroid/text/Spannable;
    .restart local v17       #vc:[I
    .restart local v18       #ve:[I
    .restart local v19       #vs:[I
    :cond_ea
    aget-object v2, v13, v15

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aput v2, v19, v15

    .line 667
    aget-object v2, v13, v15

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    aput v2, v18, v15

    .line 668
    aget-object v2, v13, v15

    invoke-virtual {v2}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v2

    aput v2, v17, v15

    .line 669
    const-string v2, "EvBaseView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "add bspan start="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, v19, v15

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v18, v15

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v13, v15

    invoke-virtual {v4}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_67

    .line 676
    .restart local v1       #evInterface:Lcom/infraware/office/evengine/EvInterface;
    .restart local v12       #t:I
    :cond_13c
    const/4 v2, 0x1

    if-ne v14, v2, :cond_8d

    .line 677
    const/4 v2, 0x0

    aget v2, v19, v2

    const/4 v3, 0x0

    aget v3, v18, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v17, v6

    int-to-long v6, v6

    const-wide/16 v8, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/infraware/office/evengine/EvInterface;->ISetCompBackColor(IIIIJJIII)V

    goto/16 :goto_8d

    .line 693
    .end local v1           #evInterface:Lcom/infraware/office/evengine/EvInterface;
    .end local v12           #t:I
    .end local v13           #bspans:[Landroid/text/style/BackgroundColorSpan;
    .end local v14           #count:I
    .end local v15           #i:I
    .end local v16           #sp:Landroid/text/Spannable;
    .end local v17           #vc:[I
    .end local v18           #ve:[I
    .end local v19           #vs:[I
    :cond_154
    const-string v2, "EvBaseView"

    const-string v3, "mEditable clear re"

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/infraware/office/baseframe/EvBaseView$EvChangeWatcher;->this$0:Lcom/infraware/office/baseframe/EvBaseView;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/infraware/office/baseframe/EvBaseView;->mbEditableClear:Z

    goto :goto_e9
.end method
