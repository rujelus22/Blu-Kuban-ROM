.class public Ljunit/framework/ComparisonFailure;
.super Ljunit/framework/AssertionFailedError;
.source "ComparisonFailure.java"


# instance fields
.field private fActual:Ljava/lang/String;

.field private fExpected:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljunit/framework/AssertionFailedError;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 10

    .prologue
    .line 31
    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    if-nez v6, :cond_15

    .line 32
    :cond_8
    invoke-super {p0}, Ljunit/framework/AssertionFailedError;->getMessage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    iget-object v8, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Ljunit/framework/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 66
    :goto_14
    return-object v6

    .line 34
    :cond_15
    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 36
    .local v1, end:I
    const/4 v3, 0x0

    .line 37
    .local v3, i:I
    :goto_26
    if-ge v3, v1, :cond_36

    .line 38
    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_69

    .line 41
    :cond_36
    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 42
    .local v4, j:I
    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .line 43
    .local v5, k:I
    :goto_46
    if-lt v5, v3, :cond_58

    if-lt v4, v3, :cond_58

    .line 44
    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v7, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_6c

    .line 50
    :cond_58
    if-ge v4, v3, :cond_71

    if-ge v5, v3, :cond_71

    .line 51
    iget-object v2, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    .line 52
    .local v2, expected:Ljava/lang/String;
    iget-object v0, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    .line 66
    .local v0, actual:Ljava/lang/String;
    :cond_60
    :goto_60
    invoke-super {p0}, Ljunit/framework/AssertionFailedError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2, v0}, Ljunit/framework/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_14

    .line 37
    .end local v0           #actual:Ljava/lang/String;
    .end local v2           #expected:Ljava/lang/String;
    .end local v4           #j:I
    .end local v5           #k:I
    :cond_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 43
    .restart local v4       #j:I
    .restart local v5       #k:I
    :cond_6c
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_46

    .line 54
    :cond_71
    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 55
    .restart local v2       #expected:Ljava/lang/String;
    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 56
    .restart local v0       #actual:Ljava/lang/String;
    if-gt v3, v1, :cond_ab

    if-lez v3, :cond_ab

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_ab
    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fExpected:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_c8

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    :cond_c8
    iget-object v6, p0, Ljunit/framework/ComparisonFailure;->fActual:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_60

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_60
.end method
