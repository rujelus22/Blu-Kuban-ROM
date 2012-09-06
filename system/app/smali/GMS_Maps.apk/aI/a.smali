.class public LaI/a;
.super LaI/d;
.source "SourceFile"


# static fields
.field private static c:LaI/a;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, LaI/d;-><init>()V

    .line 67
    if-nez p1, :cond_d

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_d
    iput-object p1, p0, LaI/a;->b:Landroid/content/Context;

    .line 71
    return-void
.end method

.method public static a()LaI/a;
    .registers 1

    .prologue
    .line 50
    sget-object v0, LaI/a;->c:LaI/a;

    return-object v0
.end method

.method static synthetic a(LaI/a;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, LaI/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    new-instance v0, LaI/a;

    invoke-direct {v0, p0}, LaI/a;-><init>(Landroid/content/Context;)V

    sput-object v0, LaI/a;->c:LaI/a;

    .line 55
    return-void
.end method

.method private a(Lax/A;)V
    .registers 5
    .parameter

    .prologue
    .line 220
    const-string v0, "name=? AND address=?"

    .line 222
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lax/A;->h()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lax/A;->i()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 225
    new-instance v1, LaI/b;

    invoke-direct {v1, p0, v0, p1}, LaI/b;-><init>(LaI/a;[Ljava/lang/String;Lax/A;)V

    .line 245
    new-instance v0, LY/b;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    invoke-direct {v0, v2, v1}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;)V

    .line 246
    invoke-virtual {v0}, LY/b;->g()V

    .line 247
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/database/Cursor;IIIILaI/z;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x3

    .line 262
    if-nez p1, :cond_5

    .line 290
    :goto_4
    return-void

    .line 265
    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_83

    .line 266
    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 267
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    :cond_38
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 275
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 276
    invoke-static {v2, v3}, LaI/a;->a(II)Lat/B;

    move-result-object v2

    .line 278
    new-instance v3, LaI/y;

    invoke-direct {v3}, LaI/y;-><init>()V

    invoke-virtual {v3, v1}, LaI/y;->a(Ljava/lang/String;)LaI/y;

    move-result-object v3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, LaI/y;->b(Ljava/lang/String;)LaI/y;

    move-result-object v3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, LaI/y;->c(Ljava/lang/String;)LaI/y;

    move-result-object v3

    invoke-virtual {v3, p2}, LaI/y;->a(I)LaI/y;

    move-result-object v3

    invoke-virtual {v3, p3}, LaI/y;->b(I)LaI/y;

    move-result-object v3

    add-int v4, p4, v0

    invoke-virtual {v3, v4}, LaI/y;->c(I)LaI/y;

    move-result-object v3

    invoke-virtual {v3, v1}, LaI/y;->d(Ljava/lang/String;)LaI/y;

    move-result-object v1

    invoke-virtual {v1, v2}, LaI/y;->a(Lat/B;)LaI/y;

    move-result-object v1

    invoke-virtual {v1, p5}, LaI/y;->d(I)LaI/y;

    move-result-object v1

    invoke-virtual {v1}, LaI/y;->a()LaI/w;

    move-result-object v1

    invoke-virtual {p6, v1}, LaI/z;->b(LaI/w;)V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 289
    :cond_83
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    goto/16 :goto_4
.end method

.method private static b(Lcom/google/googlenav/ai;J)Lax/A;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 296
    if-nez p0, :cond_4

    .line 313
    :goto_3
    return-object v4

    .line 301
    :cond_4
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v2

    .line 302
    const-string v0, ""

    .line 303
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 304
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v3

    .line 310
    :goto_18
    new-instance v0, Lax/A;

    const-string v1, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lax/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    .line 311
    invoke-virtual {v0, p1, p2}, Lax/A;->a(J)V

    .line 312
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lax/A;->a(Lat/B;)V

    move-object v4, v0

    .line 313
    goto :goto_3

    .line 305
    :cond_2c
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 306
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    .line 308
    :cond_3b
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->G()Ljava/lang/String;

    move-result-object v3

    goto :goto_18
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 125
    const/4 v0, 0x7

    return v0
.end method

.method public a(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LaI/a;->a(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    const-string v1, "name like ? OR name like ? OR address like ? OR address like ?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "% "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 166
    const/4 v4, -0x1

    if-eq v2, v4, :cond_d6

    .line 167
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 168
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v4}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-static {v0}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d6

    .line 171
    :cond_73
    const-string v2, " OR ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {v4}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9f

    .line 173
    const-string v2, "name like ?"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_9f
    invoke-static {v0}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d1

    .line 177
    invoke-static {v4}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b0

    .line 178
    const-string v2, " AND "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_b0
    const-string v2, "address like ?"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_d1
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_d6
    new-array v0, v6, [Ljava/lang/String;

    .line 189
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastUpdated desc LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 193
    iget-object v0, p0, LaI/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/LocalActivePlacesProvider;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 195
    return-object v0
.end method

.method public a(Lcom/google/googlenav/ai;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->t()Z

    move-result v0

    if-nez v0, :cond_e

    .line 206
    invoke-virtual {p0}, LaI/a;->e()V

    .line 213
    :cond_d
    :goto_d
    return-void

    .line 209
    :cond_e
    invoke-static {p1, p2, p3}, LaI/a;->b(Lcom/google/googlenav/ai;J)Lax/A;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_d

    .line 211
    invoke-direct {p0, v0}, LaI/a;->a(Lax/A;)V

    goto :goto_d
.end method

.method protected declared-synchronized a_(LaI/s;)LaI/z;
    .registers 9
    .parameter

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    new-instance v6, LaI/z;

    invoke-direct {v6, p1}, LaI/z;-><init>(LaI/s;)V

    .line 76
    const/4 v1, 0x0

    .line 79
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->t()Z

    move-result v0

    if-nez v0, :cond_16

    .line 80
    invoke-virtual {p0}, LaI/a;->e()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_39

    .line 99
    :cond_14
    :goto_14
    monitor-exit p0

    return-object v6

    .line 84
    :cond_16
    :try_start_16
    invoke-virtual {p1}, LaI/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LaI/a;->a(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_39
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_1d} :catch_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1d} :catch_45

    move-result-object v1

    .line 94
    :goto_1e
    :try_start_1e
    invoke-virtual {p1}, LaI/s;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0}, LaI/a;->c()I

    move-result v3

    invoke-virtual {p0}, LaI/a;->i()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, LaI/a;->a(I)I

    move-result v5

    invoke-static/range {v0 .. v6}, LaI/a;->a(Ljava/lang/String;Landroid/database/Cursor;IIIILaI/z;)V

    .line 96
    if-eqz v1, :cond_14

    .line 97
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catchall {:try_start_1e .. :try_end_38} :catchall_39

    goto :goto_14

    .line 75
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :catch_3c
    move-exception v0

    .line 86
    :try_start_3d
    invoke-virtual {p0}, LaI/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 87
    :catch_45
    move-exception v0

    .line 88
    invoke-virtual {p0}, LaI/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_39

    goto :goto_1e
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    const-string v0, "p"

    return-object v0
.end method

.method public b(LaI/s;)Z
    .registers 3
    .parameter

    .prologue
    .line 104
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->t()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1}, LaI/a;->e(LaI/s;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public c()I
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x5

    return v0
.end method

.method public c(LaI/s;)Z
    .registers 3
    .parameter

    .prologue
    .line 110
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->t()Z

    move-result v0

    return v0
.end method

.method public d()[I
    .registers 4

    .prologue
    .line 130
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x7

    aput v2, v0, v1

    return-object v0
.end method

.method public e()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, LaI/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/LocalActivePlacesProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    return-void
.end method
