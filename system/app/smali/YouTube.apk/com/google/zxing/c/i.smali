.class public final Lcom/google/zxing/c/i;
.super Lcom/google/zxing/c/k;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 6
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/zxing/c/k;-><init>()V

    .line 41
    if-nez p1, :cond_112

    const/4 v0, 0x0

    move-object v1, v0

    .line 43
    :goto_7
    if-eqz p1, :cond_11d

    sget-object v0, Lcom/google/zxing/d;->g:Lcom/google/zxing/d;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11d

    const/4 v0, 0x1

    .line 45
    :goto_12
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    .line 46
    if-eqz v1, :cond_c3

    .line 47
    sget-object v2, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    sget-object v2, Lcom/google/zxing/a;->n:Lcom/google/zxing/a;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    sget-object v2, Lcom/google/zxing/a;->g:Lcom/google/zxing/a;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    sget-object v2, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 51
    :cond_3b
    iget-object v2, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/c/j;

    invoke-direct {v3, p1}, Lcom/google/zxing/c/j;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 53
    :cond_45
    sget-object v2, Lcom/google/zxing/a;->c:Lcom/google/zxing/a;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 54
    iget-object v2, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/c/c;

    invoke-direct {v3, v0}, Lcom/google/zxing/c/c;-><init>(Z)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 56
    :cond_57
    sget-object v0, Lcom/google/zxing/a;->d:Lcom/google/zxing/a;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 57
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/c/d;

    invoke-direct {v2}, Lcom/google/zxing/c/d;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 59
    :cond_69
    sget-object v0, Lcom/google/zxing/a;->e:Lcom/google/zxing/a;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 60
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/c/b;

    invoke-direct {v2}, Lcom/google/zxing/c/b;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 62
    :cond_7b
    sget-object v0, Lcom/google/zxing/a;->i:Lcom/google/zxing/a;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 63
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/c/h;

    invoke-direct {v2}, Lcom/google/zxing/c/h;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 65
    :cond_8d
    sget-object v0, Lcom/google/zxing/a;->b:Lcom/google/zxing/a;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 66
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/c/a;

    invoke-direct {v2}, Lcom/google/zxing/c/a;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 68
    :cond_9f
    sget-object v0, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 69
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/c/a/e;

    invoke-direct {v2}, Lcom/google/zxing/c/a/e;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 71
    :cond_b1
    sget-object v0, Lcom/google/zxing/a;->m:Lcom/google/zxing/a;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 72
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/c/a/a/b;

    invoke-direct {v1}, Lcom/google/zxing/c/a/a/b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 75
    :cond_c3
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_111

    .line 76
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/c/j;

    invoke-direct {v1, p1}, Lcom/google/zxing/c/j;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/c/c;

    invoke-direct {v1}, Lcom/google/zxing/c/c;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/c/d;

    invoke-direct {v1}, Lcom/google/zxing/c/d;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/c/b;

    invoke-direct {v1}, Lcom/google/zxing/c/b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/c/h;

    invoke-direct {v1}, Lcom/google/zxing/c/h;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/c/a/e;

    invoke-direct {v1}, Lcom/google/zxing/c/a/e;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/c/a/a/b;

    invoke-direct {v1}, Lcom/google/zxing/c/a/a/b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 85
    :cond_111
    return-void

    .line 41
    :cond_112
    sget-object v0, Lcom/google/zxing/d;->c:Lcom/google/zxing/d;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    move-object v1, v0

    goto/16 :goto_7

    .line 43
    :cond_11d
    const/4 v0, 0x0

    goto/16 :goto_12
.end method


# virtual methods
.method public final a(ILcom/google/zxing/common/a;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 89
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_1c

    .line 90
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/c/k;

    .line 92
    :try_start_12
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/zxing/c/k;->a(ILcom/google/zxing/common/a;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    :try_end_15
    .catch Lcom/google/zxing/ReaderException; {:try_start_12 .. :try_end_15} :catch_17

    move-result-object v0

    return-object v0

    .line 89
    :catch_17
    move-exception v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 98
    :cond_1c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public final a()V
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 103
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    .line 104
    iget-object v0, p0, Lcom/google/zxing/c/i;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/g;

    .line 105
    invoke-interface {v0}, Lcom/google/zxing/g;->a()V

    .line 103
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 107
    :cond_19
    return-void
.end method
