.class Lcom/google/common/base/H;
.super Lcom/google/common/base/G;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/common/base/G;


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 185
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/google/common/base/H;->a:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/common/base/H;->b:Lcom/google/common/base/G;

    invoke-virtual {v0, p1}, Lcom/google/common/base/G;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4
.end method
