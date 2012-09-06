.class final Lcom/google/common/base/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/ag;


# instance fields
.field final synthetic a:Lcom/google/common/base/b;


# direct methods
.method constructor <init>(Lcom/google/common/base/b;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/common/base/Z;->a:Lcom/google/common/base/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/base/Y;Ljava/lang/CharSequence;)Lcom/google/common/base/af;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 140
    new-instance v0, Lcom/google/common/base/aa;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/base/aa;-><init>(Lcom/google/common/base/Z;Lcom/google/common/base/Y;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public synthetic b(Lcom/google/common/base/Y;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Z;->a(Lcom/google/common/base/Y;Ljava/lang/CharSequence;)Lcom/google/common/base/af;

    move-result-object v0

    return-object v0
.end method
