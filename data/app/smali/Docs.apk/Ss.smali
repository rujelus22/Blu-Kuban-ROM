.class public LSs;
.super Lase;
.source "DocEntry.java"


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "LSu;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lase;-><init>()V

    .line 89
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, LSs;->a:Ljava/util/Set;

    .line 92
    invoke-static {}, Lakz;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, LSs;->a:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LSs;->a:Ljava/util/LinkedList;

    .line 51
    invoke-direct {p0}, LSs;->c()V

    .line 52
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, LSs;->a:Ljava/lang/String;

    .line 131
    iput-boolean v1, p0, LSs;->a:Z

    .line 132
    iput-boolean v1, p0, LSs;->b:Z

    .line 133
    iput-boolean v1, p0, LSs;->c:Z

    .line 134
    iput-boolean v1, p0, LSs;->d:Z

    .line 135
    iput-object v0, p0, LSs;->b:Ljava/lang/String;

    .line 136
    iput v1, p0, LSs;->a:I

    .line 137
    iput-object v0, p0, LSs;->d:Ljava/lang/String;

    .line 138
    iput-object v0, p0, LSs;->e:Ljava/lang/String;

    .line 139
    iput-object v0, p0, LSs;->f:Ljava/lang/String;

    .line 140
    iput-object v0, p0, LSs;->g:Ljava/lang/String;

    .line 141
    iput-object v0, p0, LSs;->h:Ljava/lang/String;

    .line 142
    iget-object v0, p0, LSs;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 143
    iget-object v0, p0, LSs;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 144
    iget-object v0, p0, LSs;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 145
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, LSs;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, LSs;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LSu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, LSs;->a:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, LSs;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 186
    invoke-direct {p0}, LSs;->c()V

    .line 187
    invoke-super {p0}, Lase;->a()V

    .line 188
    return-void
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 231
    iput p1, p0, LSs;->a:I

    .line 232
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, LSs;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, LSs;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, LSs;->a:Ljava/util/LinkedList;

    new-instance v1, LSu;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, LSu;-><init>(Ljava/lang/String;Ljava/lang/String;LSt;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method protected a(Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter

    .prologue
    .line 330
    invoke-super {p0, p1}, Lase;->a(Ljava/lang/StringBuffer;)V

    .line 331
    const-string v0, "Resource Id"

    iget-object v1, p0, LSs;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, LSs;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, LSs;->a:Z

    .line 99
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, LSs;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, LSs;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, LSs;->a:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-boolean p1, p0, LSs;->b:Z

    .line 107
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 110
    iget-boolean v0, p0, LSs;->b:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, LSs;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, LSs;->b:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-boolean p1, p0, LSs;->c:Z

    .line 115
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, LSs;->c:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, LSs;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, LSs;->i:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public d(Z)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-boolean p1, p0, LSs;->d:Z

    .line 123
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 126
    iget-boolean v0, p0, LSs;->d:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, LSs;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, LSs;->d:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, LSs;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, LSs;->e:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, LSs;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, LSs;->f:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, LSs;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, LSs;->g:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, LSs;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, LSs;->h:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, LSs;->c:Ljava/lang/String;

    .line 326
    return-void
.end method
