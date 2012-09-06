.class public Lcom/google/googlenav/ui/wizard/hx;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/aW;

.field private b:Lcom/google/googlenav/aY;

.field private c:Lcom/google/googlenav/J;

.field private i:Z

.field private j:Landroid/widget/ArrayAdapter;

.field private k:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 66
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hx;->c:Lcom/google/googlenav/J;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/hx;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hx;->k:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/hx;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hx;->k:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/hx;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hx;->j:Landroid/widget/ArrayAdapter;

    return-object p1
.end method

.method public static a(Lcom/google/googlenav/J;Lcom/google/googlenav/aW;ILcom/google/googlenav/aY;Ljava/lang/String;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    .line 118
    const/4 v2, 0x0

    .line 119
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aG()[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, p2

    .line 120
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->M()Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v1, ""

    .line 122
    const-string v1, ""

    .line 123
    const-string v1, " loc:"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_11f

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    const/16 v0, 0x5f9

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 126
    const-string v1, "2"

    .line 127
    const-string v0, "l"

    .line 137
    :goto_41
    const/16 v5, 0x59

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "i="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "t="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v6}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, p4, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    const/16 v1, 0x70

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "u="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/aW;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "q="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    const/4 v0, 0x3

    const-string v4, "ui=se"

    aput-object v4, v5, v0

    const/4 v0, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    invoke-static {v5}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p4, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/google/googlenav/bd;

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->m()Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/bd;-><init>(Lcom/google/googlenav/bc;)V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v0

    const-string v1, "20"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/aY;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->U()Lat/H;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aA()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->c(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/bc;)V

    .line 161
    return-void

    .line 130
    :cond_11f
    invoke-static {v4, v0}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    const-string v1, "1"

    .line 132
    const-string v0, "t"

    goto/16 :goto_41
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/hx;)V
    .registers 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/hx;->e()V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/hx;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hx;->j:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/hx;)Lcom/google/googlenav/J;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hx;->c:Lcom/google/googlenav/J;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/hx;)Lcom/google/googlenav/aW;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hx;->a:Lcom/google/googlenav/aW;

    return-object v0
.end method

.method private e()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 224
    move v1, v2

    :goto_3
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hx;->a:Lcom/google/googlenav/aW;

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->aG()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_80

    .line 225
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hx;->a:Lcom/google/googlenav/aW;

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->aG()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    .line 229
    const-string v3, " loc:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 230
    iget-boolean v4, p0, Lcom/google/googlenav/ui/wizard/hx;->i:Z

    if-eqz v4, :cond_24

    .line 231
    if-ne v3, v6, :cond_26

    .line 224
    :cond_20
    :goto_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 235
    :cond_24
    if-ne v3, v6, :cond_20

    .line 242
    :cond_26
    if-eq v3, v6, :cond_54

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    const-string v0, " loc:"

    const-string v4, ""

    invoke-static {v0, v4, v3}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    .line 245
    const/16 v0, 0x438

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/hx;->a:Lcom/google/googlenav/aW;

    invoke-virtual {v5}, Lcom/google/googlenav/aW;->L()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v0, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_54
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 251
    sget-object v3, Lcom/google/googlenav/ui/aV;->aw:Lcom/google/googlenav/ui/aV;

    sget-object v5, Lcom/google/googlenav/ui/aV;->ax:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v3, v5}, Lcom/google/googlenav/ui/aX;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)Ljava/util/Vector;

    move-result-object v5

    move v3, v2

    .line 253
    :goto_62
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_75

    .line 254
    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;Landroid/text/SpannableStringBuilder;)V

    .line 253
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_62

    .line 257
    :cond_75
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hx;->j:Landroid/widget/ArrayAdapter;

    new-instance v3, Lcom/google/googlenav/ui/wizard/hz;

    invoke-direct {v3, v4, v1}, Lcom/google/googlenav/ui/wizard/hz;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_20

    .line 259
    :cond_80
    return-void
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/hx;)Lcom/google/googlenav/aY;
    .registers 2
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hx;->b:Lcom/google/googlenav/aY;

    return-object v0
.end method


# virtual methods
.method public T_()V
    .registers 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hx;->a:Lcom/google/googlenav/aW;

    .line 100
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hx;->a()V

    .line 101
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hx;->b:Lcom/google/googlenav/aY;

    iget-boolean v2, p0, Lcom/google/googlenav/ui/wizard/hx;->i:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/hx;->a(Lcom/google/googlenav/aW;Lcom/google/googlenav/aY;Z)V

    .line 102
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 297
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    .line 298
    const/4 v0, 0x2

    .line 300
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x3

    goto :goto_9
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 305
    const/4 v0, 0x3

    return v0
.end method

.method public a(Lcom/google/googlenav/aW;Lcom/google/googlenav/aY;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hx;->a:Lcom/google/googlenav/aW;

    .line 72
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hx;->b:Lcom/google/googlenav/aY;

    .line 73
    iput-boolean p3, p0, Lcom/google/googlenav/ui/wizard/hx;->i:Z

    .line 74
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->j()V

    .line 75
    return-void
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hx;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-nez v0, :cond_b

    .line 85
    new-instance v0, Lcom/google/googlenav/ui/wizard/hA;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/hA;-><init>(Lcom/google/googlenav/ui/wizard/hx;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hx;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 87
    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hx;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 88
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hx;->a:Lcom/google/googlenav/aW;

    .line 93
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hx;->b:Lcom/google/googlenav/aY;

    .line 94
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 95
    return-void
.end method
