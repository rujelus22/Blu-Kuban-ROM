.class public abstract Lcom/dropbox/android/taskqueue/k;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field protected e:I

.field protected f:Ljava/util/List;

.field protected g:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/dropbox/android/taskqueue/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/taskqueue/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/dropbox/android/taskqueue/k;->e:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/k;->f:Ljava/util/List;

    .line 21
    iput-boolean v1, p0, Lcom/dropbox/android/taskqueue/k;->b:Z

    .line 73
    return-void
.end method


# virtual methods
.method public a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    .registers 5
    .parameter

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/k;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/l;

    .line 153
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/k;->g:Landroid/net/Uri;

    invoke-interface {v0, p0, p1, v2}, Lcom/dropbox/android/taskqueue/l;->a(Lcom/dropbox/android/taskqueue/k;Lcom/dropbox/android/taskqueue/m;Landroid/net/Uri;)V

    goto :goto_b

    .line 155
    :cond_1d
    sget-object v0, Lcom/dropbox/android/taskqueue/k;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-object p1
.end method

.method public final a(JJ)V
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/k;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/l;

    .line 130
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/k;->g:Landroid/net/Uri;

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/dropbox/android/taskqueue/l;->a(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;JJ)V

    goto :goto_6

    .line 132
    :cond_1b
    return-void
.end method

.method public final a(Lcom/dropbox/android/taskqueue/l;)V
    .registers 3
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/k;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/taskqueue/k;->b:Z

    .line 82
    return-void
.end method

.method public final b(Lcom/dropbox/android/taskqueue/l;)V
    .registers 3
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/k;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public c()Lcom/dropbox/android/taskqueue/m;
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lcom/dropbox/android/taskqueue/k;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dropbox/android/taskqueue/k;->e:I

    .line 119
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->b:Lcom/dropbox/android/taskqueue/m;

    return-object v0
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ldbxyzptlk/i/i;
.end method

.method public g()Lcom/dropbox/android/taskqueue/m;
    .registers 4

    .prologue
    .line 135
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/k;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/l;

    .line 137
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/k;->g:Landroid/net/Uri;

    invoke-interface {v0, p0, v2}, Lcom/dropbox/android/taskqueue/l;->c(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V

    goto :goto_b

    .line 139
    :cond_1d
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->b:Lcom/dropbox/android/taskqueue/m;

    return-object v0
.end method

.method public j_()Lcom/dropbox/android/taskqueue/o;
    .registers 2

    .prologue
    .line 110
    sget-object v0, Lcom/dropbox/android/taskqueue/o;->a:Lcom/dropbox/android/taskqueue/o;

    return-object v0
.end method

.method public n()I
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public final o()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/dropbox/android/taskqueue/k;->b:Z

    return v0
.end method

.method public final p()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/dropbox/android/taskqueue/k;->e:I

    return v0
.end method

.method public final q()Z
    .registers 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/k;->j_()Lcom/dropbox/android/taskqueue/o;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/taskqueue/o;->a:Lcom/dropbox/android/taskqueue/o;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final r()V
    .registers 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/k;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/l;

    .line 124
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/k;->g:Landroid/net/Uri;

    invoke-interface {v0, p0, v2}, Lcom/dropbox/android/taskqueue/l;->a(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V

    goto :goto_6

    .line 126
    :cond_18
    return-void
.end method

.method public final s()Lcom/dropbox/android/taskqueue/m;
    .registers 4

    .prologue
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/k;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/l;

    .line 145
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/k;->g:Landroid/net/Uri;

    invoke-interface {v0, p0, v2}, Lcom/dropbox/android/taskqueue/l;->b(Lcom/dropbox/android/taskqueue/k;Landroid/net/Uri;)V

    goto :goto_b

    .line 147
    :cond_1d
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->j:Lcom/dropbox/android/taskqueue/m;

    return-object v0
.end method
