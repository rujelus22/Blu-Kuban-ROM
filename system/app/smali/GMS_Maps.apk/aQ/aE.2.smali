.class public LaQ/aE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# static fields
.field private static final b:Lcom/google/googlenav/ui/aV;


# instance fields
.field protected final a:LaQ/aP;

.field private final c:I

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private final f:Lcom/google/googlenav/ui/af;

.field private final g:LaM/aP;

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/google/googlenav/ai;

.field private final k:I

.field private l:Lcom/google/googlenav/ui/g;

.field private m:LaQ/aM;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/googlenav/ui/aV;->M:Lcom/google/googlenav/ui/aV;

    sput-object v0, LaQ/aE;->b:Lcom/google/googlenav/ui/aV;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Ljava/util/List;Lcom/google/googlenav/ui/af;LaM/aP;IZ)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 521
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, LaQ/aE;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Ljava/util/List;Lcom/google/googlenav/ui/af;LaM/aP;IZZ)V

    .line 523
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Ljava/util/List;Lcom/google/googlenav/ui/af;LaM/aP;IZLcom/google/googlenav/ai;ILcom/google/googlenav/ui/g;Z)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    if-eqz p6, :cond_22

    const/4 v0, 0x1

    .line 545
    :goto_6
    new-instance v1, LaQ/aP;

    invoke-direct {v1, v0, p1, p2}, LaQ/aP;-><init>(ZLcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v1, p0, LaQ/aE;->a:LaQ/aP;

    .line 546
    iput-object p3, p0, LaQ/aE;->d:Ljava/util/List;

    .line 547
    iput-object p4, p0, LaQ/aE;->e:Ljava/util/List;

    .line 548
    iput-object p5, p0, LaQ/aE;->f:Lcom/google/googlenav/ui/af;

    .line 549
    iput-object p6, p0, LaQ/aE;->g:LaM/aP;

    .line 550
    iput p7, p0, LaQ/aE;->c:I

    .line 551
    iput-boolean p8, p0, LaQ/aE;->h:Z

    .line 552
    iput-object p9, p0, LaQ/aE;->j:Lcom/google/googlenav/ai;

    .line 553
    iput p10, p0, LaQ/aE;->k:I

    .line 554
    iput-object p11, p0, LaQ/aE;->l:Lcom/google/googlenav/ui/g;

    .line 555
    iput-boolean p12, p0, LaQ/aE;->i:Z

    .line 556
    return-void

    .line 544
    :cond_22
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Ljava/util/List;Lcom/google/googlenav/ui/af;LaM/aP;IZZ)V
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 534
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v12, p9

    invoke-direct/range {v0 .. v12}, LaQ/aE;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Ljava/util/List;Lcom/google/googlenav/ui/af;LaM/aP;IZLcom/google/googlenav/ai;ILcom/google/googlenav/ui/g;Z)V

    .line 536
    return-void
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Landroid/util/Pair;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 171
    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v3

    .line 173
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 176
    :cond_16
    const/4 v0, 0x0

    .line 202
    :goto_17
    return-object v0

    .line 182
    :cond_18
    const/16 v0, 0x28

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 185
    if-lez v0, :cond_6a

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    :goto_27
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_40

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_68

    .line 192
    :cond_40
    :try_start_40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 193
    const/16 v1, 0x2c3

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_5f} :catch_65

    move-result-object v0

    .line 202
    :goto_60
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_17

    .line 195
    :catch_65
    move-exception v0

    move-object v0, v2

    goto :goto_60

    :cond_68
    move v0, v1

    goto :goto_27

    :cond_6a
    move-object v0, v2

    goto :goto_60
.end method

.method static synthetic a(LaQ/aE;)V
    .registers 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, LaQ/aE;->e()V

    return-void
.end method

