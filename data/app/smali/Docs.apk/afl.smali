.class public abstract Lafl;
.super Ljava/lang/Object;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lafl;

.field public static final b:Lafl;

.field public static final c:Lafl;

.field public static final d:Lafl;

.field public static final e:Lafl;

.field public static final f:Lafl;

.field public static final g:Lafl;

.field public static final h:Lafl;

.field public static final i:Lafl;

.field public static final j:Lafl;

.field public static final k:Lafl;

.field public static final l:Lafl;

.field public static final m:Lafl;

.field public static final n:Lafl;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v3, 0x200a

    const/16 v9, 0x600

    const/16 v8, 0x2000

    const/16 v7, 0x7f

    const/4 v1, 0x0

    .line 75
    const-string v0, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000\u00a0\u180e\u202f"

    invoke-static {v0}, Lafl;->a(Ljava/lang/CharSequence;)Lafl;

    move-result-object v0

    invoke-static {v8, v3}, Lafl;->a(CC)Lafl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    invoke-virtual {v0}, Lafl;->b()Lafl;

    move-result-object v0

    sput-object v0, Lafl;->a:Lafl;

    .line 87
    const-string v0, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000"

    invoke-static {v0}, Lafl;->a(Ljava/lang/CharSequence;)Lafl;

    move-result-object v0

    const/16 v2, 0x2006

    invoke-static {v8, v2}, Lafl;->a(CC)Lafl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const/16 v2, 0x2008

    invoke-static {v2, v3}, Lafl;->a(CC)Lafl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    invoke-virtual {v0}, Lafl;->b()Lafl;

    move-result-object v0

    sput-object v0, Lafl;->b:Lafl;

    .line 96
    invoke-static {v1, v7}, Lafl;->a(CC)Lafl;

    move-result-object v0

    sput-object v0, Lafl;->c:Lafl;

    .line 105
    const/16 v0, 0x30

    const/16 v2, 0x39

    invoke-static {v0, v2}, Lafl;->a(CC)Lafl;

    move-result-object v0

    .line 106
    const-string v2, "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    .line 110
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move-object v2, v0

    move v0, v1

    :goto_54
    if-ge v0, v4, :cond_66

    aget-char v5, v3, v0

    .line 111
    add-int/lit8 v6, v5, 0x9

    int-to-char v6, v6

    invoke-static {v5, v6}, Lafl;->a(CC)Lafl;

    move-result-object v5

    invoke-virtual {v2, v5}, Lafl;->a(Lafl;)Lafl;

    move-result-object v2

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 113
    :cond_66
    invoke-virtual {v2}, Lafl;->b()Lafl;

    move-result-object v0

    sput-object v0, Lafl;->d:Lafl;

    .line 120
    new-instance v0, Lafm;

    invoke-direct {v0}, Lafm;-><init>()V

    sput-object v0, Lafl;->e:Lafl;

    .line 131
    new-instance v0, Lafs;

    invoke-direct {v0}, Lafs;-><init>()V

    sput-object v0, Lafl;->f:Lafl;

    .line 141
    new-instance v0, Laft;

    invoke-direct {v0}, Laft;-><init>()V

    sput-object v0, Lafl;->g:Lafl;

    .line 151
    new-instance v0, Lafu;

    invoke-direct {v0}, Lafu;-><init>()V

    sput-object v0, Lafl;->h:Lafl;

    .line 161
    new-instance v0, Lafv;

    invoke-direct {v0}, Lafv;-><init>()V

    sput-object v0, Lafl;->i:Lafl;

    .line 171
    const/16 v0, 0x1f

    invoke-static {v1, v0}, Lafl;->a(CC)Lafl;

    move-result-object v0

    const/16 v2, 0x9f

    invoke-static {v7, v2}, Lafl;->a(CC)Lafl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    sput-object v0, Lafl;->j:Lafl;

    .line 179
    const/16 v0, 0x20

    invoke-static {v1, v0}, Lafl;->a(CC)Lafl;

    move-result-object v0

    const/16 v2, 0xa0

    invoke-static {v7, v2}, Lafl;->a(CC)Lafl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const/16 v2, 0xad

    invoke-static {v2}, Lafl;->a(C)Lafl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const/16 v2, 0x603

    invoke-static {v9, v2}, Lafl;->a(CC)Lafl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const-string v2, "\u06dd\u070f\u1680\u17b4\u17b5\u180e"

    invoke-static {v2}, Lafl;->a(Ljava/lang/CharSequence;)Lafl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const/16 v2, 0x200f

    invoke-static {v8, v2}, Lafl;->a(CC)Lafl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const/16 v2, 0x2028

    const/16 v3, 0x202f

    invoke-static {v2, v3}, Lafl;->a(CC)Lafl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const/16 v2, 0x205f

    const/16 v3, 0x2064

    invoke-static {v2, v3}, Lafl;->a(CC)Lafl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const/16 v2, 0x206a

    const/16 v3, 0x206f

    invoke-static {v2, v3}, Lafl;->a(CC)Lafl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const/16 v2, 0x3000

    invoke-static {v2}, Lafl;->a(C)Lafl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const v2, 0xd800

    const v3, 0xf8ff

    invoke-static {v2, v3}, Lafl;->a(CC)Lafl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const-string v2, "\ufeff\ufff9\ufffa\ufffb"

    invoke-static {v2}, Lafl;->a(Ljava/lang/CharSequence;)Lafl;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    invoke-virtual {v0}, Lafl;->b()Lafl;

    move-result-object v0

    sput-object v0, Lafl;->k:Lafl;

    .line 201
    const/16 v0, 0x4f9

    invoke-static {v1, v0}, Lafl;->a(CC)Lafl;

    move-result-object v0

    const/16 v1, 0x5be

    invoke-static {v1}, Lafl;->a(C)Lafl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const/16 v1, 0x5d0

    const/16 v2, 0x5ea

    invoke-static {v1, v2}, Lafl;->a(CC)Lafl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const/16 v1, 0x5f3

    invoke-static {v1}, Lafl;->a(C)Lafl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const/16 v1, 0x5f4

    invoke-static {v1}, Lafl;->a(C)Lafl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const/16 v1, 0x6ff

    invoke-static {v9, v1}, Lafl;->a(CC)Lafl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const/16 v1, 0x750

    const/16 v2, 0x77f

    invoke-static {v1, v2}, Lafl;->a(CC)Lafl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const/16 v1, 0xe00

    const/16 v2, 0xe7f

    invoke-static {v1, v2}, Lafl;->a(CC)Lafl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const/16 v1, 0x1e00

    const/16 v2, 0x20af

    invoke-static {v1, v2}, Lafl;->a(CC)Lafl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const/16 v1, 0x2100

    const/16 v2, 0x213a

    invoke-static {v1, v2}, Lafl;->a(CC)Lafl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const v1, 0xfb50

    const v2, 0xfdff

    invoke-static {v1, v2}, Lafl;->a(CC)Lafl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const v1, 0xfe70

    const v2, 0xfeff

    invoke-static {v1, v2}, Lafl;->a(CC)Lafl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    const v1, 0xff61

    const v2, 0xffdc

    invoke-static {v1, v2}, Lafl;->a(CC)Lafl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafl;->a(Lafl;)Lafl;

    move-result-object v0

    invoke-virtual {v0}, Lafl;->b()Lafl;

    move-result-object v0

    sput-object v0, Lafl;->l:Lafl;

    .line 217
    new-instance v0, Lafw;

    invoke-direct {v0}, Lafw;-><init>()V

    sput-object v0, Lafl;->m:Lafl;

    .line 297
    new-instance v0, Lafx;

    invoke-direct {v0}, Lafx;-><init>()V

    sput-object v0, Lafl;->n:Lafl;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(C)Lafl;
    .registers 2
    .parameter

    .prologue
    .line 380
    new-instance v0, Lafy;

    invoke-direct {v0, p0}, Lafy;-><init>(C)V

    return-object v0
