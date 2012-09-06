.class public Lcom/dropbox/android/filemanager/r;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/ArrayList;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/dropbox/android/provider/g;

.field private e:Z

.field private f:Ldbxyzptlk/i/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/dropbox/android/filemanager/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/filemanager/r;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/android/provider/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/filemanager/r;->b:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/r;->c:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/dropbox/android/filemanager/r;->d:Lcom/dropbox/android/provider/g;

    .line 45
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->b()Ldbxyzptlk/i/g;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/r;->f:Ldbxyzptlk/i/g;

    .line 46
    return-void
.end method

.method private a(Lcom/dropbox/android/filemanager/LocalEntry;Landroid/content/ContentValues;ZLcom/dropbox/android/filemanager/U;)Landroid/content/ContentValues;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 214
    .line 216
    iget-object v0, p1, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    if-eqz v0, :cond_69

    iget-object v0, p1, Lcom/dropbox/android/filemanager/LocalEntry;->c:Ljava/lang/String;

    if-eqz v0, :cond_69

    iget-object v0, p1, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const/4 v0, 0x1

    .line 218
    :goto_14
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 221
    if-nez p3, :cond_25

    if-eqz v0, :cond_29

    .line 224
    :cond_25
    invoke-virtual {p4, p1}, Lcom/dropbox/android/filemanager/U;->a(Lcom/dropbox/android/filemanager/LocalEntry;)Z

    move-result v1

    .line 241
    :cond_29
    :goto_29
    if-eqz v1, :cond_68

    .line 242
    iget-object v0, p0, Lcom/dropbox/android/filemanager/r;->f:Ldbxyzptlk/i/g;

    new-instance v1, Ldbxyzptlk/i/i;

    new-instance v2, Lcom/dropbox/android/util/Z;

    iget-object v3, p1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ldbxyzptlk/i/i;-><init>(Lcom/dropbox/android/util/Z;)V

    invoke-virtual {v0, v1}, Ldbxyzptlk/i/g;->a(Ldbxyzptlk/i/i;)Ldbxyzptlk/i/f;

    move-result-object v0

    .line 243
    if-nez v0, :cond_68

    .line 245
    sget-object v0, Lcom/dropbox/android/filemanager/r;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File changed remotely, so re-downloading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v0, Lcom/dropbox/android/taskqueue/DownloadTask;

    iget-object v1, p0, Lcom/dropbox/android/filemanager/r;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/dropbox/android/taskqueue/DownloadTask;-><init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 247
    iget-object v1, p0, Lcom/dropbox/android/filemanager/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-static {p1}, Lcom/dropbox/android/filemanager/s;->a(Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 253
    :cond_68
    return-object p2

    :cond_69
    move v0, v1

    .line 216
    goto :goto_14

    .line 228
    :cond_6b
    iget-boolean v0, p0, Lcom/dropbox/android/filemanager/r;->e:Z

    if-eqz v0, :cond_29

    .line 230
    if-nez p2, :cond_76

    .line 231
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 233
    :cond_76
    const-string v0, "local_bytes"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 234
    const-string v0, "local_modified"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 235
    const-string v0, "local_revision"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p4, p1}, Lcom/dropbox/android/filemanager/U;->a(Lcom/dropbox/android/filemanager/LocalEntry;)Z

    move-result v1

    goto :goto_29
.end method

