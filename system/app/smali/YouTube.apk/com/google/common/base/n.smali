.class final Lcom/google/common/base/n;
.super Lcom/google/common/base/m;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/common/base/m;


# direct methods
.method constructor <init>(Lcom/google/common/base/m;Lcom/google/common/base/m;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/common/base/n;->b:Lcom/google/common/base/m;

    iput-object p3, p0, Lcom/google/common/base/n;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/common/base/m;-><init>(Lcom/google/common/base/m;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 185
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/google/common/base/n;->a:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/common/base/n;->b:Lcom/google/common/base/m;

    invoke-virtual {v0, p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4
.end method

.method public final b(Ljava/lang/String;)Lcom/google/common/base/m;
    .registers 4
    .parameter

    .prologue
    .line 188
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
