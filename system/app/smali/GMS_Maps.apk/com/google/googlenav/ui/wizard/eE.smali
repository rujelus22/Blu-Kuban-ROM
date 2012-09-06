.class public Lcom/google/googlenav/ui/wizard/ee;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ee;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 253
    iput p2, p0, Lcom/google/googlenav/ui/wizard/ee;->b:I

    .line 254
    return-void
.end method

.method private e()Ljava/lang/CharSequence;
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ee;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)Ljava/lang/String;

    move-result-object v0

    .line 288
    if-nez v0, :cond_16

    .line 289
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ee;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 290
    const/16 v0, 0x7e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_16
    :goto_16
    return-object v0

    .line 292
    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ee;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v2, v1, v0}, Lcom/google/googlenav/d;->a(IILcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method private f()Z
    .registers 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ee;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method private g()Ljava/lang/String;
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ee;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 304
    if-nez v0, :cond_10

    .line 305
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ee;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 307
    :cond_10
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 273
    new-instance v1, Lcom/google/googlenav/ui/wizard/ef;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/ef;-><init>(Lcom/google/googlenav/ui/wizard/ee;)V

    .line 274
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/ef;->a:Landroid/widget/TextView;

    .line 275
    const v0, 0x7f100047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/ef;->b:Landroid/widget/TextView;

    .line 276
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 281
    move-object v0, p2

    check-cast v0, Lcom/google/googlenav/ui/wizard/ef;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ef;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ee;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    check-cast p2, Lcom/google/googlenav/ui/wizard/ef;

    iget-object v0, p2, Lcom/google/googlenav/ui/wizard/ef;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ee;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 268
    iget v0, p0, Lcom/google/googlenav/ui/wizard/ee;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 263
    const v0, 0x7f0400cb

    return v0
.end method

.method public d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ee;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method