.method private a(Lcom/dropbox/android/util/U;Ldbxyzptlk/l/k;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 136
    invoke-virtual {p1}, Lcom/dropbox/android/util/U;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 138
    invoke-static {p2}, Lcom/dropbox/android/filemanager/LocalEntry;->a(Ldbxyzptlk/l/k;)Landroid/content/ContentValues;

    move-result-object v1

    .line 141
    :try_start_9
    const-string v2, "dropbox"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_9 .. :try_end_f} :catch_10

    .line 150
    :cond_f
    :goto_f
    return-void

    .line 142
    :catch_10
    move-exception v2

    .line 143
    const-string v2, "dropbox"

    const-string v3, "canon_path = ?"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p2, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    invoke-static {v6}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 146
    if-eq v0, v7, :cond_f

    .line 147
    sget-object v1, Lcom/dropbox/android/filemanager/r;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong number of database entries for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private a(Lcom/dropbox/android/util/U;Ldbxyzptlk/l/k;Lcom/dropbox/android/filemanager/LocalEntry;Lcom/dropbox/android/filemanager/U;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 163
    const/4 v0, 0x0

    .line 166
    if-eqz p2, :cond_72

    iget-object v3, p3, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    if-eqz v3, :cond_72

    iget-object v3, p3, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    iget-object v4, p2, Ldbxyzptlk/l/k;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    move v4, v2

    .line 168
    :goto_14
    if-eqz p2, :cond_74

    iget-object v3, p2, Ldbxyzptlk/l/k;->i:Ljava/lang/String;

    if-eqz v3, :cond_74

    iget-object v3, p2, Ldbxyzptlk/l/k;->i:Ljava/lang/String;

    iget-object v5, p3, Lcom/dropbox/android/filemanager/LocalEntry;->i:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_74

    move v3, v2

    .line 170
    :goto_25
    if-nez v4, :cond_29

    if-eqz v3, :cond_ba

    .line 173
    :cond_29
    invoke-static {p2}, Lcom/dropbox/android/filemanager/LocalEntry;->a(Ldbxyzptlk/l/k;)Landroid/content/ContentValues;

    move-result-object v0

    move-object v3, v0

    move v0, v2

    .line 176
    :goto_2f
    iget-object v4, p3, Lcom/dropbox/android/filemanager/LocalEntry;->a:Ljava/lang/String;

    if-eqz v4, :cond_76

    iget-object v4, p3, Lcom/dropbox/android/filemanager/LocalEntry;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_76

    .line 177
    invoke-direct {p0, p3, v3, v0, p4}, Lcom/dropbox/android/filemanager/r;->a(Lcom/dropbox/android/filemanager/LocalEntry;Landroid/content/ContentValues;ZLcom/dropbox/android/filemanager/U;)Landroid/content/ContentValues;

    move-result-object v3

    .line 195
    :cond_3f
    :goto_3f
    if-eqz v3, :cond_71

    .line 197
    invoke-virtual {p1}, Lcom/dropbox/android/util/U;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 199
    new-array v4, v2, [Ljava/lang/String;

    iget-object v5, p3, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-static {v5}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 200
    const-string v1, "dropbox"

    const-string v5, "canon_path = ?"

    invoke-virtual {v0, v1, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 202
    if-eq v0, v2, :cond_71

    .line 203
    sget-object v0, Lcom/dropbox/android/filemanager/r;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error updating entry with vals: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_71
    return-void

    :cond_72
    move v4, v1

    .line 166
    goto :goto_14

    :cond_74
    move v3, v1

    .line 168
    goto :goto_25

    .line 179
    :cond_76
    invoke-virtual {p4, p3}, Lcom/dropbox/android/filemanager/U;->a(Lcom/dropbox/android/filemanager/LocalEntry;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 180
    iget-object v0, p0, Lcom/dropbox/android/filemanager/r;->f:Ldbxyzptlk/i/g;

    new-instance v4, Ldbxyzptlk/i/i;

    new-instance v5, Lcom/dropbox/android/util/Z;

    iget-object v6, p3, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ldbxyzptlk/i/i;-><init>(Lcom/dropbox/android/util/Z;)V

    invoke-virtual {v0, v4}, Ldbxyzptlk/i/g;->a(Ldbxyzptlk/i/i;)Ldbxyzptlk/i/f;

    move-result-object v0

    .line 181
    if-nez v0, :cond_3f

    .line 185
    sget-object v0, Lcom/dropbox/android/filemanager/r;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No local copy of the file, and should download: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Lcom/dropbox/android/taskqueue/DownloadTask;

    iget-object v4, p0, Lcom/dropbox/android/filemanager/r;->c:Landroid/content/Context;

    invoke-direct {v0, v4, p3}, Lcom/dropbox/android/taskqueue/DownloadTask;-><init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 187
    iget-object v4, p0, Lcom/dropbox/android/filemanager/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-static {p3}, Lcom/dropbox/android/filemanager/s;->a(Lcom/dropbox/android/filemanager/LocalEntry;)V

    goto :goto_3f

    :cond_ba
    move-object v3, v0

    move v0, v1

    goto/16 :goto_2f
.end method

.method private b()V
    .registers 4

    .prologue
    .line 127
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->i()Lcom/dropbox/android/taskqueue/p;

    move-result-object v1

    .line 129
    iget-object v0, p0, Lcom/dropbox/android/filemanager/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/taskqueue/DownloadTask;

    .line 130
    invoke-virtual {v1, v0}, Lcom/dropbox/android/taskqueue/p;->b(Lcom/dropbox/android/taskqueue/k;)V

    goto :goto_e

    .line 132
    :cond_1e
    iget-object v0, p0, Lcom/dropbox/android/filemanager/r;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/dropbox/android/filemanager/r;->b()V

    .line 121
    return-void
.end method

.method public final a(Ldbxyzptlk/l/k;)V
    .registers 4
    .parameter

    .prologue
    .line 153
    new-instance v1, Lcom/dropbox/android/util/U;

    iget-object v0, p0, Lcom/dropbox/android/filemanager/r;->d:Lcom/dropbox/android/provider/g;

    invoke-direct {v1, v0}, Lcom/dropbox/android/util/U;-><init>(Lcom/dropbox/android/provider/g;)V

    .line 155
    :try_start_7
    invoke-direct {p0, v1, p1}, Lcom/dropbox/android/filemanager/r;->a(Lcom/dropbox/android/util/U;Ldbxyzptlk/l/k;)V

    .line 156
    invoke-virtual {v1}, Lcom/dropbox/android/util/U;->b()V
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    .line 158
    invoke-virtual {v1}, Lcom/dropbox/android/util/U;->c()V

    .line 160
    return-void

    .line 158
    :catchall_11
    move-exception v0

    invoke-virtual {v1}, Lcom/dropbox/android/util/U;->c()V

    throw v0
.end method

.method public final a(Ljava/util/List;Ljava/util/List;Lcom/dropbox/android/filemanager/U;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-static {}, Lcom/dropbox/android/util/ab;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/android/filemanager/r;->e:Z

    .line 63
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 65
    if-eqz p2, :cond_27

    .line 66
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/l/k;

    .line 67
    iget-boolean v3, v0, Ldbxyzptlk/l/k;->t:Z

    if-nez v3, :cond_11

    .line 69
    iget-object v3, v0, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 74
    :cond_27
    new-instance v3, Lcom/dropbox/android/util/U;

    iget-object v0, p0, Lcom/dropbox/android/filemanager/r;->d:Lcom/dropbox/android/provider/g;

    invoke-direct {v3, v0}, Lcom/dropbox/android/util/U;-><init>(Lcom/dropbox/android/provider/g;)V

    .line 78
    :try_start_2e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/filemanager/LocalEntry;

    .line 79
    sget-object v1, Lcom/dropbox/android/filemanager/U;->a:Lcom/dropbox/android/filemanager/U;

    if-ne p3, v1, :cond_5e

    .line 81
    const/4 v1, 0x0

    invoke-direct {p0, v3, v1, v0, p3}, Lcom/dropbox/android/filemanager/r;->a(Lcom/dropbox/android/util/U;Ldbxyzptlk/l/k;Lcom/dropbox/android/filemanager/LocalEntry;Lcom/dropbox/android/filemanager/U;)V
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_77
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_46} :catch_47

    goto :goto_32

    .line 109
    :catch_47
    move-exception v0

    .line 110
    :try_start_48
    sget-object v1, Lcom/dropbox/android/filemanager/r;->a:Ljava/lang/String;

    const-string v2, "Exception in insert()"

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_48 .. :try_end_56} :catchall_77

    .line 113
    invoke-virtual {v3}, Lcom/dropbox/android/util/U;->d()Z

    move-result v0

    .line 114
    invoke-virtual {v3}, Lcom/dropbox/android/util/U;->c()V

    .line 116
    :goto_5d
    return v0

    .line 82
    :cond_5e
    :try_start_5e
    iget-object v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 84
    iget-object v1, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldbxyzptlk/l/k;

    .line 87
    invoke-direct {p0, v3, v1, v0, p3}, Lcom/dropbox/android/filemanager/r;->a(Lcom/dropbox/android/util/U;Ldbxyzptlk/l/k;Lcom/dropbox/android/filemanager/LocalEntry;Lcom/dropbox/android/filemanager/U;)V

    .line 90
    iget-object v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catchall {:try_start_5e .. :try_end_76} :catchall_77
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_76} :catch_47

    goto :goto_32

    .line 113
    :catchall_77
    move-exception v0

    invoke-virtual {v3}, Lcom/dropbox/android/util/U;->d()Z

    .line 114
    invoke-virtual {v3}, Lcom/dropbox/android/util/U;->c()V

    throw v0

    .line 93
    :cond_7f
    :try_start_7f
    iget-object v1, p0, Lcom/dropbox/android/filemanager/r;->c:Landroid/content/Context;

    invoke-static {v1, v3, v0}, Lcom/dropbox/android/filemanager/s;->a(Landroid/content/Context;Lcom/dropbox/android/util/U;Lcom/dropbox/android/filemanager/LocalEntry;)V

    goto :goto_32

    .line 99
    :cond_85
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_a9

    .line 101
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/l/k;

    .line 104
    invoke-direct {p0, v3, v0}, Lcom/dropbox/android/filemanager/r;->a(Lcom/dropbox/android/util/U;Ldbxyzptlk/l/k;)V

    goto :goto_93

    .line 107
    :cond_a9
    invoke-virtual {v3}, Lcom/dropbox/android/util/U;->b()V
    :try_end_ac
    .catchall {:try_start_7f .. :try_end_ac} :catchall_77
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_ac} :catch_47

    .line 113
    invoke-virtual {v3}, Lcom/dropbox/android/util/U;->d()Z

    move-result v0

    .line 114
    invoke-virtual {v3}, Lcom/dropbox/android/util/U;->c()V

    goto :goto_5d
.end method
