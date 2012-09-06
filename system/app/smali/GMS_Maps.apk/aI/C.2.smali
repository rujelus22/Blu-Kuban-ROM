.class LaI/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Q;


# instance fields
.field final synthetic a:I

.field final synthetic b:LaI/z;


# direct methods
.method constructor <init>(LaI/z;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, LaI/C;->b:LaI/z;

    iput p2, p0, LaI/C;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LaI/w;)Z
    .registers 4
    .parameter

    .prologue
    .line 168
    invoke-virtual {p1}, LaI/w;->e()I

    move-result v0

    iget v1, p0, LaI/C;->a:I

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 165
    check-cast p1, LaI/w;

    invoke-virtual {p0, p1}, LaI/C;->a(LaI/w;)Z

    move-result v0

    return v0
.end method
