.class public Lcom/google/googlenav/ui/wizard/ha;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/hf;

.field private final b:Lcom/google/googlenav/ai;

.field private final c:Lcom/google/googlenav/ui/wizard/ju;

.field private d:Lcom/google/googlenav/f;

.field private e:Ljava/util/List;

.field private f:Z

.field private g:Lcom/google/googlenav/ui/wizard/jp;

.field private h:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hf;Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/googlenav/ui/wizard/hb;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/hb;-><init>(Lcom/google/googlenav/ui/wizard/ha;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->h:Ljava/util/Comparator;

    .line 48
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ha;->a:Lcom/google/googlenav/ui/wizard/hf;

    .line 49
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ha;->b:Lcom/google/googlenav/ai;

    .line 50
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/ha;->c:Lcom/google/googlenav/ui/wizard/ju;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ha;)Lcom/google/googlenav/ai;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->b:Lcom/google/googlenav/ai;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ha;Lcom/google/googlenav/f;)Lcom/google/googlenav/f;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ha;->d:Lcom/google/googlenav/f;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ha;Lcom/google/googlenav/ui/wizard/jp;)Lcom/google/googlenav/ui/wizard/jp;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ha;->g:Lcom/google/googlenav/ui/wizard/jp;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ha;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ha;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/ha;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/ha;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/ha;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/ha;)Ljava/util/Comparator;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->h:Ljava/util/Comparator;

    return-object v0
.end method

.method private d()V
    .registers 8

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/ha;->f:Z

    .line 117
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->c:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v1, 0x1bd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/hd;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/hd;-><init>(Lcom/google/googlenav/ui/wizard/ha;)V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 134
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->d:Lcom/google/googlenav/f;

    if-nez v0, :cond_1e

    .line 135
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ha;->a()V

    .line 137
    :cond_1e
    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/ha;)Z
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/ha;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/ha;)Lcom/google/googlenav/ui/wizard/ju;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->c:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/ha;)Lcom/google/googlenav/ui/wizard/hf;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->a:Lcom/google/googlenav/ui/wizard/hf;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->e:Ljava/util/List;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->d:Lcom/google/googlenav/f;

    if-eqz v0, :cond_9

    .line 113
    :cond_8
    :goto_8
    return-void

    .line 73
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->b:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/google/googlenav/ui/wizard/hc;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/ui/wizard/hc;-><init>(Lcom/google/googlenav/ui/wizard/ha;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->b:Lcom/google/googlenav/ai;

    invoke-static {v1, v0}, Lcom/google/googlenav/f;->a(Lcom/google/googlenav/g;Lcom/google/googlenav/ai;)Lcom/google/googlenav/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->d:Lcom/google/googlenav/f;

    .line 112
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ha;->d:Lcom/google/googlenav/f;

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    goto :goto_8
.end method

.method public b()V
    .registers 5

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->e:Ljava/util/List;

    if-nez v0, :cond_8

    .line 141
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/ha;->d()V

    .line 168
    :cond_7
    :goto_7
    return-void

    .line 143
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cy;

    .line 145
    iget-object v0, v0, Lcom/google/googlenav/cy;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 148
    :cond_2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 149
    new-instance v0, Lcom/google/googlenav/ui/wizard/jp;

    new-instance v2, Lcom/google/googlenav/ui/wizard/he;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/he;-><init>(Lcom/google/googlenav/ui/wizard/ha;)V

    const/16 v3, 0x3ed

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/google/googlenav/ui/wizard/jp;-><init>(Lcom/google/googlenav/ui/wizard/jr;Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->g:Lcom/google/googlenav/ui/wizard/jp;

    .line 162
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->g:Lcom/google/googlenav/ui/wizard/jp;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jp;->show()V

    goto :goto_7
.end method

.method public c()V
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/ha;->f:Z

    .line 175
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->g:Lcom/google/googlenav/ui/wizard/jp;

    if-eqz v0, :cond_f

    .line 176
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->g:Lcom/google/googlenav/ui/wizard/jp;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jp;->dismiss()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/ha;->g:Lcom/google/googlenav/ui/wizard/jp;

    .line 179
    :cond_f
    return-void
.end method
