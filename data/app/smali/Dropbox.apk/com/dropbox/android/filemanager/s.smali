.class public Lcom/dropbox/android/filemanager/s;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 39
    const-class v0, Lcom/dropbox/android/filemanager/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/filemanager/s;->a:Ljava/lang/String;

    .line 80
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "path"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hash"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "revision"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "local_revision"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "local_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_dir"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "local_hash"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "is_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bytes"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/android/filemanager/s;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lcom/dropbox/android/filemanager/LocalEntry;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 95
    new-instance v3, Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-direct {v3}, Lcom/dropbox/android/filemanager/LocalEntry;-><init>()V

    .line 96
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    .line 97
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/dropbox/android/filemanager/LocalEntry;->i:Ljava/lang/String;

    .line 98
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    .line 99
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/dropbox/android/filemanager/LocalEntry;->c:Ljava/lang/String;

    .line 100
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/dropbox/android/filemanager/LocalEntry;->a:Ljava/lang/String;

    .line 101
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/dropbox/android/filemanager/LocalEntry;->e:J

    .line 102
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_55

    move v0, v1

    :goto_38
    iput-boolean v0, v3, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    .line 103
    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/dropbox/android/filemanager/LocalEntry;->d:Ljava/lang/String;

    .line 104
    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_57

    :goto_4a
    iput-boolean v1, v3, Lcom/dropbox/android/filemanager/LocalEntry;->f:Z

    .line 105
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/dropbox/android/filemanager/LocalEntry;->h:J

    .line 106
    return-object v3

    :cond_55
    move v0, v2

    .line 102
    goto :goto_38

    :cond_57
    move v1, v2

    .line 104
    goto :goto_4a
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Lcom/dropbox/android/filemanager/LocalEntry;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 157
    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-direct {v0, p1}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_27

    .line 160
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_27
    const-string v1, "canon_path = ?"

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/dropbox/android/filemanager/s;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_39

    .line 165
    const/4 v0, 0x0

    .line 167
    :goto_38
    return-object v0

    :cond_39
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/filemanager/LocalEntry;

    goto :goto_38
.end method

