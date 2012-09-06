.class public Lbq;
.super Lbp;
.source "SimpleCursorAdapter.java"


# instance fields
.field private a:Lbr;

.field private a:Lbs;

.field protected a:[I

.field a:[Ljava/lang/String;

.field private b:I

.field protected b:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p6}, Lbp;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lbq;->b:I

    .line 90
    iput-object p5, p0, Lbq;->b:[I

    .line 91
    iput-object p4, p0, Lbq;->a:[Ljava/lang/String;

    .line 92
    invoke-direct {p0, p4}, Lbq;->a([Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private a([Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lbq;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_24

    .line 312
    array-length v1, p1

    .line 313
    iget-object v0, p0, Lbq;->a:[I

    if-eqz v0, :cond_e

    iget-object v0, p0, Lbq;->a:[I

    array-length v0, v0

    if-eq v0, v1, :cond_12

    .line 314
    :cond_e
    new-array v0, v1, [I

    iput-object v0, p0, Lbq;->a:[I

    .line 316
    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_27

    .line 317
    iget-object v2, p0, Lbq;->a:[I

    iget-object v3, p0, Lbq;->a:Landroid/database/Cursor;

    aget-object v4, p1, v0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 320
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Lbq;->a:[I

    .line 322
    :cond_27
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 4
    .parameter

    .prologue
    .line 326
    invoke-super {p0, p1}, Lbp;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lbq;->a:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lbq;->a([Ljava/lang/String;)V

    .line 329
    return-object v0
.end method

.method public a(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lbq;->a:Lbr;

    if-eqz v0, :cond_b

    .line 295
    iget-object v0, p0, Lbq;->a:Lbr;

    invoke-interface {v0, p1}, Lbr;->a(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 300
    :goto_a
    return-object v0

    .line 296
    :cond_b
    iget v0, p0, Lbq;->b:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_17

    .line 297
    iget v0, p0, Lbq;->b:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 300
    :cond_17
    invoke-super {p0, p1}, Lbp;->a(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v4, p0, Lbq;->a:Lbs;

    .line 122
    iget-object v0, p0, Lbq;->b:[I

    array-length v5, v0

    .line 123
    iget-object v6, p0, Lbq;->a:[I

    .line 124
    iget-object v7, p0, Lbq;->b:[I

    move v3, v2

    .line 126
    :goto_b
    if-ge v3, v5, :cond_67

    .line 127
    aget v0, v7, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_32

    .line 130
    if-eqz v4, :cond_68

    .line 131
    aget v1, v6, v3

    invoke-interface {v4, v0, p3, v1}, Lbs;->a(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v1

    .line 134
    :goto_1d
    if-nez v1, :cond_32

    .line 135
    aget v1, v6, v3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 136
    if-nez v1, :cond_29

    .line 137
    const-string v1, ""

    .line 140
    :cond_29
    instance-of v8, v0, Landroid/widget/TextView;

    if-eqz v8, :cond_36

    .line 141
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lbq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 126
    :cond_32
    :goto_32
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b

    .line 142
    :cond_36
    instance-of v8, v0, Landroid/widget/ImageView;

    if-eqz v8, :cond_40

    .line 143
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lbq;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_32

    .line 145
    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not a "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_67
    return-void

    :cond_68
    move v1, v2

    goto :goto_1d
.end method

.method public a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 195
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    .line 199
    :goto_7
    return-void

    .line 196
    :catch_8
    move-exception v0

    .line 197
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_7
.end method

.method public a(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method

.method public a(Lbs;)V
    .registers 2
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lbq;->a:Lbs;

    .line 176
    return-void
.end method
