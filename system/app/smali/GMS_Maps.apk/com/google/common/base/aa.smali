.class Lcom/google/common/base/aa;
.super Lcom/google/common/base/af;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/base/Z;


# direct methods
.method constructor <init>(Lcom/google/common/base/Z;Lcom/google/common/base/Y;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/common/base/aa;->a:Lcom/google/common/base/Z;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/af;-><init>(Lcom/google/common/base/Y;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method a(I)I
    .registers 4
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/common/base/aa;->a:Lcom/google/common/base/Z;

    iget-object v0, v0, Lcom/google/common/base/Z;->a:Lcom/google/common/base/b;

    iget-object v1, p0, Lcom/google/common/base/aa;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/base/b;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method b(I)I
    .registers 3
    .parameter

    .prologue
    .line 146
    add-int/lit8 v0, p1, 0x1

    return v0
.end method
