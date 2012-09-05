.class Lcom/google/common/base/q;
.super Lcom/google/common/base/p;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/common/base/p;


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/google/common/base/q;->a:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/common/base/q;->b:Lcom/google/common/base/p;

    invoke-virtual {v0, p1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4
.end method
