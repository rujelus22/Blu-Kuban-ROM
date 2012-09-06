.class public abstract LMa;
.super Ljava/lang/Object;
.source "DatabaseTable.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(I)Ljava/lang/StringBuilder;
    .registers 4
    .parameter

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    invoke-virtual {p0}, LMa;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, " INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, LMa;->a()[Laga;

    move-result-object v1

    invoke-static {v1, p1}, LMa;->a([Laga;I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 188
    return-object v0
.end method

.method private final a(ILjava/lang/String;)Ljava/lang/StringBuilder;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, p1}, LMa;->a(I)Z

    move-result v1

    invoke-static {v1}, LafQ;->a(Z)V

    .line 234
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, LMa;->a(I)Z

    move-result v1

    if-nez v1, :cond_48

    const/4 v1, 0x1

    .line 238
    :goto_11
    if-eqz v1, :cond_14

    move v0, p1

    .line 239
    :cond_14
    invoke-static {p0}, LLX;->a(LMa;)LLX;

    move-result-object v2

    new-instance v3, LMn;

    invoke-virtual {p0}, LMa;->f()Ljava/lang/String;

    move-result-object v4

    sget-object v5, LMp;->a:LMp;

    invoke-direct {v3, v4, v5}, LMn;-><init>(Ljava/lang/String;LMp;)V

    invoke-virtual {v2, v0, v3}, LLX;->a(ILMn;)LLX;

    move-result-object v0

    invoke-virtual {v0}, LLX;->a()LLV;

    move-result-object v0

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    const-string v3, "SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0, p1, p2, v1}, LLV;->a(ILjava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, LMa;->a()[Laga;

    move-result-object v0

    invoke-static {v0, p1, p2, v1}, LMa;->a([Laga;ILjava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 246
    return-object v2

    :cond_48
    move v1, v0

    .line 234
    goto :goto_11
.end method

.method static a([Laga;I)Ljava/lang/StringBuilder;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Laga",
            "<",
            "LLV;",
            ">;I)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_2a

    aget-object v0, p0, v1

    .line 195
    invoke-interface {v0}, Laga;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLV;

    .line 196
    invoke-virtual {v0, p1}, LLV;->a(I)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 194
    :goto_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 199
    :cond_1c
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, p1}, LLV;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 201
    :cond_2a
    return-object v2
.end method

.method static a([Laga;ILjava/lang/String;Z)Ljava/lang/StringBuilder;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Laga",
            "<",
            "LLV;",
            ">;I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_2a

    aget-object v0, p0, v1

    .line 254
    invoke-interface {v0}, Laga;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLV;

    .line 255
    invoke-virtual {v0, p1}, LLV;->a(I)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 253
    :goto_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 258
    :cond_1c
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, p1, p2, p3}, LLV;->a(ILjava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 261
    :cond_2a
    if-eqz p3, :cond_32

    .line 262
    const-string v0, " LIMIT 0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :goto_31
    return-object v2

    .line 264
    :cond_32
    const-string v0, " FROM "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31
.end method

.method private final b(I)Ljava/lang/StringBuilder;
    .registers 3
    .parameter

    .prologue
    .line 208
    invoke-virtual {p0}, LMa;->a()[Laga;

    move-result-object v0

    invoke-static {v0, p1}, LMa;->b([Laga;I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static b([Laga;I)Ljava/lang/StringBuilder;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Laga",
            "<",
            "LLV;",
            ">;I)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_2c

    aget-object v0, p0, v1

    .line 215
    invoke-interface {v0}, Laga;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLV;

    .line 216
    invoke-virtual {v0, p1}, LLV;->a(I)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 214
    :cond_18
    :goto_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 219
    :cond_1c
    invoke-virtual {v0, p1}, LLV;->b(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_18

    .line 221
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 223
    :cond_2c
    return-object v2
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method final a(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 54
    const/16 v0, 0xe

    if-ne p1, v0, :cond_9

    .line 55
    invoke-virtual {p0}, LMa;->a()Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LMa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0, p2}, LMa;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {p0, p2}, LMa;->a(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {p0, p2}, LMa;->b(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "DatabaseTable"

    invoke-static {v1, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, LMa;->a()[Laga;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_3d
    if-ge v1, v4, :cond_135

    aget-object v0, v3, v1

    .line 108
    invoke-interface {v0}, Laga;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLV;

    .line 109
    invoke-virtual {v0, p2}, LLV;->a(I)Z

    move-result v5

    if-nez v5, :cond_51

    .line 107
    :cond_4d
    :goto_4d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3d

    .line 113
    :cond_51
    invoke-virtual {v0, p2}, LLV;->c(I)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE INDEX IF NOT EXISTS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, LMa;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_i"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ON "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    :cond_b8
    invoke-virtual {v0, p2}, LLV;->b(I)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 120
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, LLV;->a(I)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, LMa;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "_"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "_"

    invoke-static {v6}, LafI;->a(Ljava/lang/String;)LafI;

    move-result-object v6

    invoke-virtual {v6, v5}, LafI;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "_ui"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CREATE UNIQUE INDEX IF NOT EXISTS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " ON "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-static {v6}, LafI;->a(Ljava/lang/String;)LafI;

    move-result-object v6

    invoke-virtual {v6, v5}, LafI;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ");"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_4d

    .line 129
    :cond_135
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 72
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, LMa;->a(I)Z

    move-result v0

    return v0
.end method

.method final a(I)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0}, LMa;->a()[Laga;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_7
    if-ge v2, v4, :cond_1d

    aget-object v0, v3, v2

    .line 80
    invoke-interface {v0}, Laga;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLV;

    invoke-virtual {v0, p1}, LLV;->a(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 81
    const/4 v0, 0x1

    .line 84
    :goto_18
    return v0

    .line 79
    :cond_19
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_1d
    move v0, v1

    .line 84
    goto :goto_18
.end method

.method abstract a()[Laga;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Laga",
            "<",
            "LLV;",
            ">;"
        }
    .end annotation
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, LMa;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    const-string v1, "SQLITE_MASTER"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type == \'index\' AND name LIKE "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, LMa;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LLV;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    :goto_62
    :try_start_62
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_90

    .line 147
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP INDEX "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8a
    .catchall {:try_start_62 .. :try_end_8a} :catchall_8b

    goto :goto_62

    .line 152
    :catchall_8b
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_90
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 154
    return-void
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 161
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, LMa;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {p0, p2}, LMa;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-direct {p0, p2, v0}, LMa;->a(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string v1, "DatabaseTable"

    invoke-static {v1, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public d(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 174
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, LMa;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p0, p2}, LMa;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-direct {p0, p2, v0}, LMa;->a(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE VIEW "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, LLV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 46
    invoke-virtual {p0}, LMa;->a()Z

    move-result v0

    const-string v1, "Table not present in the current version."

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 47
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, LMa;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LMa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 271
    const-string v0, "DatabaseTable[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, LMa;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
