.class public abstract Lcom/google/common/base/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Q;


# static fields
.field public static final a:Lcom/google/common/base/b;

.field public static final b:Lcom/google/common/base/b;

.field public static final c:Lcom/google/common/base/b;

.field public static final d:Lcom/google/common/base/b;

.field public static final e:Lcom/google/common/base/b;

.field public static final f:Lcom/google/common/base/b;

.field public static final g:Lcom/google/common/base/b;

.field public static final h:Lcom/google/common/base/b;

.field public static final i:Lcom/google/common/base/b;

.field public static final j:Lcom/google/common/base/b;

.field public static final k:Lcom/google/common/base/b;

.field public static final l:Lcom/google/common/base/b;

.field public static final m:Lcom/google/common/base/b;

.field public static final n:Lcom/google/common/base/b;

.field public static final o:Lcom/google/common/base/b;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/16 v10, 0x600

    const/16 v9, 0x20

    const/16 v8, 0x7f

    const/16 v7, 0x2000

    const/4 v1, 0x0

    .line 69
    const-string v0, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000\u00a0\u180e\u202f"

    invoke-static {v0}, Lcom/google/common/base/b;->a(Ljava/lang/CharSequence;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x200a

    invoke-static {v7, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/b;->a()Lcom/google/common/base/b;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/b;->a:Lcom/google/common/base/b;

    .line 81
    const-string v0, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000"

    invoke-static {v0}, Lcom/google/common/base/b;->a(Ljava/lang/CharSequence;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x2006

    invoke-static {v7, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x2008

    const/16 v3, 0x200a

    invoke-static {v2, v3}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/b;->a()Lcom/google/common/base/b;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/b;->b:Lcom/google/common/base/b;

    .line 90
    invoke-static {v1, v8}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/b;->c:Lcom/google/common/base/b;

    .line 99
    const/16 v0, 0x30

    const/16 v2, 0x39

    invoke-static {v0, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v0

    .line 100
    const-string v2, "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    .line 104
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move-object v2, v0

    move v0, v1

    :goto_58
    if-ge v0, v4, :cond_6a

    aget-char v5, v3, v0

    .line 105
    add-int/lit8 v6, v5, 0x9

    int-to-char v6, v6

    invoke-static {v5, v6}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v2

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 107
    :cond_6a
    invoke-virtual {v2}, Lcom/google/common/base/b;->a()Lcom/google/common/base/b;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/b;->d:Lcom/google/common/base/b;

    .line 116
    const/16 v0, 0x9

    const/16 v2, 0xd

    invoke-static {v0, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x1c

    invoke-static {v2, v9}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x1680

    invoke-static {v2}, Lcom/google/common/base/b;->a(C)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x180e

    invoke-static {v2}, Lcom/google/common/base/b;->a(C)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x2006

    invoke-static {v7, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x2008

    const/16 v3, 0x200b

    invoke-static {v2, v3}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x2028

    const/16 v3, 0x2029

    invoke-static {v2, v3}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x205f

    invoke-static {v2}, Lcom/google/common/base/b;->a(C)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x3000

    invoke-static {v2}, Lcom/google/common/base/b;->a(C)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/b;->a()Lcom/google/common/base/b;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/b;->e:Lcom/google/common/base/b;

    .line 132
    new-instance v0, Lcom/google/common/base/c;

    invoke-direct {v0}, Lcom/google/common/base/c;-><init>()V

    sput-object v0, Lcom/google/common/base/b;->f:Lcom/google/common/base/b;

    .line 143
    new-instance v0, Lcom/google/common/base/h;

    invoke-direct {v0}, Lcom/google/common/base/h;-><init>()V

    sput-object v0, Lcom/google/common/base/b;->g:Lcom/google/common/base/b;

    .line 153
    new-instance v0, Lcom/google/common/base/i;

    invoke-direct {v0}, Lcom/google/common/base/i;-><init>()V

    sput-object v0, Lcom/google/common/base/b;->h:Lcom/google/common/base/b;

    .line 163
    new-instance v0, Lcom/google/common/base/j;

    invoke-direct {v0}, Lcom/google/common/base/j;-><init>()V

    sput-object v0, Lcom/google/common/base/b;->i:Lcom/google/common/base/b;

    .line 173
    new-instance v0, Lcom/google/common/base/k;

    invoke-direct {v0}, Lcom/google/common/base/k;-><init>()V

    sput-object v0, Lcom/google/common/base/b;->j:Lcom/google/common/base/b;

    .line 183
    const/16 v0, 0x1f

    invoke-static {v1, v0}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x9f

    invoke-static {v8, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/b;->k:Lcom/google/common/base/b;

    .line 191
    invoke-static {v1, v9}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0xa0

    invoke-static {v8, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0xad

    invoke-static {v2}, Lcom/google/common/base/b;->a(C)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x603

    invoke-static {v10, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const-string v2, "\u06dd\u070f\u1680\u17b4\u17b5\u180e"

    invoke-static {v2}, Lcom/google/common/base/b;->a(Ljava/lang/CharSequence;)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x200f

    invoke-static {v7, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x2028

    const/16 v3, 0x202f

    invoke-static {v2, v3}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x205f

    const/16 v3, 0x2064

    invoke-static {v2, v3}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x206a

    const/16 v3, 0x206f

    invoke-static {v2, v3}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v2, 0x3000

    invoke-static {v2}, Lcom/google/common/base/b;->a(C)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const v2, 0xd800

    const v3, 0xf8ff

    invoke-static {v2, v3}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const-string v2, "\ufeff\ufff9\ufffa\ufffb"

    invoke-static {v2}, Lcom/google/common/base/b;->a(Ljava/lang/CharSequence;)Lcom/google/common/base/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/b;->a()Lcom/google/common/base/b;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/b;->l:Lcom/google/common/base/b;

    .line 213
    const/16 v0, 0x4f9

    invoke-static {v1, v0}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v1, 0x5be

    invoke-static {v1}, Lcom/google/common/base/b;->a(C)Lcom/google/common/base/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v1, 0x5d0

    const/16 v2, 0x5ea

    invoke-static {v1, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v1, 0x5f3

    invoke-static {v1}, Lcom/google/common/base/b;->a(C)Lcom/google/common/base/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v1, 0x5f4

    invoke-static {v1}, Lcom/google/common/base/b;->a(C)Lcom/google/common/base/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v1, 0x6ff

    invoke-static {v10, v1}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v1, 0x750

    const/16 v2, 0x77f

    invoke-static {v1, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v1, 0xe00

    const/16 v2, 0xe7f

    invoke-static {v1, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v1, 0x1e00

    const/16 v2, 0x20af

    invoke-static {v1, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const/16 v1, 0x2100

    const/16 v2, 0x213a

    invoke-static {v1, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const v1, 0xfb50

    const v2, 0xfdff

    invoke-static {v1, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const v1, 0xfe70

    const v2, 0xfeff

    invoke-static {v1, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    const v1, 0xff61

    const v2, 0xffdc

    invoke-static {v1, v2}, Lcom/google/common/base/b;->a(CC)Lcom/google/common/base/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/b;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/b;->a()Lcom/google/common/base/b;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/b;->m:Lcom/google/common/base/b;

    .line 229
    new-instance v0, Lcom/google/common/base/l;

    invoke-direct {v0}, Lcom/google/common/base/l;-><init>()V

    sput-object v0, Lcom/google/common/base/b;->n:Lcom/google/common/base/b;

    .line 309
    new-instance v0, Lcom/google/common/base/m;

    invoke-direct {v0}, Lcom/google/common/base/m;-><init>()V

    sput-object v0, Lcom/google/common/base/b;->o:Lcom/google/common/base/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    return-void
.end method

.method public static a(C)Lcom/google/common/base/b;
    .registers 2
    .parameter

    .prologue
    .line 392
    new-instance v0, Lcom/google/common/base/n;

    invoke-direct {v0, p0}, Lcom/google/common/base/n;-><init>(C)V

    return-object v0
.end method

.method public static a(CC)Lcom/google/common/base/b;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 509
    if-lt p1, p0, :cond_c

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 510
    new-instance v0, Lcom/google/common/base/f;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/f;-><init>(CC)V

    return-object v0

    .line 509
    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(Ljava/lang/CharSequence;)Lcom/google/common/base/b;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 453
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    .line 477
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 478
    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    .line 480
    new-instance v0, Lcom/google/common/base/e;

    invoke-direct {v0, v1}, Lcom/google/common/base/e;-><init>([C)V

    :goto_18
    return-object v0

    .line 455
    :pswitch_19
    sget-object v0, Lcom/google/common/base/b;->o:Lcom/google/common/base/b;

    goto :goto_18

    .line 457
    :pswitch_1c
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/b;->a(C)Lcom/google/common/base/b;

    move-result-object v0

    goto :goto_18

    .line 459
    :pswitch_25
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 460
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 461
    new-instance v0, Lcom/google/common/base/d;

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/d;-><init>(CC)V

    goto :goto_18

    .line 453
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
    .line 819
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 820
    invoke-static {p2, v1}, Lcom/google/common/base/P;->b(II)I

    move v0, p2

    .line 821
    :goto_8
    if-ge v0, v1, :cond_18

    .line 822
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/b;->b(C)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 826
    :goto_14
    return v0

    .line 821
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 826
    :cond_18
    const/4 v0, -0x1

    goto :goto_14
.end method

.method public a()Lcom/google/common/base/b;
    .registers 2

    .prologue
    .line 662
    invoke-static {p0}, Lcom/google/common/base/N;->a(Lcom/google/common/base/b;)Lcom/google/common/base/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/common/base/b;)Lcom/google/common/base/b;
    .registers 6
    .parameter

    .prologue
    .line 620
    new-instance v1, Lcom/google/common/base/p;

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/google/common/base/b;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/b;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/common/base/p;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method a(Lcom/google/common/base/o;)V
    .registers 5
    .parameter

    .prologue
    .line 701
    const/4 v0, 0x0

    .line 703
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/common/base/b;->b(C)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 704
    invoke-virtual {p1, v0}, Lcom/google/common/base/o;->a(C)V

    .line 706
    :cond_a
    add-int/lit8 v1, v0, 0x1

    int-to-char v1, v1

    const v2, 0xffff

    if-ne v0, v2, :cond_13

    .line 710
    return-void

    :cond_13
    move v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/Character;)Z
    .registers 3
    .parameter

    .prologue
    .line 1142
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/b;->b(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 45
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/common/base/b;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method b()Lcom/google/common/base/b;
    .registers 3

    .prologue
    .line 677
    new-instance v0, Lcom/google/common/base/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/o;-><init>(Lcom/google/common/base/c;)V

    .line 678
    invoke-virtual {p0, v0}, Lcom/google/common/base/b;->a(Lcom/google/common/base/o;)V

    .line 680
    new-instance v1, Lcom/google/common/base/g;

    invoke-direct {v1, p0, v0}, Lcom/google/common/base/g;-><init>(Lcom/google/common/base/b;Lcom/google/common/base/o;)V

    return-object v1
.end method

.method public abstract b(C)Z
.end method