.end method

.method public static a(CC)Lafl;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 497
    if-lt p1, p0, :cond_c

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, LafQ;->a(Z)V

    .line 498
    new-instance v0, Lafp;

    invoke-direct {v0, p0, p1}, Lafp;-><init>(CC)V

    return-object v0

    .line 497
    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(Ljava/lang/CharSequence;)Lafl;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 441
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    .line 465
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 466
    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    .line 468
    new-instance v0, Lafo;

    invoke-direct {v0, v1}, Lafo;-><init>([C)V

    :goto_18
    return-object v0

    .line 443
    :pswitch_19
    sget-object v0, Lafl;->n:Lafl;

    goto :goto_18

    .line 445
    :pswitch_1c
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lafl;->a(C)Lafl;

    move-result-object v0

    goto :goto_18

    .line 447
    :pswitch_25
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 448
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 449
    new-instance v0, Lafn;

    invoke-direct {v0, v1, v2}, Lafn;-><init>(CC)V

    goto :goto_18

    .line 441
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1c
        :pswitch_25
    .end packed-switch
.end method

.method public static b(C)Lafl;
    .registers 2
    .parameter

    .prologue
    .line 417
    new-instance v0, Lafz;

    invoke-direct {v0, p0}, Lafz;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)I
    .registers 5
    .parameter

    .prologue
    .line 789
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 790
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_15

    .line 791
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lafl;->a(C)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 795
    :goto_11
    return v0

    .line 790
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 795
    :cond_15
    const/4 v0, -0x1

    goto :goto_11
