.class public Lcom/google/googlenav/ui/wizard/bq;
.super Lcom/google/googlenav/ui/wizard/hG;
.source "SourceFile"


# static fields
.field private static final l:[I

.field private static final m:[I

.field private static final n:[I

.field private static final o:[I


# instance fields
.field private k:Lan/h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/googlenav/ui/wizard/bq;->l:[I

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/googlenav/ui/wizard/bq;->m:[I

    .line 85
    new-array v0, v1, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/google/googlenav/ui/wizard/bq;->n:[I

    .line 93
    new-array v0, v1, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/google/googlenav/ui/wizard/bq;->o:[I

    return-void

    .line 67
    nop

    :array_20
    .array-data 0x4
        0x6ct 0x4t 0x0t 0x0t
        0x69t 0x4t 0x0t 0x0t
        0x6bt 0x4t 0x0t 0x0t
        0x6at 0x4t 0x0t 0x0t
    .end array-data

    .line 75
    :array_2c
    .array-data 0x4
        0x76t 0x4t 0x0t 0x0t
        0x78t 0x4t 0x0t 0x0t
        0x75t 0x4t 0x0t 0x0t
        0x7at 0x4t 0x0t 0x0t
        0x77t 0x4t 0x0t 0x0t
        0x79t 0x4t 0x0t 0x0t
    .end array-data

    .line 85
    :array_3c
    .array-data 0x4
        0x60t 0x4t 0x0t 0x0t
        0x62t 0x4t 0x0t 0x0t
        0x5ft 0x4t 0x0t 0x0t
        0x61t 0x4t 0x0t 0x0t
    .end array-data

    .line 93
    :array_48
    .array-data 0x4
        0x73t 0x4t 0x0t 0x0t
        0x6et 0x4t 0x0t 0x0t
        0x72t 0x4t 0x0t 0x0t
        0x70t 0x4t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lan/h;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/hG;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 103
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bq;->k:Lan/h;

    .line 104
    return-void
.end method

.method private static a(Ljava/util/List;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    new-instance v0, LaQ/bt;

    invoke-static {p1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-direct {v0, v1, v2, p2}, LaQ/bt;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/aV;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;
    .registers 6
    .parameter

    .prologue
    .line 323
    new-instance v0, Lcom/google/googlenav/ui/view/android/L;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bq;->f()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/g;Ljava/util/List;I)V

    return-object v0
.end method

.method protected a(Lac/g;)V
    .registers 7
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hP;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/hP;->g:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    .line 194
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bq;->k:Lan/h;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/hP;->l:Lat/B;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hP;->m:Lcom/google/googlenav/ui/e;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget-object v4, v4, Lcom/google/googlenav/ui/wizard/hP;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/googlenav/J;->a(Lan/h;Lat/B;ZLjava/lang/String;)V

    .line 197
    :cond_26
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/wizard/hG;->a(Lac/g;)V

    .line 198
    return-void
.end method

.method public a(Lat/B;Ln/B;Ljava/lang/String;Lat/H;IILjava/lang/String;Lcom/google/googlenav/ui/wizard/C;Z)V
    .registers 12
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
    .line 114
    new-instance v0, Lcom/google/googlenav/ui/wizard/hP;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/hP;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hP;

    .line 115
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hP;

    iput-object p4, v0, Lcom/google/googlenav/ui/wizard/hP;->d:Lat/H;

    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hP;

    iput p5, v0, Lcom/google/googlenav/ui/wizard/hP;->e:I

    .line 117
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hP;

    iput p6, v0, Lcom/google/googlenav/ui/wizard/hP;->f:I

    .line 118
    if-eqz p9, :cond_3b

    .line 122
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bq;->c:I

    .line 123
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hP;

    const/16 v1, 0x468

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/hP;->h:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hP;

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/googlenav/ui/wizard/hP;->g:I

    .line 128
    :goto_27
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hP;

    iput-object p1, v0, Lcom/google/googlenav/ui/wizard/hP;->a:Lat/B;

    .line 129
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hP;

    iput-object p2, v0, Lcom/google/googlenav/ui/wizard/hP;->b:Ln/B;

    .line 130
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/bq;->a:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hP;

    iput-object p7, v0, Lcom/google/googlenav/ui/wizard/hP;->c:Ljava/lang/String;

    .line 132
    iput-object p8, p0, Lcom/google/googlenav/ui/wizard/bq;->j:Lcom/google/googlenav/ui/wizard/C;

    .line 133
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bq;->j()V

    .line 134
    return-void

    .line 126
    :cond_3b
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/bq;->c:I

    goto :goto_27
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 145
    sparse-switch p1, :sswitch_data_66

    .line 186
    invoke-super {p0, p1, p2, p3}, Lcom/google/googlenav/ui/wizard/hG;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    .line 147
    :sswitch_b
    const/16 v1, 0x474

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v3}, Lcom/google/googlenav/ui/wizard/bq;->a(Ljava/lang/String;II)V

    goto :goto_a

    .line 152
    :sswitch_15
    const/16 v1, 0x45e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3, v3}, Lcom/google/googlenav/ui/wizard/bq;->a(Ljava/lang/String;II)V

    goto :goto_a

    .line 157
    :sswitch_1f
    const/16 v1, 0x468

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/bq;->a(Ljava/lang/String;II)V

    goto :goto_a

    .line 162
    :sswitch_2a
    const/16 v1, 0x46d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/bq;->a(Ljava/lang/String;II)V

    goto :goto_a

    .line 169
    :sswitch_35
    sget-object v1, Lcom/google/googlenav/ui/wizard/bq;->l:[I

    aget v1, v1, p2

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/googlenav/ui/wizard/bq;->b(Ljava/lang/String;II)V

    goto :goto_a

    .line 173
    :sswitch_41
    sget-object v1, Lcom/google/googlenav/ui/wizard/bq;->m:[I

    aget v1, v1, p2

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/googlenav/ui/wizard/bq;->b(Ljava/lang/String;II)V

    goto :goto_a

    .line 177
    :sswitch_4d
    sget-object v1, Lcom/google/googlenav/ui/wizard/bq;->n:[I

    aget v1, v1, p2

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/googlenav/ui/wizard/bq;->b(Ljava/lang/String;II)V

    goto :goto_a

    .line 181
    :sswitch_59
    sget-object v1, Lcom/google/googlenav/ui/wizard/bq;->o:[I

    aget v1, v1, p2

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/googlenav/ui/wizard/bq;->b(Ljava/lang/String;II)V

    goto :goto_a

    .line 145
    nop

    :sswitch_data_66
    .sparse-switch
        0x5de -> :sswitch_b
        0x5df -> :sswitch_15
        0x5e1 -> :sswitch_2a
        0x5e2 -> :sswitch_1f
        0x5fa -> :sswitch_41
        0x5fb -> :sswitch_4d
        0x5fc -> :sswitch_35
        0x5fd -> :sswitch_59
    .end sparse-switch
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/hG;->b()V

    .line 141
    return-void
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public f()Ljava/util/List;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 258
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 259
    iget v2, p0, Lcom/google/googlenav/ui/wizard/bq;->c:I

    packed-switch v2, :pswitch_data_74

    .line 304
    :cond_a
    :goto_a
    return-object v1

    .line 261
    :pswitch_b
    const/16 v0, 0x468

    const/16 v2, 0x5e2

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/bq;->a(Ljava/util/List;II)V

    .line 263
    const/16 v0, 0x474

    const/16 v2, 0x5de

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/bq;->a(Ljava/util/List;II)V

    .line 265
    const/16 v0, 0x45e

    const/16 v2, 0x5df

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/bq;->a(Ljava/util/List;II)V

    .line 267
    const/16 v0, 0x46d

    const/16 v2, 0x5e1

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/bq;->a(Ljava/util/List;II)V

    goto :goto_a

    .line 271
    :pswitch_28
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bq;->b:Lcom/google/googlenav/ui/wizard/hP;

    iget v2, v2, Lcom/google/googlenav/ui/wizard/hP;->g:I

    packed-switch v2, :pswitch_data_7c

    :pswitch_2f
    goto :goto_a

    .line 291
    :goto_30
    :pswitch_30
    sget-object v2, Lcom/google/googlenav/ui/wizard/bq;->o:[I

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 292
    sget-object v2, Lcom/google/googlenav/ui/wizard/bq;->o:[I

    aget v2, v2, v0

    const/16 v3, 0x5fd

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/bq;->a(Ljava/util/List;II)V

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 273
    :goto_41
    :pswitch_41
    sget-object v2, Lcom/google/googlenav/ui/wizard/bq;->l:[I

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 274
    sget-object v2, Lcom/google/googlenav/ui/wizard/bq;->l:[I

    aget v2, v2, v0

    const/16 v3, 0x5fc

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/bq;->a(Ljava/util/List;II)V

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 279
    :goto_52
    :pswitch_52
    sget-object v2, Lcom/google/googlenav/ui/wizard/bq;->m:[I

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 280
    sget-object v2, Lcom/google/googlenav/ui/wizard/bq;->m:[I

    aget v2, v2, v0

    const/16 v3, 0x5fa

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/bq;->a(Ljava/util/List;II)V

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 285
    :goto_63
    :pswitch_63
    sget-object v2, Lcom/google/googlenav/ui/wizard/bq;->n:[I

    array-length v2, v2

    if-ge v0, v2, :cond_a

    .line 286
    sget-object v2, Lcom/google/googlenav/ui/wizard/bq;->n:[I

    aget v2, v2, v0

    const/16 v3, 0x5fb

    invoke-static {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/bq;->a(Ljava/util/List;II)V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 259
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_b
        :pswitch_28
    .end packed-switch

    .line 271
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_30
        :pswitch_52
        :pswitch_63
        :pswitch_2f
        :pswitch_41
    .end packed-switch
.end method

.method protected g()Lcom/google/googlenav/ui/view/android/bb;
    .registers 2

    .prologue
    .line 344
    new-instance v0, Lcom/google/googlenav/ui/wizard/bs;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/bs;-><init>(Lcom/google/googlenav/ui/wizard/bq;)V

    return-object v0
.end method
