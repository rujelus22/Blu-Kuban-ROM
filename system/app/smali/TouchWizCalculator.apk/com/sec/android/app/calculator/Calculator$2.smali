.class Lcom/sec/android/app/calculator/Calculator$2;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/calculator/Calculator;->initControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/calculator/Calculator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/calculator/Calculator;)V
    .registers 2
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/sec/android/app/calculator/Calculator$2;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 17
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 510
    const/4 v1, 0x0

    .line 511
    .local v1, doFilterOut:Z
    const/4 v3, 0x0

    .line 513
    .local v3, isResultValueString:Z
    move v2, p2

    .local v2, i:I
    :goto_3
    if-ge v2, p3, :cond_f

    .line 514
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x3d

    if-ne v7, v8, :cond_69

    .line 515
    const/4 v3, 0x1

    .line 516
    move p3, v2

    .line 521
    :cond_f
    if-nez v3, :cond_2e

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/calculator/Calculator$2;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-virtual {v8}, Lcom/sec/android/app/calculator/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 522
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 523
    .restart local p1
    const/4 v3, 0x1

    .line 526
    :cond_2e
    if-nez v3, :cond_3e

    .line 527
    move v2, p2

    :goto_31
    if-ge v2, p3, :cond_3e

    .line 528
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 529
    const/4 v1, 0x1

    .line 535
    :cond_3e
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eqz v7, :cond_76

    .line 536
    if-eqz v1, :cond_7c

    .line 537
    sub-int v5, p3, p2

    .line 538
    .local v5, len:I
    new-array v6, v5, [C

    .line 540
    .local v6, v:[C
    const/4 v7, 0x0

    invoke-static {p1, p2, p3, v6, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 541
    const/4 v4, 0x0

    .local v4, j:I
    :goto_4f
    if-ge v4, v5, :cond_6f

    .line 542
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 543
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 544
    add-int/lit8 v7, v4, 0x1

    sub-int v8, v5, v4

    add-int/lit8 v8, v8, -0x1

    invoke-static {v6, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    add-int/lit8 v5, v5, -0x1

    .line 541
    :cond_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 513
    .end local v0           #c:C
    .end local v4           #j:I
    .end local v5           #len:I
    .end local v6           #v:[C
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 527
    :cond_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 557
    .restart local v4       #j:I
    .restart local v5       #len:I
    .restart local v6       #v:[C
    :cond_6f
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8, v5}, Ljava/lang/String;-><init>([CII)V

    .line 562
    .end local v4           #j:I
    .end local v5           #len:I
    .end local v6           #v:[C
    :goto_75
    return-object v7

    .line 560
    :cond_76
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    goto :goto_75

    .line 562
    :cond_7c
    const/4 v7, 0x0

    goto :goto_75
.end method