.method public static a(Ljava/lang/String;Lcom/dropbox/android/filemanager/u;)Lcom/dropbox/android/filemanager/t;
    .registers 12
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 258
    invoke-static {p0}, Lcom/dropbox/android/util/aN;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    iget-object v0, p1, Lcom/dropbox/android/filemanager/u;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/aN;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 259
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-wide v6, p1, Lcom/dropbox/android/filemanager/u;->c:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_51

    iget-wide v6, p1, Lcom/dropbox/android/filemanager/u;->c:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_51

    .line 262
    invoke-static {v0}, Lcom/dropbox/android/util/ab;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 263
    iget-object v0, p1, Lcom/dropbox/android/filemanager/u;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/aN;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p1, Lcom/dropbox/android/filemanager/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 264
    new-instance v0, Lcom/dropbox/android/filemanager/t;

    iget-object v4, p1, Lcom/dropbox/android/filemanager/u;->d:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/filemanager/t;-><init>(Ljava/lang/String;JLjava/lang/String;Z)V

    .line 269
    :goto_47
    return-object v0

    .line 266
    :cond_48
    new-instance v0, Lcom/dropbox/android/filemanager/t;

    iget-object v4, p1, Lcom/dropbox/android/filemanager/u;->d:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/filemanager/t;-><init>(Ljava/lang/String;JLjava/lang/String;Z)V

    goto :goto_47

    .line 269
    :cond_51
    new-instance v0, Lcom/dropbox/android/filemanager/t;

    const/4 v1, 0x0

    iget-object v4, p1, Lcom/dropbox/android/filemanager/u;->d:Ljava/lang/String;

    move-wide v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/android/filemanager/t;-><init>(Ljava/lang/String;JLjava/lang/String;Z)V

    goto :goto_47
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/dropbox/android/provider/u;)Ldbxyzptlk/l/k;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x11

    const/4 v6, 0x0

    .line 174
    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-direct {v0, p1}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v7

    .line 178
    :try_start_10
    iget-object v0, v7, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    const/16 v2, 0x2710

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ldbxyzptlk/l/k;

    move-result-object v0

    .line 179
    if-eqz p3, :cond_22

    .line 180
    const/16 v2, 0x8

    invoke-virtual {p3, p0, v2}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;I)V
    :try_end_22
    .catch Ldbxyzptlk/m/b; {:try_start_10 .. :try_end_22} :catch_23
    .catch Ldbxyzptlk/m/d; {:try_start_10 .. :try_end_22} :catch_32
    .catch Ldbxyzptlk/m/i; {:try_start_10 .. :try_end_22} :catch_46
    .catch Ldbxyzptlk/m/g; {:try_start_10 .. :try_end_22} :catch_59
    .catch Ldbxyzptlk/m/a; {:try_start_10 .. :try_end_22} :catch_a5

    .line 225
    :cond_22
    :goto_22
    return-object v0

    .line 183
    :catch_23
    move-exception v0

    .line 184
    if-eqz p3, :cond_29

    .line 185
    invoke-virtual {p3, p0, v8}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;I)V

    .line 187
    :cond_29
    sget-object v1, Lcom/dropbox/android/filemanager/s;->a:Ljava/lang/String;

    const-string v2, "IOException when contacting server. Probably networking failure."

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_30
    :goto_30
    move-object v0, v6

    .line 225
    goto :goto_22

    .line 188
    :catch_32
    move-exception v0

    .line 189
    sget-object v1, Lcom/dropbox/android/filemanager/s;->a:Ljava/lang/String;

    const-string v2, "Not able to communicate directly with server"

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    if-eqz p3, :cond_30

    .line 191
    const/16 v1, 0x14

    invoke-virtual {v0}, Ldbxyzptlk/m/d;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p0, v1, v0}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_30

    .line 193
    :catch_46
    move-exception v0

    .line 195
    if-eqz p3, :cond_4e

    .line 196
    const/16 v1, 0x10

    invoke-virtual {p3, p0, v1}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;I)V

    .line 198
    :cond_4e
    sget-object v1, Lcom/dropbox/android/filemanager/s;->a:Ljava/lang/String;

    const-string v2, "Unauthorized token, unlinking account: "

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    invoke-virtual {v7}, Lcom/dropbox/android/filemanager/a;->d()Z

    goto :goto_30

    .line 200
    :catch_59
    move-exception v0

    .line 201
    iget v2, v0, Ldbxyzptlk/m/g;->b:I

    const/16 v3, 0x130

    if-ne v2, v3, :cond_69

    .line 203
    if-eqz p3, :cond_67

    .line 204
    const/16 v0, 0xff

    invoke-virtual {p3, p0, v0}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;I)V

    :cond_67
    move-object v0, v6

    .line 206
    goto :goto_22

    .line 207
    :cond_69
    iget v2, v0, Ldbxyzptlk/m/g;->b:I

    const/16 v3, 0x194

    if-ne v2, v3, :cond_8f

    .line 208
    sget-object v0, Lcom/dropbox/android/filemanager/s;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-eqz p3, :cond_30

    .line 211
    const/16 v0, 0x13

    invoke-virtual {p3, p0, v0}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;I)V

    goto :goto_30

    .line 214
    :cond_8f
    sget-object v1, Lcom/dropbox/android/filemanager/s;->a:Ljava/lang/String;

    const-string v2, "Strange metadata error: "

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 216
    if-eqz p3, :cond_30

    .line 217
    invoke-virtual {p3, p0, v8}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;I)V

    goto :goto_30

    .line 220
    :catch_a5
    move-exception v0

    .line 222
    sget-object v1, Lcom/dropbox/android/filemanager/s;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Strange metadata error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    goto/16 :goto_30
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .registers 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 115
    const-string v1, "dropbox"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "path"

    aput-object v0, v2, v8

    const-string v3, "local_revision NOT NULL"

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    const/4 v2, -0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 126
    :goto_22
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 127
    new-instance v2, Lcom/dropbox/android/util/Z;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 129
    :cond_39
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 130
    return-object v1
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Z)Ljava/util/LinkedList;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-direct {v0, p1}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, "canon_parent_path = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/dropbox/android/filemanager/s;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 139
    if-eqz p2, :cond_24

    .line 141
    invoke-static {p0, p1}, Lcom/dropbox/android/filemanager/s;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_24

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_24
    return-object v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedList;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 230
    const-string v1, "dropbox"

    sget-object v2, Lcom/dropbox/android/filemanager/s;->b:[Ljava/lang/String;

    const-string v7, "is_dir DESC, _display_name COLLATE NOCASE"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 234
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 235
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_36

    .line 236
    const/4 v3, -0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 240
    :goto_23
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 241
    invoke-static {v0}, Lcom/dropbox/android/filemanager/s;->a(Landroid/database/Cursor;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v3

    .line 242
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v3, v3, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 246
    :cond_36
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 247
    return-object v2
.end method

.method public static a(Landroid/content/Context;Lcom/dropbox/android/util/U;Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 297
    new-instance v1, Lcom/dropbox/android/util/Z;

    iget-object v0, p2, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    .line 304
    :try_start_8
    invoke-virtual {v1}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/dropbox/android/util/ap;->a()Ljava/io/File;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 307
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/dropbox/android/util/ab;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/HashSet;)V

    .line 311
    :cond_1c
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->h()Lcom/dropbox/android/taskqueue/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/util/Z;)V

    .line 315
    invoke-virtual {p1}, Lcom/dropbox/android/util/U;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 318
    const-string v0, "canon_path = ?"

    .line 319
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 320
    const-string v4, "dropbox"

    invoke-virtual {v2, v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 321
    if-eq v0, v6, :cond_65

    .line 322
    sget-object v4, Lcom/dropbox/android/filemanager/s;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error deleting entry in directory sync, not one: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_65
    sget-object v0, Lcom/dropbox/android/provider/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/dropbox/android/provider/f;->d:Lcom/dropbox/android/provider/a;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 326
    sget-object v3, Lcom/dropbox/android/filemanager/s;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upload log "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_117

    const-string v0, "deleted"

    :goto_91
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-boolean v0, p2, Lcom/dropbox/android/filemanager/LocalEntry;->k:Z

    if-eqz v0, :cond_116

    .line 329
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 330
    const-string v3, "canon_parent_path LIKE ?"

    .line 331
    const-string v4, "dropbox"

    invoke-virtual {v2, v4, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 332
    sget-object v4, Lcom/dropbox/android/filemanager/s;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Directory deleted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " local files"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v3, Lcom/dropbox/android/provider/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/dropbox/android/provider/f;->d:Lcom/dropbox/android/provider/a;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 334
    sget-object v2, Lcom/dropbox/android/filemanager/s;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upload logs deleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_116
    :goto_116
    return-void

    .line 326
    :cond_117
    const-string v0, "didn\'t exist"
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_119} :catch_11b

    goto/16 :goto_91

    .line 337
    :catch_11b
    move-exception v0

    .line 339
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;)V

    .line 340
    sget-object v2, Lcom/dropbox/android/filemanager/s;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in deleteLocalEntryAndMedia() with path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_116
.end method

.method static a(Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 6
    .parameter

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/dropbox/android/filemanager/LocalEntry;->s:Z

    if-eqz v0, :cond_26

    .line 348
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->h()Lcom/dropbox/android/taskqueue/q;

    move-result-object v0

    .line 349
    sget-object v1, Lcom/dropbox/android/taskqueue/v;->b:Lcom/dropbox/android/taskqueue/v;

    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    invoke-static {}, Lcom/dropbox/android/util/aW;->e()Ldbxyzptlk/l/o;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V

    .line 350
    sget-object v1, Lcom/dropbox/android/taskqueue/v;->a:Lcom/dropbox/android/taskqueue/v;

    iget-object v2, p0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    invoke-static {}, Lcom/dropbox/android/util/aW;->f()Ldbxyzptlk/l/o;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V

    .line 352
    :cond_26
    return-void
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/LinkedList;
    .registers 3
    .parameter

    .prologue
    .line 151
    const-string v0, "is_favorite = 1"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/dropbox/android/filemanager/s;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method
