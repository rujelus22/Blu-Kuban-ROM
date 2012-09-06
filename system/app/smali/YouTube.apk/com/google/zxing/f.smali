.class public final Lcom/google/zxing/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/g;


# instance fields
.field private a:Ljava/util/Hashtable;

.field private final b:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    return-void
.end method

.method private b(Lcom/google/zxing/c;)Lcom/google/zxing/h;
    .registers 6
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 157
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_1e

    .line 158
    iget-object v0, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/g;

    .line 160
    :try_start_12
    iget-object v3, p0, Lcom/google/zxing/f;->a:Ljava/util/Hashtable;

    invoke-interface {v0, p1, v3}, Lcom/google/zxing/g;->a(Lcom/google/zxing/c;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    :try_end_17
    .catch Lcom/google/zxing/ReaderException; {:try_start_12 .. :try_end_17} :catch_19

    move-result-object v0

    return-object v0

    .line 157
    :catch_19
    move-exception v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 166
    :cond_1e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/zxing/c;)Lcom/google/zxing/h;
    .registers 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/f;->a(Ljava/util/Hashtable;)V

    .line 81
    :cond_c
    invoke-direct {p0, p1}, Lcom/google/zxing/f;->b(Lcom/google/zxing/c;)Lcom/google/zxing/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/zxing/c;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0, p2}, Lcom/google/zxing/f;->a(Ljava/util/Hashtable;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/google/zxing/f;->b(Lcom/google/zxing/c;)Lcom/google/zxing/h;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .registers 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 149
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    .line 150
    iget-object v0, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/g;

    .line 151
    invoke-interface {v0}, Lcom/google/zxing/g;->a()V

    .line 149
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 153
    :cond_19
    return-void
.end method

.method public final a(Ljava/util/Hashtable;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    iput-object p1, p0, Lcom/google/zxing/f;->a:Ljava/util/Hashtable;

    .line 94
    if-eqz p1, :cond_117

    sget-object v0, Lcom/google/zxing/d;->d:Lcom/google/zxing/d;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    move v3, v2

    .line 95
    :goto_f
    if-nez p1, :cond_11a

    const/4 v0, 0x0

    .line 96
    :goto_12
    iget-object v4, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 97
    if-eqz v0, :cond_ce

    .line 98
    sget-object v4, Lcom/google/zxing/a;->n:Lcom/google/zxing/a;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    sget-object v4, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    sget-object v4, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    sget-object v4, Lcom/google/zxing/a;->g:Lcom/google/zxing/a;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    sget-object v4, Lcom/google/zxing/a;->c:Lcom/google/zxing/a;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    sget-object v4, Lcom/google/zxing/a;->d:Lcom/google/zxing/a;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    sget-object v4, Lcom/google/zxing/a;->e:Lcom/google/zxing/a;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    sget-object v4, Lcom/google/zxing/a;->i:Lcom/google/zxing/a;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    sget-object v4, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    sget-object v4, Lcom/google/zxing/a;->m:Lcom/google/zxing/a;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    :cond_69
    move v1, v2

    .line 111
    :cond_6a
    if-eqz v1, :cond_78

    if-nez v3, :cond_78

    .line 112
    iget-object v2, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/c/i;

    invoke-direct {v4, p1}, Lcom/google/zxing/c/i;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 114
    :cond_78
    sget-object v2, Lcom/google/zxing/a;->k:Lcom/google/zxing/a;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 115
    iget-object v2, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/e/a;

    invoke-direct {v4}, Lcom/google/zxing/e/a;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 117
    :cond_8a
    sget-object v2, Lcom/google/zxing/a;->f:Lcom/google/zxing/a;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 118
    iget-object v2, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/b/a;

    invoke-direct {v4}, Lcom/google/zxing/b/a;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 120
    :cond_9c
    sget-object v2, Lcom/google/zxing/a;->a:Lcom/google/zxing/a;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 121
    iget-object v2, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    new-instance v4, Lcom/google/zxing/a/b;

    invoke-direct {v4}, Lcom/google/zxing/a/b;-><init>()V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 123
    :cond_ae
    sget-object v2, Lcom/google/zxing/a;->j:Lcom/google/zxing/a;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 124
    iget-object v0, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/d/a;

    invoke-direct {v2}, Lcom/google/zxing/d/a;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 127
    :cond_c0
    if-eqz v1, :cond_ce

    if-eqz v3, :cond_ce

    .line 128
    iget-object v0, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/c/i;

    invoke-direct {v1, p1}, Lcom/google/zxing/c/i;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 131
    :cond_ce
    iget-object v0, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 132
    if-nez v3, :cond_e2

    .line 133
    iget-object v0, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/c/i;

    invoke-direct {v1, p1}, Lcom/google/zxing/c/i;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 136
    :cond_e2
    iget-object v0, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/e/a;

    invoke-direct {v1}, Lcom/google/zxing/e/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/b/a;

    invoke-direct {v1}, Lcom/google/zxing/b/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/a/b;

    invoke-direct {v1}, Lcom/google/zxing/a/b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/d/a;

    invoke-direct {v1}, Lcom/google/zxing/d/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 141
    if-eqz v3, :cond_116

    .line 142
    iget-object v0, p0, Lcom/google/zxing/f;->b:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/c/i;

    invoke-direct {v1, p1}, Lcom/google/zxing/c/i;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 145
    :cond_116
    return-void

    :cond_117
    move v3, v1

    .line 94
    goto/16 :goto_f

    .line 95
    :cond_11a
    sget-object v0, Lcom/google/zxing/d;->c:Lcom/google/zxing/d;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    goto/16 :goto_12
.end method
