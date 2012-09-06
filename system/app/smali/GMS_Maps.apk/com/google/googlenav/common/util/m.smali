.class Lcom/google/googlenav/common/util/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/googlenav/common/util/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/common/util/l;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/googlenav/common/util/m;->a:Lcom/google/googlenav/common/util/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/common/util/l;Lcom/google/googlenav/common/util/l;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 129
    iget v0, p2, Lcom/google/googlenav/common/util/l;->b:I

    iget v1, p1, Lcom/google/googlenav/common/util/l;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 126
    check-cast p1, Lcom/google/googlenav/common/util/l;

    check-cast p2, Lcom/google/googlenav/common/util/l;

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/common/util/m;->a(Lcom/google/googlenav/common/util/l;Lcom/google/googlenav/common/util/l;)I

    move-result v0

    return v0
.end method
