.class public Lcom/google/googlenav/provider/StarredItemProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Landroid/net/Uri;


# instance fields
.field private c:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "address"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/provider/StarredItemProvider;->a:[Ljava/lang/String;

    .line 72
    const-string v0, "content://com.google.android.maps.StarredItemProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/provider/StarredItemProvider;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 86
    const-wide/16 v0, -0x1388

    iput-wide v0, p0, Lcom/google/googlenav/provider/StarredItemProvider;->c:J

    return-void
.end method

.method private static a(Lax/r;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 204
    invoke-interface {p0, p1}, Lax/r;->b(Ljava/lang/String;)Lax/E;

    move-result-object v1

    .line 205
    if-nez v1, :cond_a

    .line 226
    :cond_9
    :goto_9
    return-object v0

    .line 208
    :cond_a
    invoke-virtual {v1}, Lax/E;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_9

    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 212
    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 213
    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 214
    if-eqz v2, :cond_9

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    const/4 v3, 0x0

    invoke-virtual {v1, v5, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    if-le v2, v4, :cond_41

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3a

    .line 222
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    :cond_3a
    invoke-virtual {v1, v5, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private a()V
    .registers 6

    .prologue
    .line 188
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->s()Z

    move-result v0

    if-nez v0, :cond_b

    .line 197
    :cond_a
    :goto_a
    return-void

    .line 191
    :cond_b
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    .line 192
    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/googlenav/provider/StarredItemProvider;->c:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_a

    .line 193
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v1

    invoke-virtual {v1}, Lax/l;->f()Lax/m;

    move-result-object v1

    sget-object v2, Lax/I;->g:Lax/I;

    invoke-interface {v1, v2}, Lax/m;->a(Lax/I;)V

    .line 195
    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/provider/StarredItemProvider;->c:J

    goto :goto_a
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deletion not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 164
    const-string v0, "vnd.android.cursor.dir/vnd.gmm.starreditem"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Insertion not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 96
    const-string v0, "StarredItemProvider.onCreate"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/googlenav/provider/StarredItemProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/googlenav/provider/StarredItemProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lac/h;

    .line 101
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    if-nez v0, :cond_21

    .line 102
    invoke-virtual {p0}, Lcom/google/googlenav/provider/StarredItemProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Las/a;->a(Landroid/content/Context;Lcom/google/googlenav/android/Y;)Las/f;

    .line 111
    :cond_21
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    if-nez v0, :cond_45

    .line 112
    invoke-static {v1}, Lax/l;->a(Lcom/google/googlenav/ui/wizard/ju;)Lax/l;

    .line 115
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->k()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 116
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->f()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->D_()V

    .line 120
    :cond_45
    const-string v0, "StarredItemProvider.onCreate"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0}, Lcom/google/googlenav/provider/StarredItemProvider;->a()V

    .line 137
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    invoke-virtual {v0}, Lax/l;->f()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v3

    .line 139
    invoke-interface {v3}, Lax/r;->b()Ljava/util/List;

    move-result-object v4

    .line 140
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, p2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move v1, v2

    .line 141
    :goto_1e
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_82

    .line 142
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Lax/A;->n()Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 144
    invoke-virtual {v0}, Lax/A;->j()Lat/B;

    move-result-object v6

    .line 145
    if-eqz v6, :cond_7e

    .line 146
    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x1

    invoke-virtual {v0}, Lax/A;->g()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v0}, Lax/A;->h()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v0}, Lax/A;->i()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-virtual {v6}, Lat/B;->c()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-virtual {v6}, Lat/B;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v8

    const/4 v6, 0x6

    invoke-virtual {v0}, Lax/A;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/googlenav/provider/StarredItemProvider;->a(Lax/r;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    .line 155
    invoke-virtual {v5, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 141
    :cond_7e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 159
    :cond_82
    return-object v5
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Update not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
