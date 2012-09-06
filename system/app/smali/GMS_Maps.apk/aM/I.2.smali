.class public LaM/I;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:I

.field private static c:I


# instance fields
.field private final a:LaM/O;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, LaM/I;->b:I

    .line 46
    const/4 v0, 0x0

    sput v0, LaM/I;->c:I

    return-void
.end method

.method public constructor <init>(LaM/O;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, LaM/I;->a:LaM/O;

    .line 50
    return-void
.end method

.method static synthetic a(LaM/I;)LaM/O;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, LaM/I;->a:LaM/O;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-static {p0, p1}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    .line 265
    sget v1, LaM/I;->b:I

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/google/googlenav/ui/aW;->a(IIII)V

    .line 266
    return-object v0
.end method

.method public static a(Lad/b;)Ljava/lang/CharSequence;
    .registers 6
    .parameter

    .prologue
    .line 297
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-virtual {p0}, Lad/b;->ac()Ljava/util/List;

    move-result-object v3

    .line 299
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_28

    .line 300
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/g;

    .line 301
    invoke-virtual {v0}, Lad/g;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/googlenav/ui/aV;->aL:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 304
    :cond_28
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 305
    const/4 v0, 0x0

    .line 307
    :goto_2f
    return-object v0

    :cond_30
    invoke-static {v2}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2f
.end method

.method public static a(LaM/O;Lad/b;)Ljava/util/Vector;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 197
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 201
    invoke-virtual {p0}, LaM/O;->bg()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 202
    sget-char v0, Lcom/google/googlenav/ui/bn;->aG:C

    .line 210
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/aV;->aK:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p0}, LaM/O;->bf()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 215
    check-cast p1, Lad/w;

    .line 216
    invoke-virtual {p1}, Lad/w;->ao()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/googlenav/ui/aV;->aK:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 219
    invoke-virtual {p0}, LaM/O;->bn()Ljava/lang/String;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_51

    .line 221
    sget-object v2, Lcom/google/googlenav/ui/aV;->x:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 236
    :cond_51
    :goto_51
    return-object v1

    .line 203
    :cond_52
    invoke-virtual {p0}, LaM/O;->bf()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 204
    sget-char v0, Lcom/google/googlenav/ui/bn;->aH:C

    goto :goto_d

    .line 205
    :cond_5b
    invoke-virtual {p0}, LaM/O;->bi()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 206
    sget-char v0, Lcom/google/googlenav/ui/bn;->aJ:C

    goto :goto_d

    .line 208
    :cond_64
    sget-char v0, Lcom/google/googlenav/ui/bn;->aI:C

    goto :goto_d

    .line 225
    :cond_67
    invoke-virtual {p0}, LaM/O;->bl()Ljava/lang/String;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_76

    .line 227
    sget-object v2, Lcom/google/googlenav/ui/aV;->aK:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 230
    :cond_76
    invoke-virtual {p0}, LaM/O;->bm()Ljava/lang/String;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_51

    .line 232
    sget-object v2, Lcom/google/googlenav/ui/aV;->aK:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_51
.end method

.method public static a(Ljava/lang/String;Lad/y;)Ljava/util/Vector;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 277
    if-eqz p1, :cond_a

    invoke-static {}, LaM/O;->bp()Z

    move-result v1

    if-nez v1, :cond_b

    .line 293
    :cond_a
    :goto_a
    return-object v0

    .line 280
    :cond_b
    invoke-virtual {p1}, Lad/y;->j()Lcom/google/googlenav/ai;

    move-result-object v1

    .line 281
    if-eqz v1, :cond_a

    .line 284
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 285
    invoke-virtual {v1}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v2

    .line 286
    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_37

    .line 287
    sget-object v3, Lcom/google/googlenav/ui/aV;->aK:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3}, LaM/I;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 289
    :cond_37
    invoke-virtual {v1}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_a

    .line 291
    sget-object v2, Lcom/google/googlenav/ui/aV;->aK:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2}, LaM/I;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_a
.end method

.method static synthetic b()I
    .registers 1

    .prologue
    .line 40
    sget v0, LaM/I;->c:I

    return v0
.end method

