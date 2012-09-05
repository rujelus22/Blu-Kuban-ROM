.class public final Lma;
.super Ljava/lang/Object;
.source "a"


# static fields
.field public static final a:Lnd;


# instance fields
.field protected final b:Lnd;

.field protected final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnd;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Lly;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lly;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lma;->a:Lnd;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lma;->c:Ljava/lang/Class;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lma;->b:Lnd;

    .line 47
    return-void
.end method

.method public constructor <init>(Lnd;)V
    .registers 3
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lma;->b:Lnd;

    .line 52
    invoke-virtual {p1}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lma;->c:Ljava/lang/Class;

    .line 53
    return-void
.end method

.method private a()V
    .registers 6

    .prologue
    .line 89
    iget-object v0, p0, Lma;->c:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lma;->a(Ljava/lang/reflect/Type;)V

    .line 92
    iget-object v0, p0, Lma;->b:Lnd;

    if-eqz v0, :cond_33

    .line 93
    iget-object v0, p0, Lma;->b:Lnd;

    invoke-virtual {v0}, Lnd;->f()I

    move-result v0

    .line 94
    if-lez v0, :cond_33

    .line 95
    iget-object v1, p0, Lma;->d:Ljava/util/Map;

    if-nez v1, :cond_1c

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lma;->d:Ljava/util/Map;

    .line 98
    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_33

    .line 99
    iget-object v2, p0, Lma;->b:Lnd;

    invoke-virtual {v2, v1}, Lnd;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lma;->b:Lnd;

    invoke-virtual {v3, v1}, Lnd;->b(I)Lnd;

    move-result-object v3

    .line 101
    iget-object v4, p0, Lma;->d:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 107
    :cond_33
    iget-object v0, p0, Lma;->d:Ljava/util/Map;

    if-nez v0, :cond_3d

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lma;->d:Ljava/util/Map;

    .line 110
    :cond_3d
    return-void
.end method

.method private a(Ljava/lang/reflect/Type;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 121
    if-nez p1, :cond_4

    .line 183
    :cond_3
    return-void

    .line 124
    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_a8

    .line 125
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 126
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_8b

    array-length v0, v1

    if-lez v0, :cond_8b

    .line 128
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 129
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    .line 130
    array-length v3, v2

    array-length v4, v1

    if-eq v3, v4, :cond_5a

    .line 131
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Strange parametrized type (in class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "): number of type arguments != number of type parameters ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    :cond_5a
    array-length v0, v1

    move v3, v8

    :goto_5c
    if-ge v3, v0, :cond_8b

    .line 134
    aget-object v4, v2, v3

    .line 135
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 136
    iget-object v5, p0, Lma;->d:Ljava/util/Map;

    if-nez v5, :cond_82

    .line 137
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lma;->d:Ljava/util/Map;

    .line 145
    :goto_6f
    invoke-virtual {p0, v4}, Lma;->b(Ljava/lang/String;)V

    .line 147
    iget-object v5, p0, Lma;->d:Ljava/util/Map;

    sget-object v6, Lmb;->a:Lmb;

    aget-object v7, v1, v3

    invoke-virtual {v6, v7, p0}, Lmb;->b(Ljava/lang/reflect/Type;Lma;)Lnd;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 142
    :cond_82
    iget-object v5, p0, Lma;->d:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7f

    goto :goto_6f

    .line 150
    :cond_8b
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 179
    :goto_91
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lma;->a(Ljava/lang/reflect/Type;)V

    .line 180
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    move v2, v8

    :goto_9e
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 181
    invoke-direct {p0, v3}, Lma;->a(Ljava/lang/reflect/Type;)V

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    .line 151
    :cond_a8
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 152
    check-cast p1, Ljava/lang/Class;

    .line 156
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_ee

    array-length v1, v0

    if-lez v1, :cond_ee

    .line 158
    array-length v1, v0

    move v2, v8

    :goto_b9
    if-ge v2, v1, :cond_ee

    aget-object v3, v0, v2

    .line 159
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v8

    .line 161
    if-eqz v3, :cond_e2

    .line 162
    iget-object v5, p0, Lma;->d:Ljava/util/Map;

    if-nez v5, :cond_e5

    .line 163
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lma;->d:Ljava/util/Map;

    .line 167
    :goto_d4
    invoke-virtual {p0, v4}, Lma;->b(Ljava/lang/String;)V

    .line 168
    iget-object v5, p0, Lma;->d:Ljava/util/Map;

    sget-object v6, Lmb;->a:Lmb;

    invoke-virtual {v6, v3, p0}, Lmb;->b(Ljava/lang/reflect/Type;Lma;)Lnd;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_e2
    add-int/lit8 v2, v2, 0x1

    goto :goto_b9

    .line 165
    :cond_e5
    iget-object v5, p0, Lma;->d:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e2

    goto :goto_d4

    :cond_ee
    move-object v0, p1

    .line 172
    goto :goto_91
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lnd;
    .registers 5
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lma;->d:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 65
    invoke-direct {p0}, Lma;->a()V

    .line 67
    :cond_7
    iget-object v0, p0, Lma;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnd;

    .line 68
    if-nez v0, :cond_1f

    .line 69
    iget-object v0, p0, Lma;->e:Ljava/util/HashSet;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lma;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 70
    sget-object v0, Lma;->a:Lnd;

    .line 78
    :cond_1f
    return-object v0

    .line 73
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type variable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' can not be resolved (with context of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lma;->c:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lma;->e:Ljava/util/HashSet;

    if-nez v0, :cond_b

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lma;->e:Ljava/util/HashSet;

    .line 116
    :cond_b
    iget-object v0, p0, Lma;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 188
    iget-object v0, p0, Lma;->d:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 189
    invoke-direct {p0}, Lma;->a()V

    .line 191
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[TypeBindings for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lma;->b:Lnd;

    if-eqz v1, :cond_31

    .line 193
    iget-object v1, p0, Lma;->b:Lnd;

    invoke-virtual {v1}, Lnd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :goto_1b
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lma;->d:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 195
    :cond_31
    iget-object v1, p0, Lma;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b
.end method
