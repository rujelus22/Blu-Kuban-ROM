.class public Lp/l;
.super Lp/h;
.source "SourceFile"


# static fields
.field private static final c:[I


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 221
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lp/l;->c:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x6t 0x1t 0xdt 0x7ft
        0x9t 0x1t 0xdt 0x7ft
        0x7t 0x1t 0xdt 0x7ft
        0xat 0x1t 0xdt 0x7ft
        0x8t 0x1t 0xdt 0x7ft
        0xbt 0x1t 0xdt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Lp/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 232
    iput p3, p0, Lp/l;->b:I

    .line 233
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 266
    const/4 v0, 0x7

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Lp/l;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 242
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lp/l;->a(I)Lo/K;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_1c

    .line 244
    iget-object v1, p0, Lp/l;->a:Landroid/content/Context;

    const v3, 0x7f0d010c

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lo/K;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_1b
    return-object v0

    .line 249
    :cond_1c
    iget v0, p0, Lp/l;->b:I

    if-ne v0, v5, :cond_3c

    move v0, v1

    .line 255
    :goto_21
    invoke-virtual {p0, v1}, Lp/l;->a(I)Lo/K;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_42

    .line 257
    add-int/lit8 v0, v0, 0x1

    .line 258
    iget-object v3, p0, Lp/l;->a:Landroid/content/Context;

    sget-object v4, Lp/l;->c:[I

    aget v0, v4, v0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lo/K;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 251
    :cond_3c
    iget v0, p0, Lp/l;->b:I

    if-ne v0, v1, :cond_4d

    .line 252
    const/4 v0, 0x4

    goto :goto_21

    .line 260
    :cond_42
    iget-object v1, p0, Lp/l;->a:Landroid/content/Context;

    sget-object v2, Lp/l;->c:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_4d
    move v0, v2

    goto :goto_21
.end method
