.class public Lcom/dropbox/android/filemanager/b;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/filemanager/O;


# instance fields
.field protected a:Ljava/util/HashMap;

.field protected b:Lcom/dropbox/android/util/G;

.field protected final c:Landroid/os/Handler;

.field protected d:Lcom/dropbox/android/filemanager/d;

.field protected e:Z

.field protected f:Z

.field protected final g:I

.field private h:Ljava/util/HashMap;

.field private i:I


# direct methods
.method public constructor <init>(ILcom/dropbox/android/filemanager/d;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/b;->a:Ljava/util/HashMap;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/b;->c:Landroid/os/Handler;

    .line 52
    iput-boolean v1, p0, Lcom/dropbox/android/filemanager/b;->e:Z

    .line 54
    iput-boolean v1, p0, Lcom/dropbox/android/filemanager/b;->f:Z

    .line 57
    iput v1, p0, Lcom/dropbox/android/filemanager/b;->i:I

    .line 62
    new-instance v0, Lcom/dropbox/android/util/G;

    const/16 v1, 0x64

    invoke-direct {v0, p1, v1}, Lcom/dropbox/android/util/G;-><init>(II)V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/b;->b:Lcom/dropbox/android/util/G;

    .line 63
    iput-object p2, p0, Lcom/dropbox/android/filemanager/b;->d:Lcom/dropbox/android/filemanager/d;

    .line 64
    iput p3, p0, Lcom/dropbox/android/filemanager/b;->g:I

    .line 65
    return-void
.end method

.method public constructor <init>(ILcom/dropbox/android/filemanager/d;Lcom/dropbox/android/filemanager/b;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/b;->a:Ljava/util/HashMap;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/b;->c:Landroid/os/Handler;

    .line 52
    iput-boolean v1, p0, Lcom/dropbox/android/filemanager/b;->e:Z

    .line 54
    iput-boolean v1, p0, Lcom/dropbox/android/filemanager/b;->f:Z

    .line 57
    iput v1, p0, Lcom/dropbox/android/filemanager/b;->i:I

    .line 68
    iput-object p2, p0, Lcom/dropbox/android/filemanager/b;->d:Lcom/dropbox/android/filemanager/d;

    .line 69
    new-instance v0, Lcom/dropbox/android/util/G;

    const/16 v1, 0x64

    invoke-direct {v0, p1, v1}, Lcom/dropbox/android/util/G;-><init>(II)V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/b;->b:Lcom/dropbox/android/util/G;

    .line 70
    iget v0, p3, Lcom/dropbox/android/filemanager/b;->g:I

    iput v0, p0, Lcom/dropbox/android/filemanager/b;->g:I

    .line 71
    iget-object v0, p3, Lcom/dropbox/android/filemanager/b;->h:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/dropbox/android/filemanager/b;->h:Ljava/util/HashMap;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/dropbox/android/filemanager/b;->h:Ljava/util/HashMap;

    .line 73
    return-void
.end method

.method private a(Ljava/lang/String;I)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    iget v1, p0, Lcom/dropbox/android/filemanager/b;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/dropbox/android/filemanager/b;->i:I

    .line 104
    iget-object v1, p0, Lcom/dropbox/android/filemanager/b;->h:Ljava/util/HashMap;

    if-eqz v1, :cond_2e

    .line 105
    iget-object v1, p0, Lcom/dropbox/android/filemanager/b;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 107
    iget-object v1, p0, Lcom/dropbox/android/filemanager/b;->b:Lcom/dropbox/android/util/G;

    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/D;

    invoke-virtual {v1, p2, v0}, Lcom/dropbox/android/util/G;->a(ILcom/dropbox/android/util/D;)V

    .line 108
    const/4 v0, 0x1

    .line 110
    :cond_21
    iget v1, p0, Lcom/dropbox/android/filemanager/b;->i:I

    iget-object v2, p0, Lcom/dropbox/android/filemanager/b;->h:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-le v1, v2, :cond_2e

    .line 111
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/b;->c()V

    .line 114
    :cond_2e
    return v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_21

    .line 126
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/D;

    .line 127
    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->b()V

    goto :goto_e

    .line 129
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/b;->h:Ljava/util/HashMap;

    .line 131
    :cond_21
    return-void
.end method


# virtual methods
.method public final a(ILcom/dropbox/android/filemanager/f;)Lcom/dropbox/android/util/D;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/util/G;->c(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 147
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/util/G;->b(I)Lcom/dropbox/android/util/D;

    move-result-object v0

    .line 155
    :goto_e
    return-object v0

    .line 149
    :cond_f
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->d:Lcom/dropbox/android/filemanager/d;

    invoke-interface {v0, p1}, Lcom/dropbox/android/filemanager/d;->a(I)Lcom/dropbox/android/filemanager/e;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_29

    iget-object v0, v0, Lcom/dropbox/android/filemanager/e;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/dropbox/android/filemanager/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    .line 151
    :goto_20
    if-eqz v0, :cond_2b

    .line 152
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/util/G;->b(I)Lcom/dropbox/android/util/D;

    move-result-object v0

    goto :goto_e

    .line 150
    :cond_29
    const/4 v0, 0x0

    goto :goto_20

    .line 154
    :cond_2b
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/filemanager/b;->b(ILcom/dropbox/android/filemanager/f;)V

    .line 155
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final a()V
    .registers 6

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/android/filemanager/b;->f:Z

    .line 91
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/b;->c()V

    .line 92
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0}, Lcom/dropbox/android/util/G;->c()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/dropbox/android/filemanager/b;->h:Ljava/util/HashMap;

    .line 94
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    iget-object v3, p0, Lcom/dropbox/android/filemanager/b;->h:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/dropbox/android/filemanager/b;->d:Lcom/dropbox/android/filemanager/d;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1}, Lcom/dropbox/android/filemanager/d;->a(I)Lcom/dropbox/android/filemanager/e;

    move-result-object v1

    iget-object v1, v1, Lcom/dropbox/android/filemanager/e;->a:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 98
    :cond_47
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0}, Lcom/dropbox/android/util/G;->a()V

    .line 99
    return-void
