.class public Lcom/dropbox/android/taskqueue/CameraUploadTask;
.super Lcom/dropbox/android/taskqueue/DbTask;
.source "panda.py"


# static fields
.field static final synthetic b:Z

.field private static final c:Ljava/lang/String;


# instance fields
.field a:J

.field private final d:Landroid/content/Context;

.field private final h:Ljava/io/File;

.field private i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:J

.field private final o:I

.field private final p:J

.field private final q:Ljava/lang/String;

.field private r:Z

.field private s:J

.field private t:Ldbxyzptlk/p/D;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-class v0, Lcom/dropbox/android/taskqueue/CameraUploadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->b:Z

    .line 62
    const-class v0, Lcom/dropbox/android/taskqueue/CameraUploadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->c:Ljava/lang/String;

    return-void

    .line 60
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Lcom/dropbox/android/util/af;->a()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v12}, Lcom/dropbox/android/taskqueue/CameraUploadTask;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJLjava/lang/String;Z)V

    .line 91
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJLjava/lang/String;Z)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/DbTask;-><init>()V

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->s:J

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a:J

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->t:Ldbxyzptlk/p/D;

    .line 96
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->d:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->h:Ljava/io/File;

    .line 98
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->k:Ljava/lang/String;

    .line 99
    iput-object p7, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->m:Ljava/lang/String;

    .line 100
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->l:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->i:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->j:Ljava/lang/String;

    .line 103
    iput-wide p5, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->n:J

    .line 104
    iput p8, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->o:I

    .line 105
    iput-wide p9, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->p:J

    .line 106
    iput-object p11, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->q:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->r:Z

    .line 110
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->s:J

    .line 111
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a:J

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/taskqueue/CameraUploadTask;Ldbxyzptlk/j/m;Lcom/dropbox/android/service/w;)Lcom/dropbox/android/taskqueue/o;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Ldbxyzptlk/j/m;Lcom/dropbox/android/service/w;)Lcom/dropbox/android/taskqueue/o;

    move-result-object v0

    return-object v0
.end method

.method private a(Ldbxyzptlk/j/m;Lcom/dropbox/android/service/w;)Lcom/dropbox/android/taskqueue/o;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-virtual {p2}, Lcom/dropbox/android/service/w;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 144
    sget-object v0, Lcom/dropbox/android/taskqueue/o;->a:Lcom/dropbox/android/taskqueue/o;

    .line 156
    :goto_8
    return-object v0

    .line 145
    :cond_9
    invoke-virtual {p1}, Ldbxyzptlk/j/m;->p()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Ldbxyzptlk/j/m;->q()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-wide v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->s:J

    const-wide/32 v2, 0x1900000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_21

    .line 147
    :cond_1e
    sget-object v0, Lcom/dropbox/android/taskqueue/o;->b:Lcom/dropbox/android/taskqueue/o;

    goto :goto_8

    .line 148
    :cond_21
    invoke-virtual {p2}, Lcom/dropbox/android/service/w;->a()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 149
    invoke-virtual {p2}, Lcom/dropbox/android/service/w;->c()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p2}, Lcom/dropbox/android/service/w;->d()Z

    move-result v0

    if-nez v0, :cond_36

    .line 150
    sget-object v0, Lcom/dropbox/android/taskqueue/o;->a:Lcom/dropbox/android/taskqueue/o;

    goto :goto_8

    .line 152
    :cond_36
    sget-object v0, Lcom/dropbox/android/taskqueue/o;->d:Lcom/dropbox/android/taskqueue/o;

    goto :goto_8

    .line 156
    :cond_39
    sget-object v0, Lcom/dropbox/android/taskqueue/o;->c:Lcom/dropbox/android/taskqueue/o;

    goto :goto_8
.end method

