.class Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberPickerInputFilter;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberPickerInputFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberPickerInputFilter;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;Lcom/sec/android/app/clockpackage/alarm/NumberPicker$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberPickerInputFilter;-><init>(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 23
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberPickerInputFilter;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->access$1000(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberPickerInputFilter;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->access$1100(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)Landroid/text/InputFilter;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 553
    :cond_22
    :goto_22
    return-object v10

    .line 541
    :cond_23
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 543
    .local v10, filtered:Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v3, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v3

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1, v3}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 544
    .local v13, result:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 546
    .local v14, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/clockpackage/alarm/NumberPicker$NumberPickerInputFilter;->this$0:Lcom/sec/android/app/clockpackage/alarm/NumberPicker;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/NumberPicker;->access$1000(Lcom/sec/android/app/clockpackage/alarm/NumberPicker;)[Ljava/lang/String;

    move-result-object v9

    .local v9, arr$:[Ljava/lang/String;
    array-length v12, v9

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_6b
    if-ge v11, v12, :cond_7c

    aget-object v15, v9, v11

    .line 547
    .local v15, val:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 548
    invoke-virtual {v15, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 546
    add-int/lit8 v11, v11, 0x1

    goto :goto_6b

    .line 553
    .end local v15           #val:Ljava/lang/String;
    :cond_7c
    const-string v10, ""

    goto :goto_22
.end method
