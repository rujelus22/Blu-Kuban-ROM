.class public Lcom/google/googlenav/ui/bH;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)I
    .registers 2
    .parameter

    .prologue
    .line 86
    if-nez p0, :cond_6

    .line 87
    const v0, 0x7f020374

    .line 89
    :goto_5
    return v0

    :cond_6
    const v0, 0x7f020375

    goto :goto_5
.end method

.method public static a(Landroid/view/View;)Lcom/google/googlenav/ui/bI;
    .registers 3
    .parameter

    .prologue
    .line 136
    new-instance v1, Lcom/google/googlenav/ui/bI;

    invoke-direct {v1}, Lcom/google/googlenav/ui/bI;-><init>()V

    .line 137
    const v0, 0x7f1004ae

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/bI;->a:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f100349

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/bI;->b:Landroid/widget/TextView;

    .line 139
    return-object v1
.end method

.method public static a(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    const v1, 0x7f0f0106

    .line 48
    if-nez p0, :cond_10

    .line 50
    const/16 v0, 0x484

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 58
    :goto_f
    return-object v0

    .line 55
    :cond_10
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 56
    invoke-static {p0, v0}, Lcom/google/googlenav/ui/bH;->a(ILandroid/text/SpannableStringBuilder;)V

    .line 58
    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_f
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 153
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 155
    invoke-static {p0, v0}, Lcom/google/googlenav/ui/bH;->a(ILandroid/text/SpannableStringBuilder;)V

    .line 157
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 158
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_19

    .line 159
    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 161
    :cond_19
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 164
    :cond_1c
    const v1, 0x7f0f0106

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 39
    if-eqz p1, :cond_a

    const/4 v0, 0x0

    .line 41
    :goto_3
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_9
    return-object v0

    .line 39
    :cond_a
    const-string v0, "\u2013"

    goto :goto_3

    :cond_d
    move-object v0, p0

    .line 41
    goto :goto_9
.end method

.method public static a(ZILjava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 67
    if-eqz p0, :cond_17

    .line 68
    const/16 v1, 0x486

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f0105

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 73
    :cond_17
    invoke-static {p1, p2}, Lcom/google/googlenav/ui/bH;->a(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_34

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_34

    .line 76
    if-eqz p0, :cond_31

    .line 77
    const-string v2, " \u00b7 "

    const v3, 0x7f0f0106

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 80
    :cond_31
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 82
    :cond_34
    return-object v0
.end method

.method public static a(ZILjava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 97
    if-eqz p0, :cond_17

    .line 98
    invoke-static {p3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 99
    const v0, 0x7f0f009b

    invoke-static {p3, v0}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 106
    :cond_16
    :goto_16
    return-object v1

    .line 105
    :cond_17
    const/4 v0, 0x1

    if-gt p1, v0, :cond_26

    :goto_1a
    invoke-static {p4, p3}, Lcom/google/googlenav/ui/bH;->a(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_28

    :goto_24
    move-object v1, v0

    goto :goto_16

    .line 105
    :cond_26
    const/4 p4, 0x0

    goto :goto_1a

    :cond_28
    move-object v0, v1

    .line 106
    goto :goto_24
.end method

.method private static a(ILandroid/text/SpannableStringBuilder;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 169
    if-lez p0, :cond_e

    .line 170
    if-ne p0, v1, :cond_f

    .line 171
    const/16 v0, 0x482

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 178
    :cond_e
    :goto_e
    return-void

    .line 173
    :cond_f
    const/16 v0, 0x481

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_e
.end method

.method public static a(Lcom/google/googlenav/ui/bI;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/googlenav/ui/bI;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 122
    iget-object v1, p0, Lcom/google/googlenav/ui/bI;->a:Landroid/widget/TextView;

    if-eqz p4, :cond_22

    const/4 v0, 0x2

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 123
    iget-object v0, p0, Lcom/google/googlenav/ui/bI;->a:Landroid/widget/TextView;

    invoke-static {v0, p3}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 125
    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/bI;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_21

    .line 126
    if-eqz p1, :cond_24

    .line 127
    iget-object v0, p0, Lcom/google/googlenav/ui/bI;->b:Landroid/widget/TextView;

    invoke-static {v0, p1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/google/googlenav/ui/bI;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 133
    :cond_21
    :goto_21
    return-void

    .line 122
    :cond_22
    const/4 v0, 0x1

    goto :goto_9

    .line 130
    :cond_24
    iget-object v0, p0, Lcom/google/googlenav/ui/bI;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_21
.end method
