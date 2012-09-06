.class public LaQ/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:Lcom/google/googlenav/ai;

.field private final b:Lah/p;

.field private final c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final d:Lcom/google/googlenav/ui/bw;

.field private final e:Lcom/google/googlenav/ui/wizard/ju;

.field private final f:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILcom/google/googlenav/ui/bw;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ai;Lah/p;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, LaQ/T;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 40
    iput p2, p0, LaQ/T;->f:I

    .line 41
    iput-object p3, p0, LaQ/T;->d:Lcom/google/googlenav/ui/bw;

    .line 42
    iput-object p4, p0, LaQ/T;->e:Lcom/google/googlenav/ui/wizard/ju;

    .line 43
    iput-object p5, p0, LaQ/T;->a:Lcom/google/googlenav/ai;

    .line 44
    iput-object p6, p0, LaQ/T;->b:Lah/p;

    .line 45
    return-void
.end method

.method static synthetic a(LaQ/T;)Lcom/google/googlenav/ai;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, LaQ/T;->a:Lcom/google/googlenav/ai;

    return-object v0
.end method

.method static synthetic b(LaQ/T;)I
    .registers 2
    .parameter

    .prologue
    .line 27
    iget v0, p0, LaQ/T;->f:I

    return v0
.end method

.method static synthetic c(LaQ/T;)Lcom/google/googlenav/ui/wizard/ju;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, LaQ/T;->e:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 3
    .parameter

    .prologue
    .line 54
    new-instance v0, LaQ/bg;

    invoke-direct {v0, p1}, LaQ/bg;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/16 v3, 0xa

    .line 59
    check-cast p2, LaQ/bg;

    .line 62
    iget-object v0, p0, LaQ/T;->d:Lcom/google/googlenav/ui/bw;

    if-eqz v0, :cond_56

    iget-object v0, p0, LaQ/T;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    iget-object v2, p0, LaQ/T;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 64
    new-instance v2, Lcom/google/googlenav/ui/bx;

    iget-object v0, p0, LaQ/T;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/google/googlenav/ui/bn;->bx:I

    invoke-direct {v2, v0, v3}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {p2}, LaQ/bg;->d()Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p0, LaQ/T;->d:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 68
    iget-object v0, p0, LaQ/T;->d:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/googlenav/ui/bx;

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, LaQ/T;->b:Lah/p;

    invoke-virtual {v0, v2, v3}, Lah/s;->a(Ljava/lang/Iterable;Lah/p;)V

    .line 73
    :cond_56
    invoke-virtual {p2}, LaQ/bg;->b()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, LaQ/T;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/aV;->aU:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const/4 v2, 0x0

    move v0, v1

    .line 79
    :goto_6c
    iget-object v1, p0, LaQ/T;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-ge v0, v1, :cond_98

    .line 80
    iget-object v1, p0, LaQ/T;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_95

    move-object v0, v1

    .line 86
    :goto_81
    invoke-virtual {p2}, LaQ/bg;->c()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p2}, LaQ/bg;->a()Landroid/view/View;

    move-result-object v0

    new-instance v1, LaQ/U;

    invoke-direct {v1, p0}, LaQ/U;-><init>(LaQ/T;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void

    .line 79
    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    :cond_98
    move-object v0, v2

    goto :goto_81
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 49
    const v0, 0x7f04014e

    return v0
.end method
