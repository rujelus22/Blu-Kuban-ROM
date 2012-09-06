.class public Lp/n;
.super Lp/h;
.source "SourceFile"


# static fields
.field private static final d:[I


# instance fields
.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 111
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lp/n;->d:[I

    return-void

    :array_a
    .array-data 0x4
        0xeft 0x0t 0xdt 0x7ft
        0xf0t 0x0t 0xdt 0x7ft
        0xf1t 0x0t 0xdt 0x7ft
        0xf2t 0x0t 0xdt 0x7ft
        0xf3t 0x0t 0xdt 0x7ft
        0xf4t 0x0t 0xdt 0x7ft
        0xf5t 0x0t 0xdt 0x7ft
        0xf6t 0x0t 0xdt 0x7ft
        0xf7t 0x0t 0xdt 0x7ft
        0xf8t 0x0t 0xdt 0x7ft
        0xf9t 0x0t 0xdt 0x7ft
        0xfat 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lp/h;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 121
    iput p3, p0, Lp/n;->b:I

    .line 122
    iput p4, p0, Lp/n;->c:I

    .line 123
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lp/n;->b:I

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lp/n;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    .line 134
    iget v0, p0, Lp/n;->c:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2b

    move v0, v1

    .line 140
    :goto_9
    iget v4, p0, Lp/n;->b:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_31

    .line 141
    add-int/lit8 v0, v0, 0x2

    .line 148
    :cond_10
    :goto_10
    invoke-virtual {p0, v2}, Lp/n;->a(I)Lo/K;

    move-result-object v3

    .line 149
    if-eqz v3, :cond_40

    .line 150
    add-int/lit8 v0, v0, 0x6

    .line 151
    iget-object v4, p0, Lp/n;->a:Landroid/content/Context;

    sget-object v5, Lp/n;->d:[I

    aget v0, v5, v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lo/K;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v4, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_2a
    return-object v0

    .line 136
    :cond_2b
    iget v0, p0, Lp/n;->c:I

    if-eq v0, v1, :cond_4b

    move-object v0, v3

    .line 137
    goto :goto_2a

    .line 142
    :cond_31
    iget v4, p0, Lp/n;->b:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_39

    .line 143
    add-int/lit8 v0, v0, 0x4

    goto :goto_10

    .line 144
    :cond_39
    iget v4, p0, Lp/n;->b:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_10

    move-object v0, v3

    .line 145
    goto :goto_2a

    .line 153
    :cond_40
    iget-object v1, p0, Lp/n;->a:Landroid/content/Context;

    sget-object v2, Lp/n;->d:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_4b
    move v0, v2

    goto :goto_9
.end method
