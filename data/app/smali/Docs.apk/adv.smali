.class public Ladv;
.super Ljava/lang/Object;
.source "UrlEncodedParser.java"

# interfaces
.implements Ladg;
.implements Laex;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 89
    const-string v0, "application/x-www-form-urlencoded"

    invoke-direct {p0, v0}, Ladv;-><init>(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Ladv;->a:Ljava/lang/String;

    .line 101
    return-void
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {p1, p0}, Laeh;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 210
    invoke-static {v0, p2}, Laeh;->a(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 16
    .parameter
    .parameter

    .prologue
    .line 133
    if-nez p0, :cond_3

    .line 206
    :goto_2
    return-void

    .line 136
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 137
    invoke-static {v2}, Laef;->a(Ljava/lang/Class;)Laef;

    move-result-object v8

    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 139
    const-class v0, Laeo;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_97

    move-object v0, p1

    check-cast v0, Laeo;

    move-object v1, v0

    .line 141
    :goto_21
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 142
    :goto_2d
    new-instance v10, Laed;

    invoke-direct {v10, p1}, Laed;-><init>(Ljava/lang/Object;)V

    .line 143
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 145
    const/16 v3, 0x3d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move v3, v0

    .line 146
    :goto_3e
    if-ge v3, v7, :cond_f8

    .line 148
    const/16 v0, 0x26

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 149
    const/4 v5, -0x1

    if-ne v0, v5, :cond_fd

    move v6, v7

    .line 154
    :goto_4a
    const/4 v0, -0x1

    if-eq v4, v0, :cond_9d

    if-ge v4, v6, :cond_9d

    .line 155
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 156
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaeD;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    const/16 v4, 0x3d

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    move-object v13, v0

    move-object v0, v3

    move-object v3, v13

    .line 162
    :goto_68
    invoke-static {v0}, LaeD;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-virtual {v8, v5}, Laef;->a(Ljava/lang/String;)Laen;

    move-result-object v11

    .line 165
    if-eqz v11, :cond_dc

    .line 166
    invoke-virtual {v11}, Laen;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v9, v0}, Laeh;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 168
    invoke-static {v5}, Laez;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 170
    invoke-static {v5}, Laez;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v9, v0}, Laez;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 172
    invoke-virtual {v11}, Laen;->a()Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-static {v0, v9, v3}, Ladv;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v5, v0, v3}, Laed;->a(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 203
    :cond_93
    :goto_93
    add-int/lit8 v0, v6, 0x1

    move v3, v0

    .line 204
    goto :goto_3e

    .line 139
    :cond_97
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_21

    .line 141
    :cond_9a
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_2d

    .line 159
    :cond_9d
    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 160
    const-string v0, ""

    move-object v13, v0

    move-object v0, v3

    move-object v3, v13

    goto :goto_68

    .line 174
    :cond_a7
    invoke-static {v9, v5}, Laez;->a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v12, Ljava/lang/Iterable;

    invoke-static {v0, v12}, Laez;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 178
    invoke-virtual {v11, p1}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 179
    if-nez v0, :cond_c2

    .line 180
    invoke-static {v5}, Laeh;->a(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    .line 181
    invoke-virtual {v11, p1, v0}, Laen;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    :cond_c2
    const-class v11, Ljava/lang/Object;

    if-ne v5, v11, :cond_cf

    const/4 v5, 0x0

    .line 184
    :goto_c7
    invoke-static {v5, v9, v3}, Ladv;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 183
    :cond_cf
    invoke-static {v5}, Laez;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    goto :goto_c7

    .line 187
    :cond_d4
    invoke-static {v5, v9, v3}, Ladv;->a(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, p1, v0}, Laen;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_93

    .line 189
    :cond_dc
    if-eqz v2, :cond_93

    .line 192
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 193
    if-nez v0, :cond_f0

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    if-eqz v1, :cond_f4

    .line 196
    invoke-virtual {v1, v5, v0}, Laeo;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    :cond_f0
    :goto_f0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 198
    :cond_f4
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f0

    .line 205
    :cond_f8
    invoke-virtual {v10}, Laed;->a()V

    goto/16 :goto_2

    :cond_fd
    move v6, v0

    goto/16 :goto_4a
.end method


# virtual methods
.method public a(Ladl;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ladl;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    invoke-static {p2}, Laez;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Ladl;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ladv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    return-object v0
.end method

.method public a(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 267
    invoke-virtual {p0, v0, p3}, Ladv;->a(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0, p1, p2}, Ladv;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 283
    instance-of v0, p2, Ljava/lang/Class;

    const-string v1, "dataType has to be of type Class<?>"

    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    .line 286
    check-cast p2, Ljava/lang/Class;

    invoke-static {p2}, Laez;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 287
    invoke-static {p1}, Laly;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ladv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 288
    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Ladv;->a:Ljava/lang/String;

    return-object v0
.end method