.end method

.method public a(Ljava/lang/CharSequence;I)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 814
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 815
    invoke-static {p2, v1}, LafQ;->b(II)I

    move v0, p2

    .line 816
    :goto_8
    if-ge v0, v1, :cond_18

    .line 817
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lafl;->a(C)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 821
    :goto_14
    return v0

    .line 816
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 821
    :cond_18
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public a()Lafl;
    .registers 2

    .prologue
    .line 557
    .line 558
    new-instance v0, Lafq;

    invoke-direct {v0, p0, p0}, Lafq;-><init>(Lafl;Lafl;)V

    return-object v0
.end method

.method public a(Lafl;)Lafl;
    .registers 6
    .parameter

    .prologue
    .line 615
    new-instance v1, LafB;

    const/4 v0, 0x2

    new-array v2, v0, [Lafl;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    const/4 v3, 0x1

    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafl;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, LafB;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method a(LafA;)V
    .registers 5
    .parameter

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 698
    :goto_1
    invoke-virtual {p0, v0}, Lafl;->a(C)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 699
    invoke-virtual {p1, v0}, LafA;->a(C)V

    .line 701
    :cond_a
    add-int/lit8 v1, v0, 0x1

    int-to-char v1, v1

    const v2, 0xffff

    if-ne v0, v2, :cond_13

    .line 705
    return-void

    :cond_13
    move v0, v1

    goto :goto_1
.end method

.method public abstract a(C)Z
.end method

.method public a(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter

    .prologue
    .line 753
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_17

    .line 754
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lafl;->a(C)Z

    move-result v1

    if-nez v1, :cond_14

    .line 755
    const/4 v0, 0x0

    .line 758
    :goto_13
    return v0

    .line 753
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 758
    :cond_17
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public b()Lafl;
    .registers 2

    .prologue
    .line 657
    invoke-static {p0}, LafO;->a(Lafl;)Lafl;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter

    .prologue
    .line 773
    invoke-virtual {p0, p1}, Lafl;->a(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method c()Lafl;
    .registers 3

    .prologue
    .line 672
    new-instance v0, LafA;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LafA;-><init>(Lafm;)V

    .line 673
    invoke-virtual {p0, v0}, Lafl;->a(LafA;)V

    .line 675
    new-instance v1, Lafr;

    invoke-direct {v1, p0, v0}, Lafr;-><init>(Lafl;LafA;)V

    return-object v1
.end method
