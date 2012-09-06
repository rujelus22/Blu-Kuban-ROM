.class public final Lcom/google/api/client/http/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/k;


# instance fields
.field private final a:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method private static a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    invoke-static {p1, p0}, Lcom/google/api/client/util/i;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 246
    invoke-static {v0, p2}, Lcom/google/api/client/util/i;->a(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 16
    .parameter
    .parameter

    .prologue
    .line 169
    if-nez p0, :cond_3

    .line 242
    :goto_2
    return-void

    .line 172
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 173
    invoke-static {v2}, Lcom/google/api/client/util/g;->a(Ljava/lang/Class;)Lcom/google/api/client/util/g;

    move-result-object v8

    .line 174
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 175
    const-class v0, Lcom/google/api/client/util/o;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_99

    move-object v0, p1

    check-cast v0, Lcom/google/api/client/util/o;

    move-object v1, v0

    .line 177
    :goto_21
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9c

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 178
    :goto_2d
    new-instance v10, Lcom/google/api/client/util/e;

    invoke-direct {v10, p1}, Lcom/google/api/client/util/e;-><init>(Ljava/lang/Object;)V

    .line 179
    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 181
    const/16 v3, 0x3d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    move v4, v0

    .line 182
    :goto_3e
    if-ge v4, v7, :cond_fb

    .line 184
    const/16 v0, 0x26

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 185
    const/4 v5, -0x1

    if-ne v0, v5, :cond_100

    move v6, v7

    .line 190
    :goto_4a
    const/4 v0, -0x1

    if-eq v3, v0, :cond_9f

    if-ge v3, v6, :cond_9f

    .line 191
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 192
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    const/16 v3, 0x3d

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    move-object v13, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v13

    .line 198
    :goto_69
    invoke-static {v0}, Lcom/google/api/client/util/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-virtual {v8, v5}, Lcom/google/api/client/util/g;->a(Ljava/lang/String;)Lcom/google/api/client/util/n;

    move-result-object v11

    .line 201
    if-eqz v11, :cond_df

    .line 202
    invoke-virtual {v11}, Lcom/google/api/client/util/n;->c()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/api/client/util/i;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 204
    invoke-static {v5}, Lcom/google/api/client/util/u;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 206
    invoke-static {v5}, Lcom/google/api/client/util/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/api/client/util/u;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 208
    invoke-virtual {v11}, Lcom/google/api/client/util/n;->a()Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-static {v0, v9, v3}, Lcom/google/api/client/http/x;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v5, v0, v3}, Lcom/google/api/client/util/e;->a(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 239
    :cond_94
    :goto_94
    add-int/lit8 v0, v6, 0x1

    move v3, v4

    move v4, v0

    .line 240
    goto :goto_3e

    .line 175
    :cond_99
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_21

    .line 177
    :cond_9c
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_2d

    .line 195
    :cond_9f
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 196
    const-string v0, ""

    move-object v13, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v13

    goto :goto_69

    .line 210
    :cond_aa
    invoke-static {v9, v5}, Lcom/google/api/client/util/u;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v12, Ljava/lang/Iterable;

    invoke-static {v0, v12}, Lcom/google/api/client/util/u;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 214
    invoke-virtual {v11, p1}, Lcom/google/api/client/util/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 215
    if-nez v0, :cond_c5

    .line 216
    invoke-static {v5}, Lcom/google/api/client/util/i;->b(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    .line 217
    invoke-virtual {v11, p1, v0}, Lcom/google/api/client/util/n;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 219
    :cond_c5
    const-class v11, Ljava/lang/Object;

    if-ne v5, v11, :cond_d2

    const/4 v5, 0x0

    .line 220
    :goto_ca
    invoke-static {v5, v9, v3}, Lcom/google/api/client/http/x;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 219
    :cond_d2
    invoke-static {v5}, Lcom/google/api/client/util/u;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    goto :goto_ca

    .line 223
    :cond_d7
    invoke-static {v5, v9, v3}, Lcom/google/api/client/http/x;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, p1, v0}, Lcom/google/api/client/util/n;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_94

    .line 225
    :cond_df
    if-eqz v2, :cond_94

    .line 228
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 229
    if-nez v0, :cond_f3

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    if-eqz v1, :cond_f7

    .line 232
    invoke-virtual {v1, v5, v0}, Lcom/google/api/client/util/o;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    :cond_f3
    :goto_f3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 234
    :cond_f7
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f3

    .line 241
    :cond_fb
    invoke-virtual {v10}, Lcom/google/api/client/util/e;->a()V

    goto/16 :goto_2

    :cond_100
    move v6, v0

    goto/16 :goto_4a
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/p;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/api/client/http/x;->a:Z

    if-eqz v0, :cond_8

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/p;->a(Z)Lcom/google/api/client/http/p;

    .line 125
    :cond_8
    invoke-static {p2}, Lcom/google/api/client/util/u;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/api/client/http/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/api/client/http/x;->b:Ljava/lang/String;

    return-object v0
.end method
