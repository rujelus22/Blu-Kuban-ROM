.class Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1$1;
.super Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;
.source "FIFEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1;->iterator(Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;Ljava/lang/CharSequence;)Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1;Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1$1;->this$0:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1;

    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;-><init>(Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public separatorEnd(I)I
    .registers 3
    .parameter "separatorPosition"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1$1;->this$0:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1;->val$separator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public separatorStart(I)I
    .registers 8
    .parameter "start"

    .prologue
    .line 446
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1$1;->this$0:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1;

    iget-object v4, v4, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1;->val$separator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 449
    .local v0, delimeterLength:I
    move v3, p1

    .local v3, p:I
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v0

    .line 450
    .local v2, last:I
    :goto_11
    if-gt v3, v2, :cond_2e

    .line 452
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v0, :cond_2f

    .line 453
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    add-int v5, v1, v3

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1$1;->this$0:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1;

    iget-object v5, v5, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$1;->val$separator:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2b

    .line 451
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 452
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 459
    .end local v1           #i:I
    :cond_2e
    const/4 v3, -0x1

    .end local v3           #p:I
    :cond_2f
    return v3
.end method