.method private c()Lad/b;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, LaM/I;->a:LaM/O;

    invoke-virtual {v0}, LaM/O;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lad/b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/view/android/bb;
    .registers 4

    .prologue
    .line 53
    new-instance v0, Lcom/google/googlenav/ui/view/android/aq;

    iget-object v1, p0, LaM/I;->a:LaM/O;

    invoke-direct {p0}, LaM/I;->c()Lad/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/aq;-><init>(Lcom/google/googlenav/ui/g;Lad/b;)V

    return-object v0
.end method

.method public a(I)Lcom/google/googlenav/ui/view/dialog/r;
    .registers 9
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 135
    new-instance v5, Ljava/util/Vector;

    const/4 v0, 0x2

    invoke-direct {v5, v0}, Ljava/util/Vector;-><init>(I)V

    .line 136
    iget-object v0, p0, LaM/I;->a:LaM/O;

    invoke-virtual {v0}, LaM/O;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lad/m;

    .line 139
    invoke-virtual {v0}, Lad/m;->u()Z

    move-result v6

    .line 141
    if-eqz v6, :cond_7f

    const/16 v1, 0x59c

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 144
    :goto_20
    if-eqz v6, :cond_87

    sget-object v1, Lcom/google/googlenav/ui/aV;->au:Lcom/google/googlenav/ui/aV;

    move-object v3, v1

    .line 146
    :goto_25
    if-eqz v6, :cond_8b

    const/16 v1, 0xe5

    .line 149
    :goto_29
    new-instance v6, LaM/L;

    invoke-static {v4, v3}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, LaM/J;

    invoke-direct {v4, p0, v1, p1}, LaM/J;-><init>(LaM/I;II)V

    invoke-direct {v6, v3, v4}, LaM/L;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 159
    iget-object v1, p0, LaM/I;->a:LaM/O;

    invoke-virtual {v1}, LaM/O;->bf()Z

    move-result v1

    if-nez v1, :cond_8d

    iget-object v1, p0, LaM/I;->a:LaM/O;

    invoke-virtual {v0}, Lad/m;->a()Lat/B;

    move-result-object v0

    invoke-virtual {v1, v0}, LaM/O;->c(Lat/B;)Z

    move-result v0

    if-eqz v0, :cond_8d

    const/4 v0, 0x1

    move v1, v0

    .line 162
    :goto_54
    if-eqz v1, :cond_90

    sget-object v0, Lcom/google/googlenav/ui/aV;->au:Lcom/google/googlenav/ui/aV;

    .line 163
    :goto_58
    if-eqz v1, :cond_5c

    const/16 v2, 0x5e6

    .line 165
    :cond_5c
    new-instance v1, LaM/L;

    const/16 v3, 0x447

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v3, LaM/K;

    invoke-direct {v3, p0, v2, p1}, LaM/K;-><init>(LaM/I;II)V

    invoke-direct {v1, v0, v3}, LaM/L;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 174
    new-instance v0, LaM/N;

    iget-object v1, p0, LaM/I;->a:LaM/O;

    invoke-direct {v0, v1, v5}, LaM/N;-><init>(Lcom/google/googlenav/ui/g;Ljava/util/Vector;)V

    .line 175
    return-object v0

    .line 141
    :cond_7f
    const/16 v1, 0x59e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_20

    .line 144
    :cond_87
    sget-object v1, Lcom/google/googlenav/ui/aV;->u:Lcom/google/googlenav/ui/aV;

    move-object v3, v1

    goto :goto_25

    :cond_8b
    move v1, v2

    .line 146
    goto :goto_29

    .line 159
    :cond_8d
    const/4 v0, 0x0

    move v1, v0

    goto :goto_54

    .line 162
    :cond_90
    sget-object v0, Lcom/google/googlenav/ui/aV;->u:Lcom/google/googlenav/ui/aV;

    goto :goto_58
.end method

.method b(I)Ljava/util/List;
    .registers 7
    .parameter

    .prologue
    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    const/4 v0, 0x0

    :goto_6
    invoke-direct {p0}, LaM/I;->c()Lad/b;

    move-result-object v2

    invoke-virtual {v2}, Lad/b;->f()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 184
    invoke-direct {p0}, LaM/I;->c()Lad/b;

    move-result-object v2

    iget-object v3, p0, LaM/I;->a:LaM/O;

    const/4 v4, 0x1

    invoke-static {v2, v0, p1, v3, v4}, LaM/G;->a(Lad/b;IILcom/google/googlenav/ui/g;Z)LaQ/H;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 187
    :cond_21
    return-object v1
.end method
