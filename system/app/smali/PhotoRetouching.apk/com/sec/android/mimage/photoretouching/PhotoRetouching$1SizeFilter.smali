.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1SizeFilter;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SizeFilter"
.end annotation


# instance fields
.field private final FULL_WIDTH_INVALID_CHAR:[Ljava/lang/String;

.field private mMax:I

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V
    .registers 6
    .parameter
    .parameter "max"

    .prologue
    .line 2619
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1SizeFilter;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2614
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2615
    const-string v2, "65306"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "65290"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "65311"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "65308"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "65310"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "65307"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1SizeFilter;->FULL_WIDTH_INVALID_CHAR:[Ljava/lang/String;

    .line 2620
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1SizeFilter;->mMax:I

    .line 2621
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 12
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 2624
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1SizeFilter;->mMax:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 2626
    .local v1, keep:I
    if-gtz v1, :cond_10

    .line 2628
    const-string v2, ""

    .line 2641
    :goto_f
    return-object v2

    .line 2629
    :cond_10
    sub-int v2, p3, p2

    if-lt v1, v2, :cond_4b

    .line 2630
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_24

    .line 2631
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1SizeFilter;->FULL_WIDTH_INVALID_CHAR:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_26

    .line 2638
    .end local v0           #i:I
    :cond_24
    const/4 v2, 0x0

    goto :goto_f

    .line 2632
    .restart local v0       #i:I
    :cond_26
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1SizeFilter;->FULL_WIDTH_INVALID_CHAR:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2633
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1SizeFilter;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v3, 0x7f060043

    #calls: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$27(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2634
    const-string v2, ""

    goto :goto_f

    .line 2631
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2641
    .end local v0           #i:I
    :cond_4b
    add-int v2, p2, v1

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_f
.end method
