.class public Lcom/diotek/dhwr/eur/b2b/DHWR;
.super Ljava/lang/Object;
.source "DHWR.java"


# static fields
.field public static final DTYPE_AUTO_SPACE:I

.field public static final DTYPE_BOTH_SIMP_TRAD:I

.field public static final DTYPE_CONSONANT:I

.field public static final DTYPE_CONS_RECOMMEND:I

.field public static final DTYPE_CURRENCY:I

.field public static final DTYPE_CURSIVE:I

.field public static final DTYPE_ENDPUNC:I

.field public static final DTYPE_JOHAP:I

.field public static final DTYPE_LOWERCASE:I

.field public static final DTYPE_MULTI_CHARS:I

.field public static final DTYPE_MULTI_LINE:I

.field public static final DTYPE_NONE:I

.field public static final DTYPE_NUMERIC:I

.field public static final DTYPE_ONLY_SIMP:I

.field public static final DTYPE_ONLY_TRAD:I

.field public static final DTYPE_SIGN:I

.field public static final DTYPE_SIMP_TO_TRAD:I

.field public static final DTYPE_TONE:I

.field public static final DTYPE_TRAD_TO_SIMP:I

.field public static final DTYPE_UNISTROKE:I

.field public static final DTYPE_UPPERCASE:I

.field public static final DTYPE_VOWEL:I

.field public static final DTYPE_VOWEL_DEPENDENT:I

.field public static final DTYPE_WANSUNG:I

.field public static final DTYPE_WANSUNG_EX:I


# instance fields
.field public nCands:I

.field public nMode:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 7
    const-string v0, "dhwr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_NONE:I

    .line 160
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_MULTI_CHARS:I

    .line 161
    invoke-static {v1}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_UPPERCASE:I

    .line 162
    invoke-static {v2}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_LOWERCASE:I

    .line 163
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_AUTO_SPACE:I

    .line 164
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_MULTI_LINE:I

    .line 165
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_UNISTROKE:I

    .line 166
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_CURSIVE:I

    .line 167
    invoke-static {v3}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_WANSUNG:I

    .line 168
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_JOHAP:I

    .line 169
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_CONSONANT:I

    .line 170
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_CONS_RECOMMEND:I

    .line 171
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_VOWEL:I

    .line 172
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_VOWEL_DEPENDENT:I

    .line 173
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_TONE:I

    .line 174
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_CURRENCY:I

    .line 175
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_SIMP_TO_TRAD:I

    .line 176
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_TRAD_TO_SIMP:I

    .line 177
    invoke-static {v1}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_ONLY_TRAD:I

    .line 178
    invoke-static {v2}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_ONLY_SIMP:I

    .line 179
    invoke-static {v3}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_BOTH_SIMP_TRAD:I

    .line 180
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_ENDPUNC:I

    .line 181
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_WANSUNG_EX:I

    .line 182
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_NUMERIC:I

    .line 183
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_SIGN:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 271
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput v0, p0, Lcom/diotek/dhwr/eur/b2b/DHWR;->type:I

    .line 274
    iput v0, p0, Lcom/diotek/dhwr/eur/b2b/DHWR;->nMode:I

    .line 275
    const/16 v0, 0xa

    iput v0, p0, Lcom/diotek/dhwr/eur/b2b/DHWR;->nCands:I

    .line 276
    return-void
.end method

.method public static final native AddPoint(SS)I
.end method

.method private static final BIT_FLAG(I)I
    .registers 2
    .parameter "n"

    .prologue
    .line 26
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method public static final Create()I
    .registers 1

    .prologue
    .line 279
    const-string v0, "83995009015299500901569844848206984484827556028482600377980365390915910062482601431377980386980915914172348482086832821127234848210626630777454049044399500901"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->Create([C)I

    move-result v0

    return v0
.end method

.method public static final native Create([C)I
.end method

.method public static final native EndStroke()I
.end method

.method public static final native GetInkCount([I)I
.end method

.method public static final native InkClear()I
.end method

.method public static final native Recognize([C)I
.end method

.method public static final native SetAttribute(I[[II[I)I
.end method

.method public static final native SetWritingArea(IIIII)I
.end method