.method static synthetic a(Lcom/dropbox/android/taskqueue/CameraUploadTask;)Ldbxyzptlk/p/D;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->t:Ldbxyzptlk/p/D;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 234
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->i:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 238
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 239
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->i:Ljava/lang/String;

    .line 240
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 241
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 242
    const-string v5, "server_hash"

    iget-object v6, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->i:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v5, "camera_upload"

    const-string v6, "_id = ?"

    new-array v7, v0, [Ljava/lang/String;

    iget-wide v8, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->n:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    iput-boolean v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->r:Z

    .line 246
    const-string v1, "hash_change"

    invoke-static {v1, p0}, Lcom/dropbox/android/util/h;->b(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v3, "oldid"

    int-to-long v4, v2

    invoke-virtual {v1, v3, v4, v5}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/r;->c()V

    .line 249
    :goto_4b
    return v0

    :cond_4c
    move v0, v1

    goto :goto_4b
.end method

.method public static restore(Landroid/content/Context;JLjava/lang/String;)Lcom/dropbox/android/taskqueue/CameraUploadTask;
    .registers 17
    .parameter
    .parameter
    .parameter

    .prologue
    .line 618
    invoke-static/range {p3 .. p3}, Ldbxyzptlk/B/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ldbxyzptlk/B/c;

    .line 622
    const-string v0, "mBatchFileNumber"

    invoke-virtual {v1, v0}, Ldbxyzptlk/B/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 623
    if-eqz v0, :cond_71

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v8, v2

    .line 625
    :goto_16
    new-instance v0, Lcom/dropbox/android/taskqueue/CameraUploadTask;

    new-instance v2, Ljava/io/File;

    const-string v3, "mFilePath"

    invoke-virtual {v1, v3}, Ldbxyzptlk/B/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "mServerHash"

    invoke-virtual {v1, v3}, Ldbxyzptlk/B/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "mMimeType"

    invoke-virtual {v1, v4}, Ldbxyzptlk/B/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "mDbRowId"

    invoke-virtual {v1, v5}, Ldbxyzptlk/B/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v7, "mContentUri"

    invoke-virtual {v1, v7}, Ldbxyzptlk/B/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "mImportTime"

    invoke-virtual {v1, v9}, Ldbxyzptlk/B/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v11, "mImportTimeoffset"

    invoke-virtual {v1, v11}, Ldbxyzptlk/B/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "mRehashed"

    invoke-virtual {v1, v12}, Ldbxyzptlk/B/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v1, p0

    invoke-direct/range {v0 .. v12}, Lcom/dropbox/android/taskqueue/CameraUploadTask;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJLjava/lang/String;Z)V

    .line 635
    invoke-virtual {v0, p1, p2}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->b(J)V

    .line 636
    return-object v0

    .line 623
    :cond_71
    const/4 v8, 0x0

    goto :goto_16
.end method

.method private t()Lcom/dropbox/android/service/v;
    .registers 2

    .prologue
    .line 494
    new-instance v0, Lcom/dropbox/android/taskqueue/d;

    invoke-direct {v0, p0}, Lcom/dropbox/android/taskqueue/d;-><init>(Lcom/dropbox/android/taskqueue/CameraUploadTask;)V

    return-object v0
.end method

.method private u()V
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 641
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 642
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 643
    const-string v2, "uploaded"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const-string v2, "camera_upload"

    const-string v3, "_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->n:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 648
    return-void
.end method

.method private v()V
    .registers 8

    .prologue
    .line 654
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 655
    const-string v1, "camera_upload"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->n:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 656
    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/taskqueue/DbTask;)I
    .registers 7
    .parameter

    .prologue
    .line 164
    instance-of v0, p1, Lcom/dropbox/android/taskqueue/CameraUploadTask;

    if-eqz v0, :cond_41

    move-object v0, p1

    .line 165
    check-cast v0, Lcom/dropbox/android/taskqueue/CameraUploadTask;

    .line 168
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/android/util/aa;->g(Ljava/lang/String;)Z

    move-result v1

    .line 169
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/android/util/aa;->g(Ljava/lang/String;)Z

    move-result v2

    .line 170
    if-eqz v1, :cond_1d

    if-nez v2, :cond_1d

    .line 171
    const/4 v0, 0x1

    .line 187
    :goto_1c
    return v0

    .line 172
    :cond_1d
    if-nez v1, :cond_23

    if-eqz v2, :cond_23

    .line 173
    const/4 v0, -0x1

    goto :goto_1c

    .line 176
    :cond_23
    iget-wide v1, v0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a:J

    .line 177
    iget-wide v3, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3c

    .line 180
    iget-wide v0, v0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    goto :goto_1c

    .line 183
    :cond_3c
    invoke-super {p0, p1}, Lcom/dropbox/android/taskqueue/DbTask;->a(Lcom/dropbox/android/taskqueue/DbTask;)I

    move-result v0

    goto :goto_1c

    .line 187
    :cond_41
    invoke-super {p0, p1}, Lcom/dropbox/android/taskqueue/DbTask;->a(Lcom/dropbox/android/taskqueue/DbTask;)I

    move-result v0

    goto :goto_1c
.end method

.method public final a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    .registers 3
    .parameter

    .prologue
    .line 547
    invoke-virtual {p1}, Lcom/dropbox/android/taskqueue/m;->a()Z

    move-result v0

    if-nez v0, :cond_15

    .line 548
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    if-ne p1, v0, :cond_12

    .line 549
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->v()V

    .line 554
    invoke-super {p0}, Lcom/dropbox/android/taskqueue/DbTask;->g()Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    .line 560
    :goto_11
    return-object v0

    .line 557
    :cond_12
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->u()V

    .line 560
    :cond_15
    invoke-super {p0, p1}, Lcom/dropbox/android/taskqueue/DbTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    goto :goto_11
.end method

