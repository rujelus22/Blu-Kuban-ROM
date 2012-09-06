.class final Lcom/anddoes/launcher/dd;
.super Lcom/anddoes/launcher/ec;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Ljava/lang/CharSequence;

.field c:Ljava/util/ArrayList;

.field d:Ljava/util/ArrayList;

.field private e:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/anddoes/launcher/ec;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/dd;->c:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/dd;->d:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/anddoes/launcher/dd;->i:I

    .line 53
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 118
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/anddoes/launcher/dd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_b

    .line 121
    return-void

    .line 119
    :cond_b
    iget-object v0, p0, Lcom/anddoes/launcher/dd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/de;

    invoke-interface {v0}, Lcom/anddoes/launcher/de;->k()V

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/anddoes/launcher/dd;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method final a(Landroid/content/ContentValues;)V
    .registers 4
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/anddoes/launcher/ec;->a(Landroid/content/ContentValues;)V

    .line 99
    const-string v0, "title"

    iget-object v1, p0, Lcom/anddoes/launcher/dd;->b:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/anddoes/launcher/dd;->e:Landroid/graphics/Bitmap;

    if-nez v0, :cond_18

    .line 101
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 105
    :goto_17
    return-void

    .line 103
    :cond_18
    iget-object v0, p0, Lcom/anddoes/launcher/dd;->e:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/anddoes/launcher/dd;->a(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    goto :goto_17
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/anddoes/launcher/dd;->e:Landroid/graphics/Bitmap;

    .line 57
    return-void
.end method

.method final a(Lcom/anddoes/launcher/de;)V
    .registers 3
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/anddoes/launcher/dd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public final a(Lcom/anddoes/launcher/ec;)V
    .registers 4
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/anddoes/launcher/dd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/anddoes/launcher/dd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_13

    .line 73
    invoke-direct {p0}, Lcom/anddoes/launcher/dd;->c()V

    .line 74
    return-void

    .line 71
    :cond_13
    iget-object v0, p0, Lcom/anddoes/launcher/dd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/de;

    invoke-interface {v0, p1}, Lcom/anddoes/launcher/de;->a(Lcom/anddoes/launcher/ec;)V

    .line 70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/anddoes/launcher/dd;->b:Ljava/lang/CharSequence;

    .line 91
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/anddoes/launcher/dd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_d

    .line 94
    return-void

    .line 92
    :cond_d
    iget-object v0, p0, Lcom/anddoes/launcher/dd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/de;

    invoke-interface {v0, p1}, Lcom/anddoes/launcher/de;->a(Ljava/lang/CharSequence;)V

    .line 91
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4
.end method

.method final a_()V
    .registers 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/anddoes/launcher/ec;->a_()V

    .line 126
    iget-object v0, p0, Lcom/anddoes/launcher/dd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    return-void
.end method

.method public final b(Lcom/anddoes/launcher/ec;)V
    .registers 4
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/anddoes/launcher/dd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 83
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/anddoes/launcher/dd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_13

    .line 86
    invoke-direct {p0}, Lcom/anddoes/launcher/dd;->c()V

    .line 87
    return-void

    .line 84
    :cond_13
    iget-object v0, p0, Lcom/anddoes/launcher/dd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/de;

    invoke-interface {v0, p1}, Lcom/anddoes/launcher/de;->b(Lcom/anddoes/launcher/ec;)V

    .line 83
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method
