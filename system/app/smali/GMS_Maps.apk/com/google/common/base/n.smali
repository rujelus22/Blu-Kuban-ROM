.class final Lcom/google/common/base/n;
.super Lcom/google/common/base/b;
.source "SourceFile"


# instance fields
.field final synthetic p:C


# direct methods
.method constructor <init>(C)V
    .registers 2
    .parameter

    .prologue
    .line 392
    iput-char p1, p0, Lcom/google/common/base/n;->p:C

    invoke-direct {p0}, Lcom/google/common/base/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/base/b;
    .registers 1

    .prologue
    .line 418
    return-object p0
.end method

.method public a(Lcom/google/common/base/b;)Lcom/google/common/base/b;
    .registers 3
    .parameter

    .prologue
    .line 406
    iget-char v0, p0, Lcom/google/common/base/n;->p:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/b;->b(C)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-object p1

    :cond_9
    invoke-super {p0, p1}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object p1

    goto :goto_8
.end method

.method a(Lcom/google/common/base/o;)V
    .registers 3
    .parameter

    .prologue
    .line 414
    iget-char v0, p0, Lcom/google/common/base/n;->p:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/o;->a(C)V

    .line 415
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 392
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/b;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public b(C)Z
    .registers 3
    .parameter

    .prologue
    .line 394
    iget-char v0, p0, Lcom/google/common/base/n;->p:C

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
