.class public abstract Lcom/google/common/base/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/ah;


# static fields
.field public static final a:Lcom/google/common/base/d;

.field public static final b:Lcom/google/common/base/d;

.field public static final c:Lcom/google/common/base/d;

.field public static final d:Lcom/google/common/base/d;

.field public static final e:Lcom/google/common/base/d;

.field public static final f:Lcom/google/common/base/d;

.field public static final g:Lcom/google/common/base/d;

.field public static final h:Lcom/google/common/base/d;

.field public static final i:Lcom/google/common/base/d;

.field public static final j:Lcom/google/common/base/d;

.field public static final k:Lcom/google/common/base/d;

.field public static final l:Lcom/google/common/base/d;

.field public static final m:Lcom/google/common/base/d;

.field public static final n:Lcom/google/common/base/d;


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

    invoke-static {v0}, Lcom/google/common/base/d;->a(Ljava/lang/CharSequence;)Lcom/google/common/base/d;

    move-result-object v0

    invoke-static {v8, v3}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/d;->a()Lcom/google/common/base/d;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/d;->a:Lcom/google/common/base/d;

    .line 87
    const-string v0, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000"

    invoke-static {v0}, Lcom/google/common/base/d;->a(Ljava/lang/CharSequence;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v2, 0x2006

    invoke-static {v8, v2}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v2, 0x2008

    invoke-static {v2, v3}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/d;->a()Lcom/google/common/base/d;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/d;->b:Lcom/google/common/base/d;

    .line 96
    invoke-static {v1, v7}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/d;->c:Lcom/google/common/base/d;

    .line 105
    const/16 v0, 0x30

    const/16 v2, 0x39

    invoke-static {v0, v2}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

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

    invoke-static {v5, v6}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v2

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 113
    :cond_66
    invoke-virtual {v2}, Lcom/google/common/base/d;->a()Lcom/google/common/base/d;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/d;->d:Lcom/google/common/base/d;

    .line 120
    new-instance v0, Lcom/google/common/base/e;

    invoke-direct {v0}, Lcom/google/common/base/e;-><init>()V

    sput-object v0, Lcom/google/common/base/d;->e:Lcom/google/common/base/d;

    .line 131
    new-instance v0, Lcom/google/common/base/j;

    invoke-direct {v0}, Lcom/google/common/base/j;-><init>()V

    sput-object v0, Lcom/google/common/base/d;->f:Lcom/google/common/base/d;

    .line 141
    new-instance v0, Lcom/google/common/base/k;

    invoke-direct {v0}, Lcom/google/common/base/k;-><init>()V

    sput-object v0, Lcom/google/common/base/d;->g:Lcom/google/common/base/d;

    .line 151
    new-instance v0, Lcom/google/common/base/l;

    invoke-direct {v0}, Lcom/google/common/base/l;-><init>()V

    sput-object v0, Lcom/google/common/base/d;->h:Lcom/google/common/base/d;

    .line 161
    new-instance v0, Lcom/google/common/base/m;

    invoke-direct {v0}, Lcom/google/common/base/m;-><init>()V

    sput-object v0, Lcom/google/common/base/d;->i:Lcom/google/common/base/d;

    .line 171
    const/16 v0, 0x1f

    invoke-static {v1, v0}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v2, 0x9f

    invoke-static {v7, v2}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/d;->j:Lcom/google/common/base/d;

    .line 179
    const/16 v0, 0x20

    invoke-static {v1, v0}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v2, 0xa0

    invoke-static {v7, v2}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v2, 0xad

    invoke-static {v2}, Lcom/google/common/base/d;->a(C)Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v2, 0x603

    invoke-static {v9, v2}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const-string v2, "\u06dd\u070f\u1680\u17b4\u17b5\u180e"

    invoke-static {v2}, Lcom/google/common/base/d;->a(Ljava/lang/CharSequence;)Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v2, 0x200f

    invoke-static {v8, v2}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v2, 0x2028

    const/16 v3, 0x202f

    invoke-static {v2, v3}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v2, 0x205f

    const/16 v3, 0x2064

    invoke-static {v2, v3}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v2, 0x206a

    const/16 v3, 0x206f

    invoke-static {v2, v3}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v2, 0x3000

    invoke-static {v2}, Lcom/google/common/base/d;->a(C)Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const v2, 0xd800

    const v3, 0xf8ff

    invoke-static {v2, v3}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const-string v2, "\ufeff\ufff9\ufffa\ufffb"

    invoke-static {v2}, Lcom/google/common/base/d;->a(Ljava/lang/CharSequence;)Lcom/google/common/base/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/d;->a()Lcom/google/common/base/d;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/d;->k:Lcom/google/common/base/d;

    .line 201
    const/16 v0, 0x4f9

    invoke-static {v1, v0}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v1, 0x5be

    invoke-static {v1}, Lcom/google/common/base/d;->a(C)Lcom/google/common/base/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v1, 0x5d0

    const/16 v2, 0x5ea

    invoke-static {v1, v2}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v1, 0x5f3

    invoke-static {v1}, Lcom/google/common/base/d;->a(C)Lcom/google/common/base/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v1, 0x5f4

    invoke-static {v1}, Lcom/google/common/base/d;->a(C)Lcom/google/common/base/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v1, 0x6ff

    invoke-static {v9, v1}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v1, 0x750

    const/16 v2, 0x77f

    invoke-static {v1, v2}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v1, 0xe00

    const/16 v2, 0xe7f

    invoke-static {v1, v2}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v1, 0x1e00

    const/16 v2, 0x20af

    invoke-static {v1, v2}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const/16 v1, 0x2100

    const/16 v2, 0x213a

    invoke-static {v1, v2}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const v1, 0xfb50

    const v2, 0xfdff

    invoke-static {v1, v2}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const v1, 0xfe70

    const v2, 0xfeff

    invoke-static {v1, v2}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    const v1, 0xff61

    const v2, 0xffdc

    invoke-static {v1, v2}, Lcom/google/common/base/d;->a(CC)Lcom/google/common/base/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/d;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/d;->a()Lcom/google/common/base/d;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/d;->l:Lcom/google/common/base/d;

    .line 217
    new-instance v0, Lcom/google/common/base/n;

    invoke-direct {v0}, Lcom/google/common/base/n;-><init>()V

    sput-object v0, Lcom/google/common/base/d;->m:Lcom/google/common/base/d;

    .line 297
    new-instance v0, Lcom/google/common/base/o;

    invoke-direct {v0}, Lcom/google/common/base/o;-><init>()V

    sput-object v0, Lcom/google/common/base/d;->n:Lcom/google/common/base/d;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(C)Lcom/google/common/base/d;
    .registers 2
    .parameter

    .prologue
    .line 380
    new-instance v0, Lcom/google/common/base/p;

    invoke-direct {v0, p0}, Lcom/google/common/base/p;-><init>(C)V

    return-object v0
.end method

.method public static a(CC)Lcom/google/common/base/d;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 497
    if-lt p1, p0, :cond_c

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 498
    new-instance v0, Lcom/google/common/base/h;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/h;-><init>(CC)V

    return-object v0

    .line 497
    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static a(Ljava/lang/CharSequence;)Lcom/google/common/base/d;
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
    new-instance v0, Lcom/google/common/base/g;

    invoke-direct {v0, v1}, Lcom/google/common/base/g;-><init>([C)V

    :goto_18
    return-object v0

    .line 443
    :pswitch_19
    sget-object v0, Lcom/google/common/base/d;->n:Lcom/google/common/base/d;

    goto :goto_18

    .line 445
    :pswitch_1c
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/d;->a(C)Lcom/google/common/base/d;

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
    new-instance v0, Lcom/google/common/base/f;

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/f;-><init>(CC)V

    goto :goto_18

    .line 441
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1c
        :pswitch_25
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;I)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 814
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 815
    invoke-static {p2, v1}, Lcom/google/common/base/ag;->b(II)I

    move v0, p2

    .line 816
    :goto_8
    if-ge v0, v1, :cond_18

    .line 817
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/d;->b(C)Z

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

.method public a()Lcom/google/common/base/d;
    .registers 2

    .prologue
    .line 657
    invoke-static {p0}, Lcom/google/common/base/ae;->a(Lcom/google/common/base/d;)Lcom/google/common/base/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/common/base/d;)Lcom/google/common/base/d;
    .registers 6
    .parameter

    .prologue
    .line 615
    new-instance v1, Lcom/google/common/base/r;

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/google/common/base/d;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/d;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/common/base/r;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method a(Lcom/google/common/base/q;)V
    .registers 5
    .parameter

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 698
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/common/base/d;->b(C)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 699
    invoke-virtual {p1, v0}, Lcom/google/common/base/q;->a(C)V

    .line 701
    :cond_a
    add-int/lit8 v1, v0, 0x1

    int-to-char v1, v1

    const v2, 0xffff

    if-ne v0, v2, :cond_13

    .line 702
    return-void

    :cond_13
    move v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/Character;)Z
    .registers 3
    .parameter

    .prologue
    .line 1146
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/d;->b(C)Z

    move-result v0

    return v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 51
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/common/base/d;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method final b()Lcom/google/common/base/d;
    .registers 3

    .prologue
    .line 672
    new-instance v0, Lcom/google/common/base/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/q;-><init>(B)V

    .line 673
    invoke-virtual {p0, v0}, Lcom/google/common/base/d;->a(Lcom/google/common/base/q;)V

    .line 675
    new-instance v1, Lcom/google/common/base/i;

    invoke-direct {v1, p0, v0}, Lcom/google/common/base/i;-><init>(Lcom/google/common/base/d;Lcom/google/common/base/q;)V

    return-object v1
.end method

.method public abstract b(C)Z
.end method
