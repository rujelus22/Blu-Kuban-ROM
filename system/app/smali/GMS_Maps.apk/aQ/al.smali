.class public LaQ/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private final a:I

.field private final b:Lcom/google/googlenav/ai;

.field private final c:Z


# direct methods
.method public constructor <init>(ILcom/google/googlenav/ai;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, LaQ/al;->a:I

    .line 47
    iput-object p2, p0, LaQ/al;->b:Lcom/google/googlenav/ai;

    .line 48
    iput-boolean p3, p0, LaQ/al;->c:Z

    .line 49
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Landroid/widget/TextView;Lcom/google/googlenav/ui/g;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 80
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 83
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 85
    sget-object v1, Lcom/google/googlenav/ui/aV;->aY:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 90
    :cond_1a
    invoke-virtual {p1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    move-object v0, v1

    .line 98
    :cond_2d
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 99
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_72

    sget-object v2, Lcom/google/googlenav/ui/aV;->aY:Lcom/google/googlenav/ui/aV;

    .line 101
    :goto_3b
    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 105
    :cond_42
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 107
    sget-object v2, Lcom/google/googlenav/ui/aV;->aY:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 110
    :cond_56
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_71

    .line 112
    invoke-static {p2, v3}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 117
    new-instance v0, LaQ/am;

    invoke-direct {v0, p0, p3, v1}, LaQ/am;-><init>(LaQ/al;Lcom/google/googlenav/ui/g;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_71
    return-void

    .line 99
    :cond_72
    sget-object v2, Lcom/google/googlenav/ui/aV;->aV:Lcom/google/googlenav/ui/aV;

    goto :goto_3b
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 5
    .parameter

    .prologue
    .line 130
    iget-boolean v0, p0, LaQ/al;->c:Z

    if-eqz v0, :cond_7

    .line 131
    invoke-static {p1}, LaM/aR;->a(Landroid/view/View;)V

    .line 133
    :cond_7
    new-instance v1, LaQ/an;

    invoke-direct {v1}, LaQ/an;-><init>()V

    .line 134
    const v0, 0x7f100356

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, LaQ/an;->a:Landroid/view/View;

    .line 135
    iget-object v0, v1, LaQ/an;->a:Landroid/view/View;

    const v2, 0x7f100357

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/an;->b:Landroid/widget/TextView;

    .line 136
    iget-object v0, v1, LaQ/an;->a:Landroid/view/View;

    const v2, 0x7f100358

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/an;->c:Landroid/widget/TextView;

    .line 137
    iget-object v0, v1, LaQ/an;->a:Landroid/view/View;

    const v2, 0x7f100359

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/an;->d:Landroid/widget/TextView;

    .line 138
    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, LaQ/al;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->U()Ljava/util/List;

    move-result-object v2

    .line 56
    check-cast p2, LaQ/an;

    .line 57
    const/4 v0, 0x3

    new-array v3, v0, [Landroid/widget/TextView;

    iget-object v0, p2, LaQ/an;->b:Landroid/widget/TextView;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    iget-object v4, p2, LaQ/an;->c:Landroid/widget/TextView;

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p2, LaQ/an;->d:Landroid/widget/TextView;

    aput-object v4, v3, v0

    move v0, v1

    .line 58
    :goto_1d
    array-length v4, v3

    if-ge v0, v4, :cond_28

    .line 59
    aget-object v4, v3, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 61
    :cond_28
    if-eqz v2, :cond_30

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 62
    :cond_30
    iget-object v0, p2, LaQ/an;->a:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :goto_35
    return-void

    .line 66
    :cond_36
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 67
    aget-object v5, v3, v2

    invoke-direct {p0, v0, v5, p1}, LaQ/al;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Landroid/widget/TextView;Lcom/google/googlenav/ui/g;)V

    .line 68
    add-int/lit8 v0, v2, 0x1

    .line 69
    array-length v2, v3

    if-lt v0, v2, :cond_57

    .line 73
    :cond_51
    iget-object v0, p2, LaQ/an;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_35

    :cond_57
    move v2, v0

    .line 70
    goto :goto_3b
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, LaQ/al;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 148
    const v0, 0x7f040146

    return v0
.end method
