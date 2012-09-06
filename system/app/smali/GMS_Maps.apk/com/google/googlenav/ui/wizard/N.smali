.class Lcom/google/googlenav/ui/wizard/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/n;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 310
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 329
    new-instance v1, Lcom/google/googlenav/ui/wizard/o;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/wizard/o;-><init>(Lcom/google/googlenav/ui/wizard/n;Lcom/google/googlenav/ui/wizard/f;)V

    .line 330
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/o;->a:Landroid/widget/TextView;

    .line 331
    const v0, 0x1020015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/o;->b:Landroid/widget/TextView;

    .line 332
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 337
    check-cast p2, Lcom/google/googlenav/ui/wizard/o;

    .line 338
    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/o;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/n;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/o;->b:Landroid/widget/TextView;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/n;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v1, v2}, Lcom/google/googlenav/d;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 314
    const v0, 0x1090004

    return v0
.end method

.method public d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/n;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method
