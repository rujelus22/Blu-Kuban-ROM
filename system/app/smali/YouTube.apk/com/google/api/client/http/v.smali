.class public final Lcom/google/api/client/http/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/j;


# instance fields
.field public a:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/google/api/client/http/v;->b:Ljava/lang/String;

    .line 96
    return-void
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-static {p1, p0}, Lcom/google/api/client/util/j;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 233
    invoke-static {v0, p2}, Lcom/google/api/client/util/j;->a(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 16
    .parameter
    .parameter

    .prologue
    .line 156
    if-nez p0, :cond_3

    .line 229
    :goto_2
    return-void

    .line 159
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 160
    invoke-static {v2}, Lcom/google/api/client/util/h;->a(Ljava/lang/Class;)Lcom/google/api/client/util/h;

    move-result-object v8

    .line 161
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 162
    const-class v0, Lcom/google/api/client/util/p;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_99

    move-object v0, p1

    check-cast v0, Lcom/google/api/client/util/p;

    move-object v1, v0

    .line 164
    :goto_21
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9c

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 165
    :goto_2d
    new-instance v10, Lcom/google/api/client/util/e;

    invoke-direct {v10, p1}, Lcom/google/api/client/util/e;-><init>(Ljava/lang/Object;)V

    .line 166
    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 168
    const/16 v3, 0x3d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    move v4, v0

    .line 169
    :goto_3e
    if-ge v4, v7, :cond_fb

    .line 171
    const/16 v0, 0x26

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 172
    const/4 v5, -0x1

    if-ne v0, v5, :cond_100

    move v6, v7

    .line 177
    :goto_4a
    const/4 v0, -0x1

    if-eq v3, v0, :cond_9f

    if-ge v3, v6, :cond_9f

    .line 178
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 179
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    const/16 v3, 0x3d

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    move-object v13, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v13

    .line 185
    :goto_69
    invoke-static {v0}, Lcom/google/api/client/util/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-virtual {v8, v5}, Lcom/google/api/client/util/h;->a(Ljava/lang/String;)Lcom/google/api/client/util/o;

    move-result-object v11

    .line 188
    if-eqz v11, :cond_df

    .line 189
    invoke-virtual {v11}, Lcom/google/api/client/util/o;->c()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/api/client/util/j;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 191
    invoke-static {v5}, Lcom/google/api/client/util/v;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 193
    invoke-static {v5}, Lcom/google/api/client/util/v;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/api/client/util/v;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 195
    invoke-virtual {v11}, Lcom/google/api/client/util/o;->a()Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-static {v0, v9, v3}, Lcom/google/api/client/http/v;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v5, v0, v3}, Lcom/google/api/client/util/e;->a(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 226
    :cond_94
    :goto_94
    add-int/lit8 v0, v6, 0x1

    move v3, v4

    move v4, v0

    .line 227
    goto :goto_3e

    .line 162
    :cond_99
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_21

    .line 164
    :cond_9c
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_2d

    .line 182
    :cond_9f
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 183
    const-string v0, ""

    move-object v13, v0

    move-object v0, v4

    move v4, v3

    move-object v3, v13

    goto :goto_69

    .line 197
    :cond_aa
    invoke-static {v9, v5}, Lcom/google/api/client/util/v;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v12, Ljava/lang/Iterable;

    invoke-static {v0, v12}, Lcom/google/api/client/util/v;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 201
    invoke-virtual {v11, p1}, Lcom/google/api/client/util/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 202
    if-nez v0, :cond_c5

    .line 203
    invoke-static {v5}, Lcom/google/api/client/util/j;->b(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    .line 204
    invoke-virtual {v11, p1, v0}, Lcom/google/api/client/util/o;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    :cond_c5
    const-class v11, Ljava/lang/Object;

    if-ne v5, v11, :cond_d2

    const/4 v5, 0x0

    .line 207
    :goto_ca
    invoke-static {v5, v9, v3}, Lcom/google/api/client/http/v;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 206
    :cond_d2
    invoke-static {v5}, Lcom/google/api/client/util/v;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    goto :goto_ca

    .line 210
    :cond_d7
    invoke-static {v5, v9, v3}, Lcom/google/api/client/http/v;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, p1, v0}, Lcom/google/api/client/util/o;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_94

    .line 212
    :cond_df
    if-eqz v2, :cond_94

    .line 215
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 216
    if-nez v0, :cond_f3

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    if-eqz v1, :cond_f7

    .line 219
    invoke-virtual {v1, v5, v0}, Lcom/google/api/client/util/p;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    :cond_f3
    :goto_f3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 221
    :cond_f7
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f3

    .line 228
    :cond_fb
    invoke-virtual {v10}, Lcom/google/api/client/util/e;->a()V

    goto/16 :goto_2

    :cond_100
    move v6, v0

    goto/16 :goto_4a
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/o;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/google/api/client/http/v;->a:Z

    if-eqz v0, :cond_7

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/api/client/http/o;->i:Z

    .line 113
    :cond_7
    invoke-static {p2}, Lcom/google/api/client/util/v;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/google/api/client/http/o;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/api/client/http/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/api/client/http/v;->b:Ljava/lang/String;

    return-object v0
.end method
