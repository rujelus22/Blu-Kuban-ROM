.class public final Lcom/google/zxing/c/j;
.super Lcom/google/zxing/c/k;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 5
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/zxing/c/k;-><init>()V

    .line 42
    if-nez p1, :cond_6c

    const/4 v0, 0x0

    .line 44
    :goto_6
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/google/zxing/c/j;->a:Ljava/util/Vector;

    .line 45
    if-eqz v0, :cond_45

    .line 46
    sget-object v1, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 47
    iget-object v1, p0, Lcom/google/zxing/c/j;->a:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/c/e;

    invoke-direct {v2}, Lcom/google/zxing/c/e;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 51
    :cond_21
    :goto_21
    sget-object v1, Lcom/google/zxing/a;->g:Lcom/google/zxing/a;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 52
    iget-object v1, p0, Lcom/google/zxing/c/j;->a:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/c/f;

    invoke-direct {v2}, Lcom/google/zxing/c/f;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 54
    :cond_33
    sget-object v1, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 55
    iget-object v0, p0, Lcom/google/zxing/c/j;->a:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/c/o;

    invoke-direct {v1}, Lcom/google/zxing/c/o;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 58
    :cond_45
    iget-object v0, p0, Lcom/google/zxing/c/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 59
    iget-object v0, p0, Lcom/google/zxing/c/j;->a:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/c/e;

    invoke-direct {v1}, Lcom/google/zxing/c/e;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/google/zxing/c/j;->a:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/c/f;

    invoke-direct {v1}, Lcom/google/zxing/c/f;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/google/zxing/c/j;->a:Ljava/util/Vector;

    new-instance v1, Lcom/google/zxing/c/o;

    invoke-direct {v1}, Lcom/google/zxing/c/o;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 64
    :cond_6b
    return-void

    .line 42
    :cond_6c
    sget-object v0, Lcom/google/zxing/d;->c:Lcom/google/zxing/d;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    goto :goto_6

    .line 48
    :cond_75
    sget-object v1, Lcom/google/zxing/a;->n:Lcom/google/zxing/a;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 49
    iget-object v1, p0, Lcom/google/zxing/c/j;->a:Ljava/util/Vector;

    new-instance v2, Lcom/google/zxing/c/l;

    invoke-direct {v2}, Lcom/google/zxing/c/l;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_21
.end method


# virtual methods
.method public final a(ILcom/google/zxing/common/a;Ljava/util/Hashtable;)Lcom/google/zxing/h;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-static {p2}, Lcom/google/zxing/c/n;->a(Lcom/google/zxing/common/a;)[I

    move-result-object v5

    .line 69
    iget-object v0, p0, Lcom/google/zxing/c/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    move v1, v2

    .line 70
    :goto_e
    if-ge v1, v6, :cond_6f

    .line 71
    iget-object v0, p0, Lcom/google/zxing/c/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/c/n;

    .line 74
    :try_start_18
    invoke-virtual {v0, p1, p2, v5, p3}, Lcom/google/zxing/c/n;->a(ILcom/google/zxing/common/a;[ILjava/util/Hashtable;)Lcom/google/zxing/h;
    :try_end_1b
    .catch Lcom/google/zxing/ReaderException; {:try_start_18 .. :try_end_1b} :catch_6a

    move-result-object v1

    .line 90
    sget-object v0, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;

    invoke-virtual {v1}, Lcom/google/zxing/h;->c()Lcom/google/zxing/a;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {v1}, Lcom/google/zxing/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x30

    if-ne v0, v5, :cond_5b

    move v5, v3

    .line 93
    :goto_35
    if-nez p3, :cond_5d

    move-object v0, v4

    .line 94
    :goto_38
    if-eqz v0, :cond_42

    sget-object v6, Lcom/google/zxing/a;->n:Lcom/google/zxing/a;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    :cond_42
    move v0, v3

    .line 96
    :goto_43
    if-eqz v5, :cond_68

    if-eqz v0, :cond_68

    .line 97
    new-instance v0, Lcom/google/zxing/h;

    invoke-virtual {v1}, Lcom/google/zxing/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/zxing/h;->b()[Lcom/google/zxing/j;

    move-result-object v1

    sget-object v3, Lcom/google/zxing/a;->n:Lcom/google/zxing/a;

    invoke-direct {v0, v2, v4, v1, v3}, Lcom/google/zxing/h;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/j;Lcom/google/zxing/a;)V

    .line 99
    :goto_5a
    return-object v0

    :cond_5b
    move v5, v2

    .line 90
    goto :goto_35

    .line 93
    :cond_5d
    sget-object v0, Lcom/google/zxing/d;->c:Lcom/google/zxing/d;

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    goto :goto_38

    :cond_66
    move v0, v2

    .line 94
    goto :goto_43

    :cond_68
    move-object v0, v1

    .line 99
    goto :goto_5a

    .line 76
    :catch_6a
    move-exception v0

    .line 70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 102
    :cond_6f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public final a()V
    .registers 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/zxing/c/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 107
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    .line 108
    iget-object v0, p0, Lcom/google/zxing/c/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/g;

    .line 109
    invoke-interface {v0}, Lcom/google/zxing/g;->a()V

    .line 107
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 111
    :cond_19
    return-void
.end method
