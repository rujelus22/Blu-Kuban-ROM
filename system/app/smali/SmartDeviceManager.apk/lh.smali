.class public final Llh;
.super Lkz;
.source "a"

# interfaces
.implements Lhp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkz",
        "<",
        "Ljava/util/Map",
        "<**>;>;",
        "Lhp;"
    }
.end annotation


# static fields
.field public static final a:Llh;


# instance fields
.field protected final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Z

.field protected final d:Lnd;

.field protected e:Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Lhu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Llh;

    invoke-direct {v0}, Llh;-><init>()V

    sput-object v0, Llh;->a:Llh;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0, v1}, Llh;-><init>(Ljava/util/HashSet;Lnd;ZLhu;)V

    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/util/HashSet;Lnd;ZLhu;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lnd;",
            "Z",
            "Lhu;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    const-class v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lkz;-><init>(Ljava/lang/Class;)V

    .line 69
    iput-object p1, p0, Llh;->b:Ljava/util/HashSet;

    .line 70
    iput-object p2, p0, Llh;->d:Lnd;

    .line 71
    iput-boolean p3, p0, Llh;->c:Z

    .line 72
    iput-object p4, p0, Llh;->f:Lhu;

    .line 73
    return-void
.end method

.method public static a([Ljava/lang/String;Lnd;ZLhu;)Llh;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 98
    if-eqz p0, :cond_6

    array-length v0, p0

    if-nez v0, :cond_23

    :cond_6
    const/4 v0, 0x0

    .line 99
    :cond_7
    if-nez p1, :cond_35

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v1

    .line 101
    :goto_f
    if-nez p2, :cond_43

    .line 102
    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lnd;->n()Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v2, 0x1

    .line 108
    :goto_1a
    if-nez v2, :cond_3c

    if-nez v0, :cond_3c

    if-nez p3, :cond_3c

    .line 109
    sget-object v0, Llh;->a:Llh;

    .line 111
    :goto_22
    return-object v0

    .line 98
    :cond_23
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    array-length v1, p0

    move v2, v4

    :goto_2b
    if-ge v2, v1, :cond_7

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 99
    :cond_35
    invoke-virtual {p1}, Lnd;->e()Lnd;

    move-result-object v1

    goto :goto_f

    :cond_3a
    move v2, v4

    .line 102
    goto :goto_1a

    .line 111
    :cond_3c
    new-instance v3, Llh;

    invoke-direct {v3, v0, v1, v2, p3}, Llh;-><init>(Ljava/util/HashSet;Lnd;ZLhu;)V

    move-object v0, v3

    goto :goto_22

    :cond_43
    move v2, p2

    goto :goto_1a
.end method

.method private a(Ljava/util/Map;Lez;Lhs;Lhj;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lez;",
            "Lhs;",
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 226
    invoke-virtual {p3}, Lhs;->b()Lhj;

    move-result-object v0

    .line 227
    iget-object v1, p0, Llh;->b:Ljava/util/HashSet;

    .line 228
    iget-object v2, p0, Llh;->f:Lhu;

    .line 229
    sget-object v3, Lhq$a;->WRITE_NULL_MAP_VALUES:Lhq$a;

    invoke-virtual {p3, v3}, Lhs;->a(Lhq$a;)Z

    move-result v3

    if-nez v3, :cond_41

    const/4 v3, 0x1

    .line 231
    :goto_12
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 232
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 233
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 234
    if-nez v6, :cond_43

    .line 235
    invoke-virtual {p3}, Lhs;->c()Lhj;

    move-result-object v7

    invoke-virtual {v7, v9, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    .line 242
    :goto_37
    if-nez v5, :cond_53

    .line 243
    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v5

    invoke-virtual {v5, v9, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    goto :goto_1a

    .line 229
    :cond_41
    const/4 v3, 0x0

    goto :goto_12

    .line 238
    :cond_43
    if-eqz v3, :cond_47

    if-eqz v5, :cond_1a

    .line 239
    :cond_47
    if-eqz v1, :cond_4f

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 240
    :cond_4f
    invoke-virtual {v0, v6, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    goto :goto_37

    .line 246
    :cond_53
    if-nez v2, :cond_71

    .line 247
    :try_start_55
    invoke-virtual {p4, v5, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_1a

    .line 251
    :catch_59
    move-exception v5

    .line 253
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 254
    invoke-static {v5, p1, v6}, Llh;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1a

    .line 249
    :cond_71
    :try_start_71
    invoke-virtual {p4, v5, p2, p3, v2}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_59

    goto :goto_1a

    .line 258
    :cond_75
    return-void
.end method


# virtual methods
.method public final a(Lhu;)Lkz;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhu;",
            ")",
            "Lkz",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Llh;

    iget-object v1, p0, Llh;->b:Ljava/util/HashSet;

    iget-object v2, p0, Llh;->d:Lnd;

    iget-boolean v3, p0, Llh;->c:Z

    invoke-direct {v0, v1, v2, v3, p1}, Llh;-><init>(Ljava/util/HashSet;Lnd;ZLhu;)V

    .line 79
    iget-object v1, p0, Llh;->e:Lhj;

    if-eqz v1, :cond_13

    .line 80
    iget-object v1, p0, Llh;->e:Lhj;

    iput-object v1, v0, Llh;->e:Lhj;

    .line 82
    :cond_13
    return-object v0
.end method

.method public final a(Lhs;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 323
    iget-boolean v0, p0, Llh;->c:Z

    if-eqz v0, :cond_c

    .line 324
    iget-object v0, p0, Llh;->d:Lnd;

    invoke-virtual {p1, v0}, Lhs;->a(Lnd;)Lhj;

    move-result-object v0

    iput-object v0, p0, Llh;->e:Lhj;

    .line 326
    :cond_c
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 22
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p2}, Lez;->d()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Llh;->e:Lhj;

    if-eqz v0, :cond_18

    iget-object v0, p0, Llh;->e:Lhj;

    invoke-direct {p0, p1, p2, p3, v0}, Llh;->a(Ljava/util/Map;Lez;Lhs;Lhj;)V

    :cond_14
    :goto_14
    invoke-virtual {p2}, Lez;->e()V

    return-void

    :cond_18
    invoke-virtual {p0, p1, p2, p3}, Llh;->a(Ljava/util/Map;Lez;Lhs;)V

    goto :goto_14
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 22
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p4, p1, p2}, Lhu;->b(Ljava/lang/Object;Lez;)V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Llh;->e:Lhj;

    if-eqz v0, :cond_18

    iget-object v0, p0, Llh;->e:Lhj;

    invoke-direct {p0, p1, p2, p3, v0}, Llh;->a(Ljava/util/Map;Lez;Lhs;Lhj;)V

    :cond_14
    :goto_14
    invoke-virtual {p4, p2}, Lhu;->b(Lez;)V

    return-void

    :cond_18
    invoke-virtual {p0, p1, p2, p3}, Llh;->a(Ljava/util/Map;Lez;Lhs;)V

    goto :goto_14
.end method

.method protected final a(Ljava/util/Map;Lez;Lhs;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lez;",
            "Lhs;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 168
    iget-object v0, p0, Llh;->f:Lhu;

    if-eqz v0, :cond_8a

    .line 169
    invoke-virtual {p3}, Lhs;->b()Lhj;

    move-result-object v1

    iget-object v2, p0, Llh;->b:Ljava/util/HashSet;

    sget-object v0, Lhq$a;->WRITE_NULL_MAP_VALUES:Lhq$a;

    invoke-virtual {p3, v0}, Lhs;->a(Lhq$a;)Z

    move-result v0

    if-nez v0, :cond_16

    move v3, v4

    :cond_16
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v10

    move-object v6, v10

    :cond_20
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_47

    invoke-virtual {p3}, Lhs;->c()Lhj;

    move-result-object v8

    invoke-virtual {v8, v10, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    :goto_3d
    if-nez v7, :cond_57

    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v0

    invoke-virtual {v0, v10, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    goto :goto_20

    :cond_47
    if-eqz v3, :cond_4b

    if-eqz v7, :cond_20

    :cond_4b
    if-eqz v2, :cond_53

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_20

    :cond_53
    invoke-virtual {v1, v0, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    goto :goto_3d

    :cond_57
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v8, v5, :cond_69

    move-object v8, v6

    move-object v11, v5

    move-object v5, v6

    move-object v6, v11

    :goto_61
    :try_start_61
    iget-object v9, p0, Llh;->f:Lhu;

    invoke-virtual {v5, v7, p2, p3, v9}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_66} :catch_70

    move-object v5, v6

    move-object v6, v8

    goto :goto_20

    :cond_69
    invoke-virtual {p3, v8}, Lhs;->a(Ljava/lang/Class;)Lhj;

    move-result-object v5

    move-object v6, v8

    move-object v8, v5

    goto :goto_61

    :catch_70
    move-exception v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, p1, v0}, Llh;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v6

    move-object v6, v8

    goto :goto_20

    .line 173
    :cond_8a
    invoke-virtual {p3}, Lhs;->b()Lhj;

    move-result-object v0

    .line 176
    iget-object v1, p0, Llh;->b:Ljava/util/HashSet;

    .line 177
    sget-object v2, Lhq$a;->WRITE_NULL_MAP_VALUES:Lhq$a;

    invoke-virtual {p3, v2}, Lhs;->a(Lhq$a;)Z

    move-result v2

    if-nez v2, :cond_ca

    move v2, v4

    .line 179
    :goto_99
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v10

    move-object v5, v10

    :cond_a3
    :goto_a3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 182
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 183
    if-nez v7, :cond_cc

    .line 184
    invoke-virtual {p3}, Lhs;->c()Lhj;

    move-result-object v8

    invoke-virtual {v8, v10, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    .line 194
    :goto_c0
    if-nez v6, :cond_dc

    .line 195
    invoke-virtual {p3}, Lhs;->d()Lhj;

    move-result-object v6

    invoke-virtual {v6, v10, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    goto :goto_a3

    :cond_ca
    move v2, v3

    .line 177
    goto :goto_99

    .line 187
    :cond_cc
    if-eqz v2, :cond_d0

    if-eqz v6, :cond_a3

    .line 189
    :cond_d0
    if-eqz v1, :cond_d8

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a3

    .line 190
    :cond_d8
    invoke-virtual {v0, v7, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    goto :goto_c0

    .line 197
    :cond_dc
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 199
    if-ne v8, v4, :cond_ec

    move-object v8, v5

    move-object v11, v4

    move-object v4, v5

    move-object v5, v11

    .line 207
    :goto_e6
    :try_start_e6
    invoke-virtual {v4, v6, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e9} :catch_f3

    move-object v4, v5

    move-object v5, v8

    .line 212
    goto :goto_a3

    .line 202
    :cond_ec
    invoke-virtual {p3, v8}, Lhs;->a(Ljava/lang/Class;)Lhj;

    move-result-object v4

    move-object v5, v8

    move-object v8, v4

    .line 204
    goto :goto_e6

    .line 208
    :catch_f3
    move-exception v4

    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-static {v4, p1, v6}, Llh;->a(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v5

    move-object v5, v8

    .line 214
    goto :goto_a3

    .line 215
    :cond_10d
    return-void
.end method