.method static synthetic a(LaQ/aE;LaQ/aM;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, LaQ/aE;->c(LaQ/aM;)V

    return-void
.end method

.method static synthetic a(LaQ/aE;Lcom/google/googlenav/ui/ag;Landroid/widget/ImageView;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, LaQ/aE;->a(Lcom/google/googlenav/ui/ag;Landroid/widget/ImageView;)V

    return-void
.end method

.method private a(LaQ/aL;)V
    .registers 6
    .parameter

    .prologue
    .line 1062
    new-instance v1, LaQ/aN;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaQ/aN;-><init>(LaQ/aF;)V

    .line 1063
    const v0, 0x7f040148

    iget-object v2, p1, LaQ/aL;->j:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, LaQ/aN;->a:Landroid/view/ViewGroup;

    .line 1065
    iget-object v0, p1, LaQ/aL;->j:Landroid/view/ViewGroup;

    iget-object v2, v1, LaQ/aN;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1066
    iget-object v0, v1, LaQ/aN;->a:Landroid/view/ViewGroup;

    const v2, 0x7f1002bc

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, LaQ/aN;->b:Landroid/widget/ImageView;

    .line 1068
    iget-object v0, p1, LaQ/aL;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1069
    return-void
.end method

.method private a(LaQ/aM;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1004
    invoke-direct {p0, p1, p2}, LaQ/aE;->b(LaQ/aM;I)LaQ/aL;

    move-result-object v0

    .line 1006
    iget-object v1, p1, LaQ/aM;->d:Landroid/view/ViewGroup;

    iget-object v2, v0, LaQ/aL;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1007
    iget-object v1, p1, LaQ/aM;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    iget-object v0, p1, LaQ/aM;->i:Ljava/util/List;

    invoke-direct {p0, p2}, LaQ/aE;->a(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 771
    if-eqz p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 772
    return-void

    .line 771
    :cond_7
    const/16 v0, 0x8

    goto :goto_3
.end method

.method private a(Lcom/google/googlenav/ai;Landroid/widget/ImageView;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1174
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ax()Lcom/google/googlenav/ap;

    move-result-object v0

    .line 1175
    invoke-static {v0}, LaM/m;->a(Lcom/google/googlenav/ap;)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    .line 1176
    if-nez v1, :cond_b

    .line 1196
    :goto_a
    return-void

    .line 1179
    :cond_b
    iget-object v0, p0, LaQ/aE;->f:Lcom/google/googlenav/ui/af;

    check-cast v0, Lcom/google/googlenav/ui/bw;

    .line 1180
    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v2

    .line 1183
    invoke-virtual {v2, v1}, Lah/s;->c(Lcom/google/googlenav/ui/bx;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 1184
    new-instance v0, LaQ/aK;

    invoke-direct {v0, p0, v2, v1, p2}, LaQ/aK;-><init>(LaQ/aE;Lah/s;Lcom/google/googlenav/ui/bx;Landroid/widget/ImageView;)V

    .line 1191
    invoke-virtual {v2, v1, v0}, Lah/s;->a(Lcom/google/googlenav/ui/bx;Lah/p;)V

    goto :goto_a

    .line 1193
    :cond_22
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    .line 1194
    invoke-static {p2, v0}, LaQ/G;->a(Landroid/widget/ImageView;LT/f;)V

    goto :goto_a
.end method

.method private a(Lcom/google/googlenav/ui/ag;Landroid/widget/ImageView;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1134
    iget-object v0, p0, LaQ/aE;->f:Lcom/google/googlenav/ui/af;

    if-nez v0, :cond_5

    .line 1141
    :cond_4
    :goto_4
    return-void

    .line 1137
    :cond_5
    iget-object v0, p0, LaQ/aE;->f:Lcom/google/googlenav/ui/af;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/af;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v0

    .line 1138
    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 1139
    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4
.end method

.method private a(Lcom/google/googlenav/ui/g;LaQ/aL;LaQ/aQ;Ljava/util/List;[Lcom/google/googlenav/aw;Z)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 692
    iget-object v0, p2, LaQ/aL;->b:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 693
    invoke-static {p3}, LaQ/aE;->a(LaQ/aQ;)Z

    move-result v0

    if-eqz v0, :cond_c5

    if-nez p6, :cond_c5

    move v0, v2

    .line 694
    :goto_f
    iget v1, p0, LaQ/aE;->k:I

    if-lez v1, :cond_c8

    iget-object v1, p0, LaQ/aE;->j:Lcom/google/googlenav/ai;

    if-eqz v1, :cond_c8

    move v1, v2

    .line 695
    :goto_18
    if-nez v0, :cond_1c

    if-eqz v1, :cond_cb

    :cond_1c
    move v0, v2

    .line 696
    :goto_1d
    iget-object v1, p2, LaQ/aL;->b:Landroid/view/View;

    invoke-direct {p0, v1, v0}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 700
    :cond_22
    iget-boolean v0, p0, LaQ/aE;->h:Z

    if-nez v0, :cond_26

    .line 706
    :cond_26
    iget-boolean v0, p0, LaQ/aE;->h:Z

    if-eqz v0, :cond_42

    .line 707
    invoke-static {}, Lcom/google/googlenav/bj;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, LaQ/aQ;->b:Ljava/lang/String;

    .line 708
    invoke-static {}, Lcom/google/googlenav/bj;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, LaQ/aQ;->c:Ljava/lang/String;

    .line 710
    iget-object v0, p3, LaQ/aQ;->c:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 712
    const-string v0, ""

    iput-object v0, p3, LaQ/aQ;->b:Ljava/lang/String;

    .line 716
    :cond_42
    iget-object v0, p2, LaQ/aL;->d:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3}, LaQ/aE;->a(LaQ/aL;LaQ/aQ;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 717
    iget-object v0, p2, LaQ/aL;->c:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, LaQ/aE;->b(LaQ/aL;LaQ/aQ;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 718
    iget-object v0, p2, LaQ/aL;->e:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, LaQ/aE;->c(LaQ/aL;LaQ/aQ;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 723
    iget-object v0, p2, LaQ/aL;->f:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2, p3}, LaQ/aE;->a(Lcom/google/googlenav/ui/g;LaQ/aL;LaQ/aQ;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 726
    iget-object v0, p0, LaQ/aE;->j:Lcom/google/googlenav/ai;

    if-eqz v0, :cond_96

    .line 727
    iget-object v0, p2, LaQ/aL;->k:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 728
    iget-object v0, p0, LaQ/aE;->j:Lcom/google/googlenav/ai;

    iget-object v1, p2, LaQ/aL;->l:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, LaQ/aE;->a(Lcom/google/googlenav/ai;Landroid/widget/ImageView;)V

    .line 729
    iget-object v0, p2, LaQ/aL;->m:Landroid/widget/TextView;

    iget-object v1, p0, LaQ/aE;->j:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 730
    iget-object v0, p2, LaQ/aL;->n:Landroid/widget/TextView;

    iget-object v1, p0, LaQ/aE;->j:Lcom/google/googlenav/ai;

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 731
    iget-object v0, p2, LaQ/aL;->k:Landroid/view/ViewGroup;

    new-instance v1, LaQ/aG;

    invoke-direct {v1, p0, p1}, LaQ/aG;-><init>(LaQ/aE;Lcom/google/googlenav/ui/g;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    :cond_96
    invoke-static {p3}, LaQ/aE;->a(LaQ/aQ;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 740
    iget-object v0, p2, LaQ/aL;->g:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, LaQ/aE;->d(LaQ/aL;LaQ/aQ;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 746
    :goto_a5
    if-eqz p4, :cond_126

    .line 747
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p2, LaQ/aL;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_e1

    .line 750
    iget-object v0, p2, LaQ/aL;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_b9
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e1

    .line 751
    invoke-direct {p0, p2}, LaQ/aE;->a(LaQ/aL;)V

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_b9

    :cond_c5
    move v0, v3

    .line 693
    goto/16 :goto_f

    :cond_c8
    move v1, v3

    .line 694
    goto/16 :goto_18

    :cond_cb
    move v0, v3

    .line 695
    goto/16 :goto_1d

    .line 742
    :cond_ce
    iget-object v0, p2, LaQ/aL;->h:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, LaQ/aE;->e(LaQ/aL;LaQ/aQ;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 743
    iget-object v0, p2, LaQ/aL;->i:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, LaQ/aE;->f(LaQ/aL;LaQ/aQ;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, LaQ/aE;->a(Landroid/view/View;Z)V

    goto :goto_a5

    :cond_e1
    move v4, v3

    .line 754
    :goto_e2
    iget-object v0, p2, LaQ/aL;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_11b

    .line 755
    iget-object v0, p2, LaQ/aL;->p:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/aN;

    .line 756
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lt v4, v1, :cond_101

    .line 757
    iget-object v0, v0, LaQ/aN;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v3}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 754
    :goto_fd
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_e2

    .line 759
    :cond_101
    iget-object v1, v0, LaQ/aN;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 760
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/bx;

    invoke-direct {p0, v0, v1}, LaQ/aE;->a(LaQ/aN;Lcom/google/googlenav/ui/bx;)Z

    move-result v1

    .line 761
    iget-object v5, v0, LaQ/aN;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v1}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 762
    iget-object v0, v0, LaQ/aN;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0, p5, v4}, LaQ/aE;->a(Lcom/google/googlenav/ui/g;Landroid/view/ViewGroup;[Lcom/google/googlenav/aw;I)V

    goto :goto_fd

    .line 766
    :cond_11b
    iget-object v0, p2, LaQ/aL;->j:Landroid/view/ViewGroup;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_127

    :goto_123
    invoke-direct {p0, v0, v2}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 768
    :cond_126
    return-void

    :cond_127
    move v2, v3

    .line 766
    goto :goto_123
.end method

.method private a(Lcom/google/googlenav/ui/g;Landroid/view/ViewGroup;[Lcom/google/googlenav/aw;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1164
    new-instance v0, LaQ/aJ;

    invoke-direct {v0, p0, p1, p4, p3}, LaQ/aJ;-><init>(LaQ/aE;Lcom/google/googlenav/ui/g;I[Lcom/google/googlenav/aw;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1171
    return-void
.end method

.method private a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 1102
    iget-object v0, p0, LaQ/aE;->a:LaQ/aP;

    invoke-virtual {v0}, LaQ/aP;->a()I

    move-result v0

    if-le v0, p1, :cond_1a

    iget-object v0, p0, LaQ/aE;->a:LaQ/aP;

    iget-object v0, v0, LaQ/aP;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/aQ;

    invoke-static {v0}, LaQ/aE;->a(LaQ/aQ;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private a(LaQ/aL;LaQ/aQ;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 780
    iget-object v0, p2, LaQ/aQ;->b:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 781
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-static {p2}, LaQ/aE;->a(LaQ/aQ;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x2

    :goto_14
    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/ui/bn;->a(ZI)LS/f;

    move-result-object v0

    .line 784
    iget-object v1, p1, LaQ/aL;->d:Landroid/widget/ImageView;

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 801
    :goto_23
    return v3

    .line 781
    :cond_24
    const/4 v0, 0x0

    goto :goto_14

    .line 786
    :cond_26
    new-instance v1, Lcom/google/googlenav/ui/bx;

    iget-object v0, p2, LaQ/aQ;->b:Ljava/lang/String;

    sget v2, Lcom/google/googlenav/ui/bn;->bx:I

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    .line 789
    iget-object v0, p0, LaQ/aE;->f:Lcom/google/googlenav/ui/af;

    check-cast v0, Lcom/google/googlenav/ui/bw;

    .line 790
    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v2

    invoke-virtual {v2, v1}, Lah/s;->c(Lcom/google/googlenav/ui/bx;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 791
    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v0

    new-instance v2, LaQ/aH;

    invoke-direct {v2, p0, v1, p1}, LaQ/aH;-><init>(LaQ/aE;Lcom/google/googlenav/ui/bx;LaQ/aL;)V

    invoke-virtual {v0, v1, v2}, Lah/s;->a(Lcom/google/googlenav/ui/bx;Lah/p;)V

    goto :goto_23

    .line 798
    :cond_4a
    iget-object v0, p1, LaQ/aL;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, LaQ/aE;->a(Lcom/google/googlenav/ui/ag;Landroid/widget/ImageView;)V

    goto :goto_23
.end method

.method private a(LaQ/aM;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 630
    iget-object v1, p0, LaQ/aE;->a:LaQ/aP;

    iget-object v1, v1, LaQ/aP;->b:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, LaQ/aE;->a:LaQ/aP;

    invoke-virtual {v1}, LaQ/aP;->a()I

    move-result v1

    if-nez v1, :cond_10

    .line 636
    :cond_f
    :goto_f
    return v0

    .line 634
    :cond_10
    iget-object v1, p0, LaQ/aE;->a:LaQ/aP;

    iget-object v1, v1, LaQ/aP;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 635
    iget-object v2, p1, LaQ/aM;->b:Landroid/widget/TextView;

    sget-object v3, Lcom/google/googlenav/ui/aV;->bY:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v1, v3}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 636
    iget-object v1, p0, LaQ/aE;->a:LaQ/aP;

    iget-object v1, v1, LaQ/aP;->b:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v0, 0x1

    goto :goto_f
.end method

.method private a(LaQ/aN;Lcom/google/googlenav/ui/bx;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x30

    const/4 v0, 0x1

    .line 941
    iget-object v1, p0, LaQ/aE;->f:Lcom/google/googlenav/ui/af;

    if-nez v1, :cond_9

    .line 942
    const/4 v0, 0x0

    .line 955
    :goto_8
    return v0

    .line 946
    :cond_9
    iget-object v1, p1, LaQ/aN;->b:Landroid/widget/ImageView;

    .line 947
    iget-object v2, p0, LaQ/aE;->f:Lcom/google/googlenav/ui/af;

    invoke-interface {v2, p2}, Lcom/google/googlenav/ui/af;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v2

    invoke-interface {v2}, LS/f;->a()I

    move-result v2

    .line 948
    iget-object v3, p0, LaQ/aE;->f:Lcom/google/googlenav/ui/af;

    invoke-interface {v3, p2}, Lcom/google/googlenav/ui/af;->a(Lcom/google/googlenav/ui/ag;)LS/f;

    move-result-object v3

    invoke-interface {v3}, LS/f;->b()I

    move-result v3

    .line 949
    mul-int/lit8 v2, v2, 0x30

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/2addr v2, v3

    .line 950
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 951
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 952
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 954
    iget-object v1, p1, LaQ/aN;->b:Landroid/widget/ImageView;

    invoke-direct {p0, p2, v1}, LaQ/aE;->a(Lcom/google/googlenav/ui/ag;Landroid/widget/ImageView;)V

    goto :goto_8
.end method

.method private static a(LaQ/aQ;)Z
    .registers 2
    .parameter

    .prologue
    .line 1110
    iget-object v0, p0, LaQ/aQ;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 930
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 931
    invoke-static {p1, p2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 933
    :cond_9
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private a(Lcom/google/googlenav/ui/g;LaQ/aL;LaQ/aQ;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 851
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 853
    iget-object v0, p3, LaQ/aQ;->f:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_65

    move v0, v1

    .line 854
    :goto_10
    iget-object v3, p0, LaQ/aE;->g:LaM/aP;

    if-eqz v3, :cond_67

    move v3, v1

    .line 855
    :goto_15
    iget-object v4, p0, LaQ/aE;->j:Lcom/google/googlenav/ai;

    if-eqz v4, :cond_69

    move v4, v1

    .line 856
    :goto_1a
    iget-object v5, p3, LaQ/aQ;->h:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v7, p3, LaQ/aQ;->g:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v5, v7, :cond_6b

    move v5, v1

    .line 859
    :goto_29
    iget-boolean v7, p0, LaQ/aE;->h:Z

    if-nez v7, :cond_33

    if-nez v4, :cond_6d

    if-nez v3, :cond_6d

    if-eqz v5, :cond_6d

    .line 860
    :cond_33
    iget-object v4, p3, LaQ/aQ;->h:Ljava/lang/CharSequence;

    .line 866
    :goto_35
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_70

    move v5, v1

    .line 868
    :goto_3c
    if-eqz v0, :cond_43

    .line 869
    iget-object v7, p3, LaQ/aQ;->f:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 872
    :cond_43
    iget-object v7, p3, LaQ/aQ;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 873
    new-instance v8, LaQ/aI;

    invoke-direct {v8, p0, p1, p2, v7}, LaQ/aI;-><init>(LaQ/aE;Lcom/google/googlenav/ui/g;LaQ/aL;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 895
    if-eqz v5, :cond_4f

    .line 896
    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 900
    :cond_4f
    if-nez v3, :cond_55

    iget-object v3, p0, LaQ/aE;->j:Lcom/google/googlenav/ai;

    if-eqz v3, :cond_5a

    .line 902
    :cond_55
    iget-object v3, p2, LaQ/aL;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 905
    :cond_5a
    iget-object v3, p2, LaQ/aL;->f:Landroid/widget/TextView;

    invoke-static {v3, v6}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 906
    if-nez v0, :cond_63

    if-eqz v5, :cond_64

    :cond_63
    move v2, v1

    :cond_64
    return v2

    :cond_65
    move v0, v2

    .line 853
    goto :goto_10

    :cond_67
    move v3, v2

    .line 854
    goto :goto_15

    :cond_69
    move v4, v2

    .line 855
    goto :goto_1a

    :cond_6b
    move v5, v2

    .line 856
    goto :goto_29

    .line 864
    :cond_6d
    iget-object v4, p3, LaQ/aQ;->g:Ljava/lang/CharSequence;

    goto :goto_35

    :cond_70
    move v5, v2

    .line 866
    goto :goto_3c
.end method

.method private a(Lcom/google/googlenav/ui/g;LaQ/aM;)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 644
    iget-object v0, p0, LaQ/aE;->a:LaQ/aP;

    iget-object v0, v0, LaQ/aP;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_d

    .line 680
    :goto_c
    return v4

    .line 647
    :cond_d
    iget-object v0, p2, LaQ/aM;->e:Landroid/widget/TextView;

    iget-object v1, p0, LaQ/aE;->a:LaQ/aP;

    iget-object v1, v1, LaQ/aP;->d:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 648
    iget-object v0, p0, LaQ/aE;->a:LaQ/aP;

    iget-object v0, v0, LaQ/aP;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p2, LaQ/aM;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_3c

    .line 651
    iget-object v0, p2, LaQ/aM;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2c
    iget-object v1, p0, LaQ/aE;->a:LaQ/aP;

    iget-object v1, v1, LaQ/aP;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3c

    .line 653
    invoke-direct {p0, p2}, LaQ/aE;->b(LaQ/aM;)V

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_3c
    move v3, v4

    .line 656
    :goto_3d
    iget-object v0, p2, LaQ/aM;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_96

    .line 657
    iget-object v0, p2, LaQ/aM;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/aO;

    .line 659
    iget-object v1, p0, LaQ/aE;->a:LaQ/aP;

    iget-object v1, v1, LaQ/aP;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_60

    .line 660
    iget-object v0, v0, LaQ/aO;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v4}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 656
    :goto_5c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3d

    .line 662
    :cond_60
    iget-object v1, p0, LaQ/aE;->a:LaQ/aP;

    iget-object v1, v1, LaQ/aP;->e:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 663
    iget-object v2, v0, LaQ/aO;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v5}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 664
    iget-object v2, p0, LaQ/aE;->a:LaQ/aP;

    iget-object v2, v2, LaQ/aP;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v3, v2, :cond_80

    .line 665
    iget-object v2, v0, LaQ/aO;->b:Landroid/view/View;

    invoke-direct {p0, v2, v5}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 667
    :cond_80
    iget-object v6, v0, LaQ/aO;->c:Landroid/widget/TextView;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    sget-object v7, LaQ/aE;->b:Lcom/google/googlenav/ui/aV;

    invoke-static {v6, v2, v7}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 670
    iget-object v0, v0, LaQ/aO;->a:Landroid/view/ViewGroup;

    .line 671
    new-instance v2, LaQ/aF;

    invoke-direct {v2, p0, p1, v1}, LaQ/aF;-><init>(LaQ/aE;Lcom/google/googlenav/ui/g;Landroid/util/Pair;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5c

    :cond_96
    move v4, v5

    .line 680
    goto/16 :goto_c
.end method

.method static synthetic b(LaQ/aE;)I
    .registers 2
    .parameter

    .prologue
    .line 67
    iget v0, p0, LaQ/aE;->k:I

    return v0
.end method

.method private b(LaQ/aM;I)LaQ/aL;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1013
    new-instance v2, LaQ/aL;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, LaQ/aL;-><init>(LaQ/aF;)V

    .line 1015
    invoke-direct {p0, p2}, LaQ/aE;->a(I)Z

    move-result v0

    if-eqz v0, :cond_be

    const v0, 0x7f040158

    :goto_10
    iget-object v3, p1, LaQ/aM;->d:Landroid/view/ViewGroup;

    invoke-static {v0, v3, v1}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    .line 1019
    iget-object v0, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    const v3, 0x7f10038f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, LaQ/aL;->b:Landroid/view/View;

    .line 1021
    iget-object v0, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    const v3, 0x7f10035d

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, LaQ/aL;->c:Landroid/widget/TextView;

    .line 1023
    iget-object v0, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    const v3, 0x7f10035c

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, LaQ/aL;->d:Landroid/widget/ImageView;

    .line 1025
    iget-object v0, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    const v3, 0x7f10035e

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, LaQ/aL;->e:Landroid/widget/TextView;

    .line 1028
    iget-object v0, p0, LaQ/aE;->j:Lcom/google/googlenav/ai;

    if-eqz v0, :cond_84

    .line 1029
    iget-object v0, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    const v3, 0x7f100390

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, LaQ/aL;->k:Landroid/view/ViewGroup;

    .line 1031
    iget-object v0, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    const v3, 0x7f100391

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, LaQ/aL;->l:Landroid/widget/ImageView;

    .line 1033
    iget-object v0, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    const v3, 0x7f100392

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, LaQ/aL;->m:Landroid/widget/TextView;

    .line 1035
    iget-object v0, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    const v3, 0x7f100393

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, LaQ/aL;->n:Landroid/widget/TextView;

    .line 1039
    :cond_84
    iget-object v0, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    const v3, 0x7f10035f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, LaQ/aL;->f:Landroid/widget/TextView;

    .line 1041
    invoke-direct {p0, p2}, LaQ/aE;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 1042
    iget-object v0, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    const v3, 0x7f100394

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, LaQ/aL;->g:Landroid/widget/TextView;

    .line 1050
    :goto_a4
    iput p2, v2, LaQ/aL;->o:I

    .line 1052
    iget-object v0, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    const v3, 0x7f100363

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, LaQ/aL;->j:Landroid/view/ViewGroup;

    move v0, v1

    .line 1054
    :goto_b4
    const/16 v1, 0xa

    if-ge v0, v1, :cond_de

    .line 1055
    invoke-direct {p0, v2}, LaQ/aE;->a(LaQ/aL;)V

    .line 1054
    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    .line 1015
    :cond_be
    const v0, 0x7f040147

    goto/16 :goto_10

    .line 1045
    :cond_c3
    iget-object v0, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    const v3, 0x7f100361

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, LaQ/aL;->h:Landroid/widget/TextView;

    .line 1047
    iget-object v0, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    const v3, 0x7f100362

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, LaQ/aL;->i:Landroid/widget/TextView;

    goto :goto_a4

    .line 1058
    :cond_de
    return-object v2
.end method

.method private b(LaQ/aM;)V
    .registers 6
    .parameter

    .prologue
    .line 1072
    new-instance v1, LaQ/aO;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaQ/aO;-><init>(LaQ/aF;)V

    .line 1073
    const v0, 0x7f040153

    iget-object v2, p1, LaQ/aM;->g:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/ui/bn;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, LaQ/aO;->a:Landroid/view/ViewGroup;

    .line 1075
    iget-object v0, p1, LaQ/aM;->g:Landroid/view/ViewGroup;

    iget-object v2, v1, LaQ/aO;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1077
    iget-object v0, v1, LaQ/aO;->a:Landroid/view/ViewGroup;

    const v2, 0x7f10037f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, LaQ/aO;->b:Landroid/view/View;

    .line 1080
    iget-object v0, v1, LaQ/aO;->a:Landroid/view/ViewGroup;

    const v2, 0x7f10037e

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, LaQ/aO;->c:Landroid/widget/TextView;

    .line 1083
    iget-object v0, p1, LaQ/aM;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    return-void
.end method

.method private b(LaQ/aL;LaQ/aQ;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 809
    iget-object v0, p2, LaQ/aQ;->c:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    move v1, v0

    .line 810
    :goto_a
    if-eqz v1, :cond_1f

    .line 812
    iget-boolean v0, p2, LaQ/aQ;->k:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/google/googlenav/ui/aV;->bg:Lcom/google/googlenav/ui/aV;

    .line 814
    :goto_12
    iget-object v2, p1, LaQ/aL;->c:Landroid/widget/TextView;

    iget-object v3, p2, LaQ/aQ;->c:Ljava/lang/String;

    invoke-static {p2}, LaQ/aE;->a(LaQ/aQ;)Z

    move-result v4

    if-eqz v4, :cond_26

    :goto_1c
    invoke-static {v2, v3, v0}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 817
    :cond_1f
    return v1

    .line 809
    :cond_20
    const/4 v0, 0x0

    move v1, v0

    goto :goto_a

    .line 812
    :cond_23
    sget-object v0, Lcom/google/googlenav/ui/aV;->bf:Lcom/google/googlenav/ui/aV;

    goto :goto_12

    .line 814
    :cond_26
    sget-object v0, Lcom/google/googlenav/ui/aV;->aT:Lcom/google/googlenav/ui/aV;

    goto :goto_1c
.end method

.method static synthetic b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 2
    .parameter

    .prologue
    .line 67
    invoke-static {p0}, LaQ/aE;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(LaQ/aE;)Lcom/google/googlenav/ai;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, LaQ/aE;->j:Lcom/google/googlenav/ai;

    return-object v0
.end method

.method private c(LaQ/aM;)V
    .registers 2
    .parameter

    .prologue
    .line 1148
    iput-object p1, p0, LaQ/aE;->m:LaQ/aM;

    .line 1149
    return-void
.end method

.method private c(LaQ/aL;LaQ/aQ;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 825
    iget-object v0, p2, LaQ/aQ;->d:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    move v1, v0

    .line 826
    :goto_a
    if-eqz v1, :cond_1b

    .line 827
    iget-object v2, p1, LaQ/aL;->e:Landroid/widget/TextView;

    iget-object v3, p2, LaQ/aQ;->d:Ljava/lang/String;

    invoke-static {p2}, LaQ/aE;->a(LaQ/aQ;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/google/googlenav/ui/aV;->ba:Lcom/google/googlenav/ui/aV;

    :goto_18
    invoke-static {v2, v3, v0}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    .line 830
    :cond_1b
    return v1

    .line 825
    :cond_1c
    const/4 v0, 0x0

    move v1, v0

    goto :goto_a

    .line 827
    :cond_1f
    sget-object v0, Lcom/google/googlenav/ui/aV;->aY:Lcom/google/googlenav/ui/aV;

    goto :goto_18
.end method

.method private static c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 2
    .parameter

    .prologue
    .line 1106
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method static synthetic d(LaQ/aE;)Z
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-boolean v0, p0, LaQ/aE;->h:Z

    return v0
.end method

.method private d(LaQ/aL;LaQ/aQ;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 835
    iget-object v0, p2, LaQ/aQ;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    .line 836
    :goto_d
    if-eqz v0, :cond_16

    .line 837
    iget-object v1, p1, LaQ/aL;->g:Landroid/widget/TextView;

    iget-object v2, p2, LaQ/aQ;->e:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 839
    :cond_16
    return v0

    .line 835
    :cond_17
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private e()V
    .registers 2

    .prologue
    .line 1156
    const/4 v0, 0x0

    iput-object v0, p0, LaQ/aE;->m:LaQ/aM;

    .line 1157
    return-void
.end method

.method private e(LaQ/aL;LaQ/aQ;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 914
    iget-object v0, p1, LaQ/aL;->h:Landroid/widget/TextView;

    iget-object v1, p2, LaQ/aQ;->i:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, LaQ/aE;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private f(LaQ/aL;LaQ/aQ;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 922
    iget-object v0, p1, LaQ/aL;->i:Landroid/widget/TextView;

    iget-object v1, p2, LaQ/aQ;->j:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, LaQ/aE;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 960
    iget-boolean v0, p0, LaQ/aE;->i:Z

    if-eqz v0, :cond_8

    .line 961
    invoke-static {p1}, LaM/aR;->a(Landroid/view/View;)V

    .line 964
    :cond_8
    iget-object v0, p0, LaQ/aE;->g:LaM/aP;

    if-eqz v0, :cond_5e

    const/4 v0, 0x1

    .line 965
    :goto_d
    if-nez v0, :cond_1e

    .line 966
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 969
    :cond_1e
    new-instance v2, LaQ/aM;

    invoke-direct {v2}, LaQ/aM;-><init>()V

    .line 972
    const v0, 0x7f10026d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, LaQ/aM;->a:Landroid/view/ViewGroup;

    .line 973
    iget-object v0, v2, LaQ/aM;->a:Landroid/view/ViewGroup;

    const v3, 0x7f10026e

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, LaQ/aM;->b:Landroid/widget/TextView;

    .line 975
    iget-object v0, v2, LaQ/aM;->a:Landroid/view/ViewGroup;

    const v3, 0x7f100246

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, LaQ/aM;->c:Landroid/view/View;

    .line 977
    iget-object v0, v2, LaQ/aM;->a:Landroid/view/ViewGroup;

    const v3, 0x7f10026f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, LaQ/aM;->d:Landroid/view/ViewGroup;

    move v0, v1

    .line 980
    :goto_54
    const/16 v3, 0x8

    if-ge v0, v3, :cond_60

    .line 981
    invoke-direct {p0, v2, v0}, LaQ/aE;->a(LaQ/aM;I)V

    .line 980
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :cond_5e
    move v0, v1

    .line 964
    goto :goto_d

    .line 984
    :cond_60
    iget-object v0, v2, LaQ/aM;->a:Landroid/view/ViewGroup;

    const v3, 0x7f100270

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, LaQ/aM;->e:Landroid/widget/TextView;

    .line 986
    iget-object v0, v2, LaQ/aM;->a:Landroid/view/ViewGroup;

    const v3, 0x7f100247

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, LaQ/aM;->f:Landroid/view/View;

    .line 988
    iget-object v0, v2, LaQ/aM;->a:Landroid/view/ViewGroup;

    const v3, 0x7f100271

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, LaQ/aM;->g:Landroid/view/ViewGroup;

    move v0, v1

    .line 991
    :goto_86
    const/4 v1, 0x5

    if-ge v0, v1, :cond_8f

    .line 992
    invoke-direct {p0, v2}, LaQ/aE;->b(LaQ/aM;)V

    .line 991
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 995
    :cond_8f
    return-object v2
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 560
    check-cast p2, LaQ/aM;

    .line 562
    if-eqz p1, :cond_9

    .line 563
    iput-object p1, p0, LaQ/aE;->l:Lcom/google/googlenav/ui/g;

    .line 567
    :cond_9
    invoke-virtual {p2, p0}, LaQ/aM;->a(LaQ/aE;)V

    .line 570
    invoke-direct {p0, p2}, LaQ/aE;->a(LaQ/aM;)Z

    move-result v0

    .line 571
    iget-object v1, p2, LaQ/aM;->b:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 572
    iget-object v1, p2, LaQ/aM;->c:Landroid/view/View;

    if-eqz v1, :cond_1e

    .line 573
    iget-object v1, p2, LaQ/aM;->c:Landroid/view/View;

    invoke-direct {p0, v1, v0}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 577
    :cond_1e
    iget-object v0, p0, LaQ/aE;->a:LaQ/aP;

    invoke-virtual {v0}, LaQ/aP;->a()I

    move-result v0

    iget-object v1, p2, LaQ/aM;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_40

    .line 580
    iget-object v0, p2, LaQ/aM;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_32
    iget-object v1, p0, LaQ/aE;->a:LaQ/aP;

    invoke-virtual {v1}, LaQ/aP;->a()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 581
    invoke-direct {p0, p2, v0}, LaQ/aE;->a(LaQ/aM;I)V

    .line 580
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_40
    move v1, v7

    .line 587
    :goto_41
    iget-object v0, p0, LaQ/aE;->a:LaQ/aP;

    iget-object v0, v0, LaQ/aP;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_97

    .line 588
    iget-object v0, p2, LaQ/aM;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 589
    iget-object v0, p0, LaQ/aE;->a:LaQ/aP;

    iget-object v0, v0, LaQ/aP;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/aQ;

    invoke-static {v0}, LaQ/aE;->a(LaQ/aQ;)Z

    move-result v0

    .line 590
    if-eq v0, v2, :cond_93

    .line 591
    invoke-direct {p0, p2, v1}, LaQ/aE;->b(LaQ/aM;I)LaQ/aL;

    move-result-object v2

    .line 592
    iget-object v0, p2, LaQ/aM;->h:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 593
    iget-object v3, p2, LaQ/aM;->i:Ljava/util/List;

    iget-object v0, p0, LaQ/aE;->a:LaQ/aP;

    iget-object v0, v0, LaQ/aP;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaQ/aQ;

    invoke-static {v0}, LaQ/aE;->a(LaQ/aQ;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget-object v0, p2, LaQ/aM;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 595
    iget-object v0, p2, LaQ/aM;->d:Landroid/view/ViewGroup;

    iget-object v2, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 587
    :cond_93
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_41

    :cond_97
    move v8, v7

    .line 600
    :goto_98
    iget-object v0, p2, LaQ/aM;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_102

    .line 601
    iget-object v0, p2, LaQ/aM;->h:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LaQ/aL;

    .line 602
    iget-object v0, p0, LaQ/aE;->a:LaQ/aP;

    invoke-virtual {v0}, LaQ/aP;->a()I

    move-result v0

    if-ge v8, v0, :cond_fc

    .line 603
    iget-object v0, p0, LaQ/aE;->d:Ljava/util/List;

    if-eqz v0, :cond_bc

    iget-object v0, p0, LaQ/aE;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e6

    :cond_bc
    move-object v4, v9

    .line 605
    :goto_bd
    iget-object v0, p0, LaQ/aE;->e:Ljava/util/List;

    if-eqz v0, :cond_c9

    iget-object v0, p0, LaQ/aE;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f0

    :cond_c9
    move-object v5, v9

    .line 607
    :goto_ca
    iget-object v0, p0, LaQ/aE;->a:LaQ/aP;

    iget-object v0, v0, LaQ/aP;->c:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LaQ/aQ;

    .line 608
    iget-object v1, p0, LaQ/aE;->l:Lcom/google/googlenav/ui/g;

    if-nez v8, :cond_fa

    move v6, v10

    :goto_d9
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, LaQ/aE;->a(Lcom/google/googlenav/ui/g;LaQ/aL;LaQ/aQ;Ljava/util/List;[Lcom/google/googlenav/aw;Z)V

    .line 610
    iget-object v0, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v10}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 600
    :goto_e2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_98

    .line 603
    :cond_e6
    iget-object v0, p0, LaQ/aE;->d:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    goto :goto_bd

    .line 605
    :cond_f0
    iget-object v0, p0, LaQ/aE;->e:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/aw;

    move-object v5, v0

    goto :goto_ca

    :cond_fa
    move v6, v7

    .line 608
    goto :goto_d9

    .line 612
    :cond_fc
    iget-object v0, v2, LaQ/aL;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v7}, LaQ/aE;->a(Landroid/view/View;Z)V

    goto :goto_e2

    .line 617
    :cond_102
    iget-object v0, p0, LaQ/aE;->l:Lcom/google/googlenav/ui/g;

    invoke-direct {p0, v0, p2}, LaQ/aE;->a(Lcom/google/googlenav/ui/g;LaQ/aM;)Z

    move-result v0

    .line 619
    iget-object v1, p2, LaQ/aM;->e:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 620
    iget-object v1, p2, LaQ/aM;->f:Landroid/view/View;

    if-eqz v1, :cond_116

    .line 621
    iget-object v1, p2, LaQ/aM;->f:Landroid/view/View;

    invoke-direct {p0, v1, v0}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 623
    :cond_116
    iget-object v1, p2, LaQ/aM;->g:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v0}, LaQ/aE;->a(Landroid/view/View;Z)V

    .line 624
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 1098
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 1088
    iget v0, p0, LaQ/aE;->c:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 1093
    const v0, 0x7f0400c8

    return v0
.end method

.method public d()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1121
    iget-object v0, p0, LaQ/aE;->d:Ljava/util/List;

    if-eqz v0, :cond_4f

    iget-object v0, p0, LaQ/aE;->m:LaQ/aM;

    if-eqz v0, :cond_4f

    move v3, v4

    .line 1122
    :goto_a
    iget-object v0, p0, LaQ/aE;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_46

    .line 1123
    iget-object v0, p0, LaQ/aE;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v5, v4

    .line 1124
    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_42

    .line 1125
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/ag;

    iget-object v2, p0, LaQ/aE;->m:LaQ/aM;

    iget-object v2, v2, LaQ/aM;->h:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LaQ/aL;

    iget-object v2, v2, LaQ/aL;->p:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LaQ/aN;

    iget-object v2, v2, LaQ/aN;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, LaQ/aE;->a(Lcom/google/googlenav/ui/ag;Landroid/widget/ImageView;)V

    .line 1124
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1b

    .line 1122
    :cond_42
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a

    .line 1129
    :cond_46
    iget-object v0, p0, LaQ/aE;->l:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x18

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 1131
    :cond_4f
    return-void
.end method
