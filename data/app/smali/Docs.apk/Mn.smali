.class LMn;
.super Ljava/lang/Object;
.source "FieldDefinition.java"


# instance fields
.field private a:LLV;

.field private a:LMa;

.field private a:LMo;

.field private final a:LMp;

.field private a:Ljava/lang/Object;

.field private final a:Ljava/lang/String;

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

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;LMp;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object v1, p0, LMn;->a:LMa;

    .line 87
    iput-object v1, p0, LMn;->a:LLV;

    .line 88
    iput-boolean v2, p0, LMn;->a:Z

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LMn;->a:Ljava/util/Set;

    .line 90
    iput-boolean v2, p0, LMn;->b:Z

    .line 91
    iput-object v1, p0, LMn;->a:Ljava/lang/Object;

    .line 92
    sget-object v0, LMo;->a:LMo;

    iput-object v0, p0, LMn;->a:LMo;

    .line 103
    iput-object p1, p0, LMn;->a:Ljava/lang/String;

    .line 104
    iput-object p2, p0, LMn;->a:LMp;

    .line 105
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 184
    iget-boolean v0, p0, LMn;->a:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, LMn;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 185
    const-string v0, "FieldDefinition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring isIndexed constraint as field also has uniqueness constraint (on just this field, and therefore SQLite will have to create an index on that. For field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, LMn;->a:Z

    .line 190
    :cond_28
    return-void
.end method


# virtual methods
.method public a()LMl;
    .registers 12

    .prologue
    .line 219
    new-instance v0, LMl;

    iget-object v1, p0, LMn;->a:Ljava/lang/String;

    iget-object v2, p0, LMn;->a:LMp;

    iget-boolean v3, p0, LMn;->a:Z

    iget-object v4, p0, LMn;->a:Ljava/util/Set;

    iget-boolean v5, p0, LMn;->b:Z

    iget-object v6, p0, LMn;->a:Ljava/lang/Object;

    iget-object v7, p0, LMn;->a:LMa;

    iget-object v8, p0, LMn;->a:LLV;

    iget-object v9, p0, LMn;->a:LMo;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, LMl;-><init>(Ljava/lang/String;LMp;ZLjava/util/Set;ZLjava/lang/Object;LMa;LLV;LMo;LMm;)V

    return-object v0
.end method

.method public a()LMn;
    .registers 2

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, LMn;->a:Z

    .line 152
    invoke-direct {p0}, LMn;->a()V

    .line 153
    return-object p0
.end method

.method public a(LMa;)LMn;
    .registers 3
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LMn;->a(LMa;LLV;)LMn;

    move-result-object v0

    return-object v0
.end method

.method public a(LMa;LLV;)LMn;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 126
    sget-object v0, LMo;->a:LMo;

    invoke-virtual {p0, p1, p2, v0}, LMn;->a(LMa;LLV;LMo;)LMn;

    move-result-object v0

    return-object v0
.end method

.method public a(LMa;LLV;LMo;)LMn;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iput-object p1, p0, LMn;->a:LMa;

    .line 142
    iput-object p2, p0, LMn;->a:LLV;

    .line 143
    iput-object p3, p0, LMn;->a:LMo;

    .line 144
    return-object p0
.end method

.method public a(Ljava/lang/Object;)LMn;
    .registers 4
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, LMn;->a:Ljava/lang/Object;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_5
    const-string v1, "defaultValue already set"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 199
    const-string v0, "null defaultValue"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iput-object p1, p0, LMn;->a:Ljava/lang/Object;

    .line 201
    return-object p0

    .line 198
    :cond_12
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public varargs a([Ljava/lang/String;)LMn;
    .registers 4
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, LMn;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    invoke-static {v0}, LafQ;->b(Z)V

    .line 173
    iget-object v0, p0, LMn;->a:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget-object v0, p0, LMn;->a:Ljava/util/Set;

    iget-object v1, p0, LMn;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-direct {p0}, LMn;->a()V

    .line 176
    return-object p0
.end method

.method public b()LMn;
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, LMn;->b:Z

    .line 211
    return-object p0
.end method