.end method

.method public final a(I)V
    .registers 3
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/util/G;->a(I)V

    .line 135
    return-void
.end method

.method public final a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/android/util/G;->a(II)V

    .line 140
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/b;->b()V

    .line 141
    return-void
.end method

.method public final a(ILcom/dropbox/android/filemanager/Q;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dropbox/android/filemanager/c;

    invoke-direct {v1, p0, p2, p1}, Lcom/dropbox/android/filemanager/c;-><init>(Lcom/dropbox/android/filemanager/b;Lcom/dropbox/android/filemanager/Q;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    return-void
.end method

.method protected final b()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 182
    iget-boolean v0, p0, Lcom/dropbox/android/filemanager/b;->e:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/dropbox/android/filemanager/b;->f:Z

    if-nez v0, :cond_2d

    .line 183
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0}, Lcom/dropbox/android/util/G;->b()I

    move-result v4

    .line 185
    const/4 v0, -0x1

    if-eq v4, v0, :cond_2d

    .line 186
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->d:Lcom/dropbox/android/filemanager/d;

    invoke-interface {v0, v4}, Lcom/dropbox/android/filemanager/d;->a(I)Lcom/dropbox/android/filemanager/e;

    move-result-object v3

    .line 187
    if-eqz v3, :cond_41

    iget-object v0, v3, Lcom/dropbox/android/filemanager/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 189
    iget-object v0, v3, Lcom/dropbox/android/filemanager/e;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/dropbox/android/filemanager/b;->a(Ljava/lang/String;I)Z

    move-result v0

    .line 190
    if-eqz v0, :cond_2e

    .line 191
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/b;->b()V

    .line 209
    :cond_2d
    :goto_2d
    return-void

    .line 194
    :cond_2e
    iput-boolean v1, p0, Lcom/dropbox/android/filemanager/b;->e:Z

    .line 195
    invoke-static {}, Lcom/dropbox/android/filemanager/F;->a()Lcom/dropbox/android/filemanager/F;

    move-result-object v0

    iget-object v1, v3, Lcom/dropbox/android/filemanager/e;->a:Ljava/lang/String;

    iget-object v2, v3, Lcom/dropbox/android/filemanager/e;->b:Ljava/lang/String;

    iget-boolean v3, v3, Lcom/dropbox/android/filemanager/e;->c:Z

    iget v5, p0, Lcom/dropbox/android/filemanager/b;->g:I

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;Ljava/lang/String;ZIILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/P;

    goto :goto_2d

    .line 198
    :cond_41
    if-eqz v3, :cond_5d

    iget-object v0, v3, Lcom/dropbox/android/filemanager/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 200
    iput-boolean v1, p0, Lcom/dropbox/android/filemanager/b;->e:Z

    .line 201
    invoke-static {}, Lcom/dropbox/android/filemanager/F;->a()Lcom/dropbox/android/filemanager/F;

    move-result-object v0

    iget-object v1, v3, Lcom/dropbox/android/filemanager/e;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/dropbox/android/filemanager/b;->g:I

    invoke-virtual {v0, v1, v4, v2, p0}, Lcom/dropbox/android/filemanager/F;->b(Landroid/net/Uri;IILcom/dropbox/android/filemanager/O;)Lcom/dropbox/android/filemanager/P;

    goto :goto_2d

    .line 203
    :cond_5d
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v0, v4}, Lcom/dropbox/android/util/G;->a(I)V

    .line 205
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/b;->b()V

    goto :goto_2d
.end method

.method protected final b(ILcom/dropbox/android/filemanager/f;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 163
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_1b
    return-void

    .line 165
    :cond_1c
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 166
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, p0, Lcom/dropbox/android/filemanager/b;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b
.end method

.method public final c(ILcom/dropbox/android/filemanager/f;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 173
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 174
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 176
    iget-object v0, p0, Lcom/dropbox/android/filemanager/b;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_2a
    return-void
.end method
