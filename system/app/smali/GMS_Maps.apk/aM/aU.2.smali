.class public LaM/aU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LaM/aT;


# direct methods
.method public constructor <init>(LaM/aT;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, LaM/aU;->a:LaM/aT;

    .line 43
    return-void
.end method

.method static synthetic a(LaM/aU;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, LaM/aU;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/view/android/L;Lcom/google/googlenav/aW;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 142
    const/16 v0, 0x543

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p0, v0, v4, v4}, LaM/aU;->a(Ljava/lang/CharSequence;II)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/view/android/L;Lcom/google/googlenav/ai;ILjava/lang/String;)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0f0074

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p2}, Lcom/google/googlenav/ai;->ab()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 184
    :goto_b
    return v0

    .line 162
    :cond_c
    invoke-virtual {p2}, Lcom/google/googlenav/ai;->G()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 166
    invoke-virtual {p2}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 183
    :goto_1e
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, p3}, LaM/aU;->a(Ljava/lang/CharSequence;II)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    move v0, v2

    .line 184
    goto :goto_b

    .line 168
    :cond_29
    invoke-static {p4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 169
    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bn;->a(Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_1e

    .line 171
    :cond_34
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 172
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 173
    const/16 v5, 0x438

    invoke-static {v5}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p4, v6, v0

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/aV;->aw:Lcom/google/googlenav/ui/aV;

    sget-object v5, Lcom/google/googlenav/ui/aV;->ax:Lcom/google/googlenav/ui/aV;

    invoke-static {v4, v0, v3, v5}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V

    .line 177
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    .line 178
    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    goto :goto_5a

    :cond_6a
    move-object v0, v1

    .line 180
    goto :goto_1e
.end method

.method static synthetic b(LaM/aU;)LaM/aT;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, LaM/aU;->a:LaM/aT;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, LaM/aU;->a:LaM/aT;

    invoke-virtual {v0}, LaM/aT;->e()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_24

    .line 77
    iget-object v0, p0, LaM/aU;->a:LaM/aT;

    invoke-virtual {v0}, LaM/aT;->bg()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0xec

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_1c
    return-object v0

    .line 77
    :cond_1d
    const/16 v0, 0xeb

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 81
    :cond_24
    const/4 v0, 0x0

    goto :goto_1c
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;
    .registers 11
    .parameter

    .prologue
    const/16 v8, 0x65

    const/4 v7, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 86
    new-instance v4, Lcom/google/googlenav/ui/view/android/L;

    invoke-direct {v4, p1, v3}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;I)V

    .line 88
    iget-object v1, p0, LaM/aU;->a:LaM/aT;

    invoke-virtual {v1}, LaM/aT;->f()Lcom/google/googlenav/aW;

    move-result-object v5

    .line 89
    iget-object v1, p0, LaM/aU;->a:LaM/aT;

    invoke-virtual {v1}, LaM/aT;->f()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->v()Z

    move-result v1

    if-nez v1, :cond_59

    .line 91
    invoke-virtual {v5}, Lcom/google/googlenav/aW;->E()Ljava/lang/String;

    move-result-object v6

    .line 92
    iget-object v1, p0, LaM/aU;->a:LaM/aT;

    invoke-virtual {v1}, LaM/aT;->b()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 93
    invoke-virtual {v5}, Lcom/google/googlenav/aW;->I()[Lcom/google/googlenav/ai;

    move-result-object v1

    .line 94
    :goto_2c
    array-length v2, v1

    if-ge v0, v2, :cond_58

    .line 95
    aget-object v2, v1, v0

    invoke-direct {p0, v4, v2, v0, v6}, LaM/aU;->a(Lcom/google/googlenav/ui/view/android/L;Lcom/google/googlenav/ai;ILjava/lang/String;)Z

    move-result v2

    .line 97
    if-eqz v2, :cond_37

    .line 94
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_3a
    move v1, v0

    move v2, v0

    .line 102
    :goto_3c
    invoke-virtual {v5}, Lcom/google/googlenav/aW;->f()I

    move-result v0

    if-ge v1, v0, :cond_53

    .line 103
    invoke-virtual {v5, v1}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    invoke-direct {p0, v4, v0, v1, v6}, LaM/aU;->a(Lcom/google/googlenav/ui/view/android/L;Lcom/google/googlenav/ai;ILjava/lang/String;)Z

    move-result v0

    .line 105
    if-eqz v0, :cond_4f

    move v2, v3

    .line 102
    :cond_4f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3c

    .line 109
    :cond_53
    if-nez v2, :cond_58

    .line 110
    invoke-direct {p0, v4, v5}, LaM/aU;->a(Lcom/google/googlenav/ui/view/android/L;Lcom/google/googlenav/aW;)V

    .line 138
    :cond_58
    :goto_58
    return-object v4

    .line 114
    :cond_59
    invoke-virtual {v5}, Lcom/google/googlenav/aW;->f()I

    move-result v1

    if-nez v1, :cond_62

    .line 115
    invoke-direct {p0, v4, v5}, LaM/aU;->a(Lcom/google/googlenav/ui/view/android/L;Lcom/google/googlenav/aW;)V

    .line 118
    :cond_62
    invoke-virtual {v5}, Lcom/google/googlenav/aW;->G()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v7}, LaM/aU;->a(Ljava/lang/CharSequence;II)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v1

    .line 120
    invoke-virtual {v4, v1}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v5}, Lcom/google/googlenav/aW;->f()I

    move-result v1

    if-ne v1, v3, :cond_93

    .line 124
    const/16 v1, 0x544

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8, v7}, LaM/aU;->a(Ljava/lang/CharSequence;II)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    .line 128
    invoke-virtual {v4, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_58

    .line 129
    :cond_93
    invoke-virtual {v5}, Lcom/google/googlenav/aW;->f()I

    move-result v1

    if-le v1, v3, :cond_58

    .line 130
    const/16 v1, 0x542

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    invoke-virtual {v5}, Lcom/google/googlenav/aW;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8, v7}, LaM/aU;->a(Ljava/lang/CharSequence;II)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    .line 135
    invoke-virtual {v4, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_58
.end method

.method protected a(Ljava/lang/CharSequence;II)Lcom/google/googlenav/ui/view/android/a;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 150
    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/4 v1, 0x0

    new-instance v6, Lcom/google/googlenav/ui/view/a;

    invoke-direct {v6, p2, p3, v3}, Lcom/google/googlenav/ui/view/a;-><init>(IILjava/lang/Object;)V

    sget-object v7, Lcom/google/googlenav/ui/aV;->aw:Lcom/google/googlenav/ui/aV;

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;LT/f;LT/f;Lcom/google/googlenav/ui/view/a;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V

    return-object v0
.end method

.method public a()Lcom/google/googlenav/ui/view/android/bb;
    .registers 3

    .prologue
    .line 46
    new-instance v0, LaM/aX;

    iget-object v1, p0, LaM/aU;->a:LaM/aT;

    invoke-direct {v0, p0, v1}, LaM/aX;-><init>(LaM/aU;LaM/aT;)V

    return-object v0
.end method
