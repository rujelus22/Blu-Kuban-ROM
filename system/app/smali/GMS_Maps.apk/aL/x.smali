.class public LaL/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, LaL/x;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 49
    new-instance v1, LaL/z;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaL/z;-><init>(LaL/y;)V

    .line 50
    const v0, 0x7f100280

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaL/z;->a(LaL/z;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 51
    const v0, 0x7f100281

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaL/z;->b(LaL/z;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 52
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 42
    check-cast p2, LaL/z;

    .line 43
    invoke-static {p2}, LaL/z;->a(LaL/z;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaL/x;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {p2}, LaL/z;->b(LaL/z;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaL/x;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 62
    const v0, 0x7f0400d1

    return v0
.end method

.method public d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, LaL/x;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method