.method public final a(Landroid/content/Context;Lcom/dropbox/android/taskqueue/m;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 565
    invoke-super {p0, p1, p2}, Lcom/dropbox/android/taskqueue/DbTask;->a(Landroid/content/Context;Lcom/dropbox/android/taskqueue/m;)V

    .line 566
    invoke-virtual {p2}, Lcom/dropbox/android/taskqueue/m;->b()Lcom/dropbox/android/taskqueue/n;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/taskqueue/n;->a:Lcom/dropbox/android/taskqueue/n;

    if-eq v0, v1, :cond_23

    sget-object v0, Lcom/dropbox/android/taskqueue/m;->j:Lcom/dropbox/android/taskqueue/m;

    if-eq p2, v0, :cond_23

    .line 567
    invoke-static {p1, p0, p2}, Lcom/dropbox/android/provider/UploadLogProvider;->a(Landroid/content/Context;Lcom/dropbox/android/taskqueue/DbTask;Lcom/dropbox/android/taskqueue/m;)J

    move-result-wide v0

    .line 568
    sget-boolean v2, Lcom/dropbox/android/taskqueue/CameraUploadTask;->b:Z

    if-nez v2, :cond_23

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 570
    :cond_23
    return-void
.end method

.method protected final a(J)Z
    .registers 11
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 212
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->d:Landroid/content/Context;

    invoke-static {v1}, Ldbxyzptlk/j/m;->b(Landroid/content/Context;)Ldbxyzptlk/j/m;

    move-result-object v1

    invoke-virtual {v1}, Ldbxyzptlk/j/m;->c()Ldbxyzptlk/p/x;

    move-result-object v1

    .line 213
    if-nez v1, :cond_e

    .line 218
    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-wide v2, v1, Ldbxyzptlk/l/c;->e:J

    add-long/2addr v2, p1

    iget-wide v4, v1, Ldbxyzptlk/l/c;->d:J

    add-long/2addr v2, v4

    iget-wide v4, v1, Ldbxyzptlk/l/c;->c:J

    const-wide/32 v6, 0x3200000

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_d

    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 203
    monitor-enter p0

    .line 204
    :try_start_1
    invoke-super {p0}, Lcom/dropbox/android/taskqueue/DbTask;->b()V

    .line 205
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->t:Ldbxyzptlk/p/D;

    if-eqz v0, :cond_d

    .line 206
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->t:Ldbxyzptlk/p/D;

    invoke-interface {v0}, Ldbxyzptlk/p/D;->a()V

    .line 208
    :cond_d
    monitor-exit p0

    .line 209
    return-void

    .line 208
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public final c()Lcom/dropbox/android/taskqueue/m;
    .registers 16

    .prologue
    const-wide/16 v2, 0x0

    .line 254
    invoke-super {p0}, Lcom/dropbox/android/taskqueue/DbTask;->c()Lcom/dropbox/android/taskqueue/m;

    .line 256
    new-instance v14, Lcom/dropbox/android/taskqueue/F;

    invoke-direct {v14}, Lcom/dropbox/android/taskqueue/F;-><init>()V

    .line 258
    :try_start_a
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->a()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_2f5

    .line 262
    :try_start_d
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 263
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_2f5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_58
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_1a} :catch_63

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    :goto_1e
    return-object v0

    .line 266
    :cond_1f
    :try_start_1f
    new-instance v10, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->h:Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 267
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->s:J

    .line 268
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a:J

    .line 270
    if-eqz v10, :cond_3e

    iget-wide v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->s:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_48

    .line 271
    :cond_3e
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_43
    .catchall {:try_start_1f .. :try_end_43} :catchall_2f5
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_43} :catch_58
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_43} :catch_63

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto :goto_1e

    .line 272
    :cond_48
    :try_start_48
    iget-wide v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->s:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_6e

    .line 278
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_2f5
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_53} :catch_58
    .catch Ljava/lang/SecurityException; {:try_start_48 .. :try_end_53} :catch_63

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto :goto_1e

    .line 280
    :catch_58
    move-exception v0

    .line 281
    :try_start_59
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto :goto_1e

    .line 282
    :catch_63
    move-exception v0

    .line 283
    :try_start_64
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->f:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto :goto_1e

    .line 287
    :cond_6e
    :try_start_6e
    iget-wide v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->s:J

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(J)Z
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_2f5

    move-result v0

    if-nez v0, :cond_c7

    .line 290
    :try_start_76
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->c()Ldbxyzptlk/p/x;

    .line 291
    iget-wide v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->s:J

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(J)Z

    move-result v0

    if-nez v0, :cond_c7

    .line 292
    iget v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->e:I

    .line 293
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->d:Landroid/content/Context;

    sget-object v1, Lcom/dropbox/android/util/aw;->b:Lcom/dropbox/android/util/aw;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Lcom/dropbox/android/util/aw;Landroid/os/Bundle;ZZ)Z

    .line 295
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->l:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_9a
    .catchall {:try_start_76 .. :try_end_9a} :catchall_2f5
    .catch Ldbxyzptlk/m/b; {:try_start_76 .. :try_end_9a} :catch_9f
    .catch Ldbxyzptlk/m/a; {:try_start_76 .. :try_end_9a} :catch_ab

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto :goto_1e

    .line 298
    :catch_9f
    move-exception v0

    .line 299
    :try_start_a0
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->h:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_a5
    .catchall {:try_start_a0 .. :try_end_a5} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 300
    :catch_ab
    move-exception v0

    .line 301
    :try_start_ac
    sget-object v1, Lcom/dropbox/android/taskqueue/CameraUploadTask;->c:Ljava/lang/String;

    const-string v2, "Error getting account info for out of quota task."

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 303
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->h:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_c1
    .catchall {:try_start_ac .. :try_end_c1} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 310
    :cond_c7
    :try_start_c7
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->d:Landroid/content/Context;

    sget-object v1, Lcom/dropbox/android/util/aw;->b:Lcom/dropbox/android/util/aw;

    invoke-static {v0, v1}, Lcom/dropbox/android/service/NotificationService;->b(Landroid/content/Context;Lcom/dropbox/android/util/aw;)V

    .line 312
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->r()V

    .line 314
    new-instance v13, Lcom/dropbox/android/taskqueue/b;

    invoke-direct {v13, p0}, Lcom/dropbox/android/taskqueue/b;-><init>(Lcom/dropbox/android/taskqueue/CameraUploadTask;)V

    .line 321
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    iget-object v0, v0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;
    :try_end_dc
    .catchall {:try_start_c7 .. :try_end_dc} :catchall_2f5

    .line 323
    :try_start_dc
    monitor-enter p0
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_2f5
    .catch Ldbxyzptlk/m/b; {:try_start_dc .. :try_end_dd} :catch_128
    .catch Ldbxyzptlk/m/e; {:try_start_dc .. :try_end_dd} :catch_21e
    .catch Ldbxyzptlk/m/i; {:try_start_dc .. :try_end_dd} :catch_23e
    .catch Ldbxyzptlk/p/w; {:try_start_dc .. :try_end_dd} :catch_25a
    .catch Ldbxyzptlk/m/g; {:try_start_dc .. :try_end_dd} :catch_266
    .catch Ldbxyzptlk/m/d; {:try_start_dc .. :try_end_dd} :catch_333
    .catch Ldbxyzptlk/m/a; {:try_start_dc .. :try_end_dd} :catch_379

    .line 324
    :try_start_dd
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->o()Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 325
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->s()Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_dd .. :try_end_e8} :catchall_125

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 327
    :cond_ed
    :try_start_ed
    monitor-exit p0
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_125

    .line 331
    :try_start_ee
    iget-wide v1, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->s:J
    :try_end_f0
    .catchall {:try_start_ee .. :try_end_f0} :catchall_2f5
    .catch Ldbxyzptlk/m/b; {:try_start_ee .. :try_end_f0} :catch_128
    .catch Ldbxyzptlk/m/e; {:try_start_ee .. :try_end_f0} :catch_21e
    .catch Ldbxyzptlk/m/i; {:try_start_ee .. :try_end_f0} :catch_23e
    .catch Ldbxyzptlk/p/w; {:try_start_ee .. :try_end_f0} :catch_25a
    .catch Ldbxyzptlk/m/g; {:try_start_ee .. :try_end_f0} :catch_266
    .catch Ldbxyzptlk/m/d; {:try_start_ee .. :try_end_f0} :catch_333
    .catch Ldbxyzptlk/m/a; {:try_start_ee .. :try_end_f0} :catch_379

    const-wide/32 v3, 0x800000

    cmp-long v1, v1, v3

    if-gez v1, :cond_15a

    .line 334
    :try_start_f7
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->h:Ljava/io/File;

    invoke-static {v1}, Lcom/dropbox/android/service/CameraUploadService;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_fc
    .catchall {:try_start_f7 .. :try_end_fc} :catchall_2f5
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fc} :catch_14e
    .catch Ldbxyzptlk/m/b; {:try_start_f7 .. :try_end_fc} :catch_128
    .catch Ldbxyzptlk/m/e; {:try_start_f7 .. :try_end_fc} :catch_21e
    .catch Ldbxyzptlk/m/i; {:try_start_f7 .. :try_end_fc} :catch_23e
    .catch Ldbxyzptlk/p/w; {:try_start_f7 .. :try_end_fc} :catch_25a
    .catch Ldbxyzptlk/m/g; {:try_start_f7 .. :try_end_fc} :catch_266
    .catch Ldbxyzptlk/m/d; {:try_start_f7 .. :try_end_fc} :catch_333
    .catch Ldbxyzptlk/m/a; {:try_start_f7 .. :try_end_fc} :catch_379

    move-result-object v1

    .line 338
    :try_start_fd
    invoke-direct {p0, v1}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Ljava/lang/String;)Z

    .line 339
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->k:Ljava/lang/String;

    iget-wide v4, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a:J

    iget-wide v6, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->p:J

    iget-object v8, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->q:Ljava/lang/String;

    iget v9, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->o:I

    iget-wide v11, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->s:J

    invoke-virtual/range {v0 .. v13}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ILjava/io/InputStream;JLdbxyzptlk/l/q;)Ldbxyzptlk/p/D;

    move-result-object v0

    .line 363
    :goto_114
    monitor-enter p0
    :try_end_115
    .catchall {:try_start_fd .. :try_end_115} :catchall_2f5
    .catch Ldbxyzptlk/m/b; {:try_start_fd .. :try_end_115} :catch_128
    .catch Ldbxyzptlk/m/e; {:try_start_fd .. :try_end_115} :catch_21e
    .catch Ldbxyzptlk/m/i; {:try_start_fd .. :try_end_115} :catch_23e
    .catch Ldbxyzptlk/p/w; {:try_start_fd .. :try_end_115} :catch_25a
    .catch Ldbxyzptlk/m/g; {:try_start_fd .. :try_end_115} :catch_266
    .catch Ldbxyzptlk/m/d; {:try_start_fd .. :try_end_115} :catch_333
    .catch Ldbxyzptlk/m/a; {:try_start_fd .. :try_end_115} :catch_379

    .line 364
    :try_start_115
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->o()Z

    move-result v1

    if-eqz v1, :cond_190

    .line 365
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->s()Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    monitor-exit p0
    :try_end_120
    .catchall {:try_start_115 .. :try_end_120} :catchall_21b

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 327
    :catchall_125
    move-exception v0

    :try_start_126
    monitor-exit p0
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    :try_start_127
    throw v0
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_2f5
    .catch Ldbxyzptlk/m/b; {:try_start_127 .. :try_end_128} :catch_128
    .catch Ldbxyzptlk/m/e; {:try_start_127 .. :try_end_128} :catch_21e
    .catch Ldbxyzptlk/m/i; {:try_start_127 .. :try_end_128} :catch_23e
    .catch Ldbxyzptlk/p/w; {:try_start_127 .. :try_end_128} :catch_25a
    .catch Ldbxyzptlk/m/g; {:try_start_127 .. :try_end_128} :catch_266
    .catch Ldbxyzptlk/m/d; {:try_start_127 .. :try_end_128} :catch_333
    .catch Ldbxyzptlk/m/a; {:try_start_127 .. :try_end_128} :catch_379

    .line 395
    :catch_128
    move-exception v0

    .line 396
    :try_start_129
    sget-object v1, Lcom/dropbox/android/taskqueue/CameraUploadTask;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Exception uploading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->c:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_148
    .catchall {:try_start_129 .. :try_end_148} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 335
    :catch_14e
    move-exception v0

    .line 336
    :try_start_14f
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_154
    .catchall {:try_start_14f .. :try_end_154} :catchall_2f5
    .catch Ldbxyzptlk/m/b; {:try_start_14f .. :try_end_154} :catch_128
    .catch Ldbxyzptlk/m/e; {:try_start_14f .. :try_end_154} :catch_21e
    .catch Ldbxyzptlk/m/i; {:try_start_14f .. :try_end_154} :catch_23e
    .catch Ldbxyzptlk/p/w; {:try_start_14f .. :try_end_154} :catch_25a
    .catch Ldbxyzptlk/m/g; {:try_start_14f .. :try_end_154} :catch_266
    .catch Ldbxyzptlk/m/d; {:try_start_14f .. :try_end_154} :catch_333
    .catch Ldbxyzptlk/m/a; {:try_start_14f .. :try_end_154} :catch_379

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 344
    :cond_15a
    :try_start_15a
    iget-wide v1, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->s:J

    invoke-static {v10, v1, v2, v13}, Ldbxyzptlk/p/a;->b(Ljava/io/FileInputStream;JLdbxyzptlk/l/q;)Ldbxyzptlk/p/g;
    :try_end_15f
    .catchall {:try_start_15a .. :try_end_15f} :catchall_2f5
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_15f} :catch_17d
    .catch Ldbxyzptlk/m/b; {:try_start_15a .. :try_end_15f} :catch_128
    .catch Ldbxyzptlk/m/e; {:try_start_15a .. :try_end_15f} :catch_21e
    .catch Ldbxyzptlk/m/i; {:try_start_15a .. :try_end_15f} :catch_23e
    .catch Ldbxyzptlk/p/w; {:try_start_15a .. :try_end_15f} :catch_25a
    .catch Ldbxyzptlk/m/g; {:try_start_15a .. :try_end_15f} :catch_266
    .catch Ldbxyzptlk/m/d; {:try_start_15a .. :try_end_15f} :catch_333
    .catch Ldbxyzptlk/m/a; {:try_start_15a .. :try_end_15f} :catch_379

    move-result-object v11

    .line 349
    :try_start_160
    new-instance v12, Lcom/dropbox/android/taskqueue/c;

    invoke-direct {v12, p0}, Lcom/dropbox/android/taskqueue/c;-><init>(Lcom/dropbox/android/taskqueue/CameraUploadTask;)V

    .line 358
    iget-object v1, v11, Ldbxyzptlk/p/g;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Ljava/lang/String;)Z

    .line 359
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->k:Ljava/lang/String;

    iget-wide v4, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a:J

    iget-wide v6, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->p:J

    iget-object v8, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->q:Ljava/lang/String;

    iget v9, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->o:I

    invoke-virtual/range {v0 .. v12}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ILjava/io/FileInputStream;Ldbxyzptlk/p/g;Ldbxyzptlk/p/l;)Ldbxyzptlk/p/D;

    move-result-object v0

    goto :goto_114

    .line 345
    :catch_17d
    move-exception v0

    .line 346
    sget-object v1, Lcom/dropbox/android/taskqueue/CameraUploadTask;->c:Ljava/lang/String;

    const-string v2, "Error while scanning file"

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_18a
    .catchall {:try_start_160 .. :try_end_18a} :catchall_2f5
    .catch Ldbxyzptlk/m/b; {:try_start_160 .. :try_end_18a} :catch_128
    .catch Ldbxyzptlk/m/e; {:try_start_160 .. :try_end_18a} :catch_21e
    .catch Ldbxyzptlk/m/i; {:try_start_160 .. :try_end_18a} :catch_23e
    .catch Ldbxyzptlk/p/w; {:try_start_160 .. :try_end_18a} :catch_25a
    .catch Ldbxyzptlk/m/g; {:try_start_160 .. :try_end_18a} :catch_266
    .catch Ldbxyzptlk/m/d; {:try_start_160 .. :try_end_18a} :catch_333
    .catch Ldbxyzptlk/m/a; {:try_start_160 .. :try_end_18a} :catch_379

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 367
    :cond_190
    :try_start_190
    iput-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->t:Ldbxyzptlk/p/D;

    .line 368
    monitor-exit p0
    :try_end_193
    .catchall {:try_start_190 .. :try_end_193} :catchall_21b

    .line 370
    :try_start_193
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->t()Lcom/dropbox/android/service/v;

    move-result-object v1

    .line 371
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/service/t;->a(Lcom/dropbox/android/service/v;)V
    :try_end_19e
    .catchall {:try_start_193 .. :try_end_19e} :catchall_2f5
    .catch Ldbxyzptlk/m/b; {:try_start_193 .. :try_end_19e} :catch_128
    .catch Ldbxyzptlk/m/e; {:try_start_193 .. :try_end_19e} :catch_21e
    .catch Ldbxyzptlk/m/i; {:try_start_193 .. :try_end_19e} :catch_23e
    .catch Ldbxyzptlk/p/w; {:try_start_193 .. :try_end_19e} :catch_25a
    .catch Ldbxyzptlk/m/g; {:try_start_193 .. :try_end_19e} :catch_266
    .catch Ldbxyzptlk/m/d; {:try_start_193 .. :try_end_19e} :catch_333
    .catch Ldbxyzptlk/m/a; {:try_start_193 .. :try_end_19e} :catch_379

    .line 375
    :try_start_19e
    const-string v0, "net.start"

    invoke-static {v0, p0}, Lcom/dropbox/android/util/h;->b(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 376
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->t:Ldbxyzptlk/p/D;

    invoke-interface {v0}, Ldbxyzptlk/p/D;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/p/t;

    .line 377
    const-string v2, "net.end"

    invoke-static {v2, p0}, Lcom/dropbox/android/util/h;->b(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/util/r;->c()V
    :try_end_1b8
    .catchall {:try_start_19e .. :try_end_1b8} :catchall_235

    .line 379
    :try_start_1b8
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dropbox/android/service/t;->b(Lcom/dropbox/android/service/v;)V

    .line 382
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/filemanager/v;->h()Lcom/dropbox/android/taskqueue/q;

    move-result-object v1

    .line 383
    invoke-virtual {v0}, Ldbxyzptlk/p/t;->a()Ldbxyzptlk/l/k;

    move-result-object v2

    iget-object v2, v2, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    .line 384
    invoke-virtual {v0}, Ldbxyzptlk/p/t;->a()Ldbxyzptlk/l/k;

    move-result-object v3

    iget-object v3, v3, Ldbxyzptlk/l/k;->r:Ljava/lang/String;

    .line 385
    sget-object v4, Lcom/dropbox/android/taskqueue/v;->b:Lcom/dropbox/android/taskqueue/v;

    invoke-static {}, Lcom/dropbox/android/util/aW;->d()Ldbxyzptlk/l/o;

    move-result-object v5

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V

    .line 386
    sget-object v4, Lcom/dropbox/android/taskqueue/v;->b:Lcom/dropbox/android/taskqueue/v;

    invoke-static {}, Lcom/dropbox/android/util/aW;->f()Ldbxyzptlk/l/o;

    move-result-object v5

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V

    .line 387
    sget-object v4, Lcom/dropbox/android/taskqueue/v;->b:Lcom/dropbox/android/taskqueue/v;

    invoke-static {}, Lcom/dropbox/android/util/aW;->e()Ldbxyzptlk/l/o;

    move-result-object v5

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V
    :try_end_1ee
    .catchall {:try_start_1b8 .. :try_end_1ee} :catchall_2f5
    .catch Ldbxyzptlk/m/b; {:try_start_1b8 .. :try_end_1ee} :catch_128
    .catch Ldbxyzptlk/m/e; {:try_start_1b8 .. :try_end_1ee} :catch_21e
    .catch Ldbxyzptlk/m/i; {:try_start_1b8 .. :try_end_1ee} :catch_23e
    .catch Ldbxyzptlk/p/w; {:try_start_1b8 .. :try_end_1ee} :catch_25a
    .catch Ldbxyzptlk/m/g; {:try_start_1b8 .. :try_end_1ee} :catch_266
    .catch Ldbxyzptlk/m/d; {:try_start_1b8 .. :try_end_1ee} :catch_333
    .catch Ldbxyzptlk/m/a; {:try_start_1b8 .. :try_end_1ee} :catch_379

    .line 391
    :try_start_1ee
    invoke-virtual {v0}, Ldbxyzptlk/p/t;->b()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_202

    .line 392
    invoke-virtual {v0}, Ldbxyzptlk/p/t;->b()F

    move-result v0

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_202
    .catchall {:try_start_1ee .. :try_end_202} :catchall_2f5
    .catch Ljava/lang/InterruptedException; {:try_start_1ee .. :try_end_202} :catch_3ab
    .catch Ldbxyzptlk/m/b; {:try_start_1ee .. :try_end_202} :catch_128
    .catch Ldbxyzptlk/m/e; {:try_start_1ee .. :try_end_202} :catch_21e
    .catch Ldbxyzptlk/m/i; {:try_start_1ee .. :try_end_202} :catch_23e
    .catch Ldbxyzptlk/p/w; {:try_start_1ee .. :try_end_202} :catch_25a
    .catch Ldbxyzptlk/m/g; {:try_start_1ee .. :try_end_202} :catch_266
    .catch Ldbxyzptlk/m/d; {:try_start_1ee .. :try_end_202} :catch_333
    .catch Ldbxyzptlk/m/a; {:try_start_1ee .. :try_end_202} :catch_379

    .line 480
    :cond_202
    :goto_202
    :try_start_202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dropbox.android.taskqueue.CameraUploadTask.ACTION_CAMERA_UPLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->d:Landroid/content/Context;

    invoke-static {v1}, Ldbxyzptlk/a/g;->a(Landroid/content/Context;)Ldbxyzptlk/a/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldbxyzptlk/a/g;->a(Landroid/content/Intent;)Z

    .line 483
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->g()Lcom/dropbox/android/taskqueue/m;
    :try_end_215
    .catchall {:try_start_202 .. :try_end_215} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 368
    :catchall_21b
    move-exception v0

    :try_start_21c
    monitor-exit p0
    :try_end_21d
    .catchall {:try_start_21c .. :try_end_21d} :catchall_21b

    :try_start_21d
    throw v0
    :try_end_21e
    .catchall {:try_start_21d .. :try_end_21e} :catchall_2f5
    .catch Ldbxyzptlk/m/b; {:try_start_21d .. :try_end_21e} :catch_128
    .catch Ldbxyzptlk/m/e; {:try_start_21d .. :try_end_21e} :catch_21e
    .catch Ldbxyzptlk/m/i; {:try_start_21d .. :try_end_21e} :catch_23e
    .catch Ldbxyzptlk/p/w; {:try_start_21d .. :try_end_21e} :catch_25a
    .catch Ldbxyzptlk/m/g; {:try_start_21d .. :try_end_21e} :catch_266
    .catch Ldbxyzptlk/m/d; {:try_start_21d .. :try_end_21e} :catch_333
    .catch Ldbxyzptlk/m/a; {:try_start_21d .. :try_end_21e} :catch_379

    .line 398
    :catch_21e
    move-exception v0

    .line 399
    :try_start_21f
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->o()Z

    move-result v0

    if-eqz v0, :cond_24f

    .line 400
    sget-object v0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->c:Ljava/lang/String;

    const-string v1, "Upload canceled"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->s()Lcom/dropbox/android/taskqueue/m;
    :try_end_22f
    .catchall {:try_start_21f .. :try_end_22f} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 379
    :catchall_235
    move-exception v0

    :try_start_236
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/dropbox/android/service/t;->b(Lcom/dropbox/android/service/v;)V

    throw v0
    :try_end_23e
    .catchall {:try_start_236 .. :try_end_23e} :catchall_2f5
    .catch Ldbxyzptlk/m/b; {:try_start_236 .. :try_end_23e} :catch_128
    .catch Ldbxyzptlk/m/e; {:try_start_236 .. :try_end_23e} :catch_21e
    .catch Ldbxyzptlk/m/i; {:try_start_236 .. :try_end_23e} :catch_23e
    .catch Ldbxyzptlk/p/w; {:try_start_236 .. :try_end_23e} :catch_25a
    .catch Ldbxyzptlk/m/g; {:try_start_236 .. :try_end_23e} :catch_266
    .catch Ldbxyzptlk/m/d; {:try_start_236 .. :try_end_23e} :catch_333
    .catch Ldbxyzptlk/m/a; {:try_start_236 .. :try_end_23e} :catch_379

    .line 409
    :catch_23e
    move-exception v0

    .line 410
    :try_start_23f
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dropbox/android/util/b;->b(Landroid/content/Context;)V

    .line 411
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_249
    .catchall {:try_start_23f .. :try_end_249} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 407
    :cond_24f
    :try_start_24f
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->c:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_254
    .catchall {:try_start_24f .. :try_end_254} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 412
    :catch_25a
    move-exception v0

    .line 413
    :try_start_25b
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->i:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_260
    .catchall {:try_start_25b .. :try_end_260} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 414
    :catch_266
    move-exception v0

    .line 415
    :try_start_267
    sget-object v1, Lcom/dropbox/android/taskqueue/CameraUploadTask;->c:Ljava/lang/String;

    const-string v2, "Server exception uploading."

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget v1, v0, Ldbxyzptlk/m/g;->b:I

    sparse-switch v1, :sswitch_data_3ae

    .line 463
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 464
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->h:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_281
    .catchall {:try_start_267 .. :try_end_281} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 421
    :sswitch_287
    :try_start_287
    sget-object v1, Lcom/dropbox/android/taskqueue/CameraUploadTask;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sent bad camera upload hash for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-boolean v1, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->r:Z

    if-nez v1, :cond_2cc

    .line 423
    sget-object v1, Lcom/dropbox/android/taskqueue/CameraUploadTask;->c:Ljava/lang/String;

    const-string v2, "Rehashing."

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ae
    .catchall {:try_start_287 .. :try_end_2ae} :catchall_2f5

    .line 425
    :try_start_2ae
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->h:Ljava/io/File;

    invoke-static {v1}, Lcom/dropbox/android/service/CameraUploadService;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-direct {p0, v1}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c3

    .line 428
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->c()Lcom/dropbox/android/taskqueue/m;
    :try_end_2bd
    .catchall {:try_start_2ae .. :try_end_2bd} :catchall_2f5
    .catch Ljava/io/IOException; {:try_start_2ae .. :try_end_2bd} :catch_3a8

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 430
    :cond_2c3
    :try_start_2c3
    const-string v1, "rehashed_nochange"

    invoke-static {v1, p0}, Lcom/dropbox/android/util/h;->b(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/r;->c()V
    :try_end_2cc
    .catchall {:try_start_2c3 .. :try_end_2cc} :catchall_2f5
    .catch Ljava/io/IOException; {:try_start_2c3 .. :try_end_2cc} :catch_3a8

    .line 439
    :cond_2cc
    :goto_2cc
    :try_start_2cc
    sget-object v1, Lcom/dropbox/android/taskqueue/CameraUploadTask;->c:Ljava/lang/String;

    const-string v2, "Failing due to bad hash."

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 441
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->h:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_2e1
    .catchall {:try_start_2cc .. :try_end_2e1} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 444
    :sswitch_2e7
    :try_start_2e7
    sget-object v0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->c:Ljava/lang/String;

    const-string v1, "Got a camera upload conflict."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dropbox/android/service/CameraUploadService;->b(Landroid/content/Context;)V
    :try_end_2f3
    .catchall {:try_start_2e7 .. :try_end_2f3} :catchall_2f5

    goto/16 :goto_202

    .line 485
    :catchall_2f5
    move-exception v0

    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    throw v0

    .line 448
    :sswitch_2fa
    :try_start_2fa
    iget v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->e:I
    :try_end_300
    .catchall {:try_start_2fa .. :try_end_300} :catchall_2f5

    .line 450
    :try_start_300
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->c()Ldbxyzptlk/p/x;
    :try_end_307
    .catchall {:try_start_300 .. :try_end_307} :catchall_2f5
    .catch Ldbxyzptlk/m/a; {:try_start_300 .. :try_end_307} :catch_31c

    .line 456
    :try_start_307
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->d:Landroid/content/Context;

    sget-object v1, Lcom/dropbox/android/util/aw;->b:Lcom/dropbox/android/util/aw;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Lcom/dropbox/android/util/aw;Landroid/os/Bundle;ZZ)Z

    .line 458
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->k:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_316
    .catchall {:try_start_307 .. :try_end_316} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 451
    :catch_31c
    move-exception v0

    .line 454
    :try_start_31d
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->h:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_322
    .catchall {:try_start_31d .. :try_end_322} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 461
    :sswitch_328
    :try_start_328
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->h:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_32d
    .catchall {:try_start_328 .. :try_end_32d} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 466
    :catch_333
    move-exception v0

    .line 467
    :try_start_334
    invoke-virtual {v0}, Ldbxyzptlk/m/d;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5xx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34b

    .line 468
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->h:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_345
    .catchall {:try_start_334 .. :try_end_345} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 470
    :cond_34b
    :try_start_34b
    sget-object v1, Lcom/dropbox/android/taskqueue/CameraUploadTask;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception uploading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 472
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->d:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_373
    .catchall {:try_start_34b .. :try_end_373} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 474
    :catch_379
    move-exception v0

    .line 475
    :try_start_37a
    sget-object v1, Lcom/dropbox/android/taskqueue/CameraUploadTask;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception uploading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 477
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_3a2
    .catchall {:try_start_37a .. :try_end_3a2} :catchall_2f5

    move-result-object v0

    .line 485
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_1e

    .line 431
    :catch_3a8
    move-exception v1

    goto/16 :goto_2cc

    .line 394
    :catch_3ab
    move-exception v0

    goto/16 :goto_202

    .line 416
    :sswitch_data_3ae
    .sparse-switch
        0x199 -> :sswitch_2e7
        0x19c -> :sswitch_287
        0x1f6 -> :sswitch_328
        0x1f7 -> :sswitch_328
        0x1fb -> :sswitch_2fa
    .end sparse-switch
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 60
    check-cast p1, Lcom/dropbox/android/taskqueue/DbTask;

    invoke-virtual {p0, p1}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/DbTask;)I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraupload~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ldbxyzptlk/i/i;
    .registers 4

    .prologue
    .line 592
    new-instance v0, Ldbxyzptlk/i/i;

    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->m()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ldbxyzptlk/i/i;-><init>(J)V

    return-object v0
.end method

.method protected final f()J
    .registers 3

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->s:J

    return-wide v0
.end method

.method public final g()Lcom/dropbox/android/taskqueue/m;
    .registers 2

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->u()V

    .line 542
    invoke-super {p0}, Lcom/dropbox/android/taskqueue/DbTask;->g()Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    return-object v0
.end method

.method public final h()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 574
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 575
    sget-object v1, Lcom/dropbox/android/provider/f;->d:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    sget-object v1, Lcom/dropbox/android/provider/f;->e:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    sget-object v1, Lcom/dropbox/android/provider/f;->f:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->s:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 578
    return-object v0
.end method

.method public final i()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final j_()Lcom/dropbox/android/taskqueue/o;
    .registers 6

    .prologue
    .line 116
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ldbxyzptlk/j/m;->f()Z

    move-result v1

    if-nez v1, :cond_d

    .line 118
    sget-object v0, Lcom/dropbox/android/taskqueue/o;->f:Lcom/dropbox/android/taskqueue/o;

    .line 135
    :cond_c
    :goto_c
    return-object v0

    .line 121
    :cond_d
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/service/t;->b()Lcom/dropbox/android/service/w;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Ldbxyzptlk/j/m;Lcom/dropbox/android/service/w;)Lcom/dropbox/android/taskqueue/o;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/dropbox/android/taskqueue/o;->a:Lcom/dropbox/android/taskqueue/o;

    if-ne v0, v1, :cond_c

    .line 127
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dropbox/android/util/y;->a(Landroid/content/Context;)Lcom/dropbox/android/util/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/C;->a()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 128
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->d:Landroid/content/Context;

    sget-object v1, Lcom/dropbox/android/util/aw;->c:Lcom/dropbox/android/util/aw;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Lcom/dropbox/android/util/aw;Landroid/os/Bundle;ZZ)Z

    .line 130
    sget-object v0, Lcom/dropbox/android/taskqueue/o;->e:Lcom/dropbox/android/taskqueue/o;

    goto :goto_c

    .line 132
    :cond_36
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->d:Landroid/content/Context;

    sget-object v1, Lcom/dropbox/android/util/aw;->c:Lcom/dropbox/android/util/aw;

    invoke-static {v0, v1}, Lcom/dropbox/android/service/NotificationService;->b(Landroid/content/Context;Lcom/dropbox/android/util/aw;)V

    .line 135
    sget-object v0, Lcom/dropbox/android/taskqueue/o;->a:Lcom/dropbox/android/taskqueue/o;

    goto :goto_c
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 5

    .prologue
    .line 604
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 605
    const-string v1, "mFilePath"

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string v1, "mServerHash"

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v1, "mMimeType"

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v1, "mDbRowId"

    iget-wide v2, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v1, "mBatchFileNumber"

    iget v2, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v1, "mContentUri"

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v1, "mImportTime"

    iget-wide v2, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v1, "mImportTimeoffset"

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->q:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v1, "mRehashed"

    iget-boolean v2, p0, Lcom/dropbox/android/taskqueue/CameraUploadTask;->r:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    invoke-static {v0}, Ldbxyzptlk/B/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraUploadTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
