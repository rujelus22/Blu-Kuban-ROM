.class final Lcom/anddoes/launcher/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Ljava/util/ArrayList;

.field c:Ljava/util/ArrayList;

.field d:Ljava/util/ArrayList;

.field e:I

.field f:I

.field g:Lcom/anddoes/launcher/aq;

.field h:Lcom/anddoes/launcher/aq;


# direct methods
.method constructor <init>(ILjava/util/ArrayList;IILcom/anddoes/launcher/aq;Lcom/anddoes/launcher/aq;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/anddoes/launcher/ar;->a:I

    .line 96
    iput-object p2, p0, Lcom/anddoes/launcher/ar;->b:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/ar;->d:Ljava/util/ArrayList;

    .line 98
    iput p3, p0, Lcom/anddoes/launcher/ar;->e:I

    .line 99
    iput p4, p0, Lcom/anddoes/launcher/ar;->f:I

    .line 100
    iput-object p5, p0, Lcom/anddoes/launcher/ar;->g:Lcom/anddoes/launcher/aq;

    .line 101
    iput-object p6, p0, Lcom/anddoes/launcher/ar;->h:Lcom/anddoes/launcher/aq;

    .line 102
    return-void
.end method


# virtual methods
.method final a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/anddoes/launcher/ar;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 107
    if-eqz p1, :cond_12

    .line 108
    iget-object v0, p0, Lcom/anddoes/launcher/ar;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 112
    :cond_12
    iget-object v0, p0, Lcom/anddoes/launcher/ar;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    :cond_17
    iget-object v0, p0, Lcom/anddoes/launcher/ar;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    .line 115
    if-eqz p1, :cond_29

    .line 116
    iget-object v0, p0, Lcom/anddoes/launcher/ar;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_39

    .line 120
    :cond_29
    iget-object v0, p0, Lcom/anddoes/launcher/ar;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    :cond_2e
    return-void

    .line 108
    :cond_2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 109
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_c

    .line 116
    :cond_39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 117
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_23
.end method
