.class public Lcom/estrongs/android/util/ah;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/estrongs/android/util/ah;

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:I

.field private static f:[Ljava/lang/String;

.field private static g:[Z

.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static i:I


# instance fields
.field private c:Landroid/database/sqlite/SQLiteDatabase;

.field private j:Z

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/Thread;

.field private n:Landroid/os/ConditionVariable;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    const/16 v2, 0xa

    const/4 v1, 0x0

    sput-object v0, Lcom/estrongs/android/util/ah;->a:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/ah;->d:Ljava/util/HashMap;

    sput v1, Lcom/estrongs/android/util/ah;->e:I

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    new-array v0, v2, [Z

    sput-object v0, Lcom/estrongs/android/util/ah;->g:[Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/ah;->h:Ljava/util/HashMap;

    sput v1, Lcom/estrongs/android/util/ah;->i:I

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    iput-boolean v1, p0, Lcom/estrongs/android/util/ah;->j:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/util/ah;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/util/ah;->l:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/estrongs/android/util/ah;->m:Ljava/lang/Thread;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/util/ah;->n:Landroid/os/ConditionVariable;

    iput-boolean v1, p0, Lcom/estrongs/android/util/ah;->o:Z

    return-void
.end method

.method private a(ILjava/lang/String;)I
    .registers 13

    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_9

    move v0, v8

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_21

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_21
    invoke-direct {p0, p2}, Lcom/estrongs/android/util/ah;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_25
    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "file_cache"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "server_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5d
    .catchall {:try_start_25 .. :try_end_5d} :catchall_87
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_5d} :catch_7b

    move-result-object v1

    if-eqz v1, :cond_66

    :try_start_60
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_8e
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_91

    move-result v0

    if-nez v0, :cond_6d

    :cond_66
    if-eqz v1, :cond_6b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6b
    move v0, v8

    goto :goto_8

    :cond_6d
    :try_start_6d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_8e
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_74} :catch_91

    move-result v0

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catch_7b
    move-exception v0

    move-object v1, v9

    :goto_7d
    :try_start_7d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_8e

    if-eqz v1, :cond_85

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_85
    move v0, v8

    goto :goto_8

    :catchall_87
    move-exception v0

    :goto_88
    if-eqz v9, :cond_8d

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8d
    throw v0

    :catchall_8e
    move-exception v0

    move-object v9, v1

    goto :goto_88

    :catch_91
    move-exception v0

    goto :goto_7d
.end method

.method private a(ILjava/lang/String;I)V
    .registers 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_a
    new-instance v1, Lcom/estrongs/android/util/aj;

    invoke-direct {v1}, Lcom/estrongs/android/util/aj;-><init>()V

    iput p1, v1, Lcom/estrongs/android/util/aj;->b:I

    iput-object p2, v1, Lcom/estrongs/android/util/aj;->d:Ljava/lang/String;

    iput v0, v1, Lcom/estrongs/android/util/aj;->c:I

    iput v2, v1, Lcom/estrongs/android/util/aj;->e:I

    iput p3, v1, Lcom/estrongs/android/util/aj;->f:I

    invoke-direct {p0, v1}, Lcom/estrongs/android/util/ah;->a(Lcom/estrongs/android/util/aj;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    if-eqz p3, :cond_31

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_31
    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/util/ah;->a(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0, p1, v1, v2}, Lcom/estrongs/android/util/ah;->a(ILjava/lang/String;I)V

    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/util/ah;->a(ILjava/lang/String;)I

    move-result v0

    :cond_4a
    if-nez v0, :cond_a

    goto :goto_1c
.end method

.method private a(Lcom/estrongs/android/util/aj;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT INTO file_cache (server_id,path,parent_id,count,isdir) values("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/estrongs/android/util/aj;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/util/aj;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/util/ah;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/util/aj;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/util/aj;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/util/aj;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_50
    iget-object v1, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_55} :catch_56

    goto :goto_4

    :catch_56
    move-exception v0

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/util/ah;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/util/ah;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/util/ah;->o:Z

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/util/ah;)Landroid/os/ConditionVariable;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->n:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method public static declared-synchronized b()Lcom/estrongs/android/util/ah;
    .registers 6

    const/4 v0, 0x0

    const-class v3, Lcom/estrongs/android/util/ah;

    monitor-enter v3

    :try_start_4
    sget-object v1, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    if-nez v1, :cond_b2

    sget-object v1, Lcom/estrongs/android/util/ah;->a:Ljava/lang/String;

    if-nez v1, :cond_13

    new-instance v0, Lcom/estrongs/android/util/ah;

    invoke-direct {v0}, Lcom/estrongs/android/util/ah;-><init>()V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_ac

    :goto_11
    monitor-exit v3

    return-object v0

    :cond_13
    :try_start_13
    new-instance v2, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/util/ah;->a:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_ac

    :try_start_1a
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/estrongs/android/util/ah;->a:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_ac
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1a .. :try_end_21} :catch_c4
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_21} :catch_b6

    :try_start_21
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2a
    new-instance v2, Lcom/estrongs/android/util/ah;

    invoke-direct {v2}, Lcom/estrongs/android/util/ah;-><init>()V

    sput-object v2, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    sget-object v2, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/estrongs/android/util/ah;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "visit_history"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, v2, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    iget-object v2, v2, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_af

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/estrongs/android/util/ah;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "visit_history"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    sget-object v2, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/estrongs/android/util/ah;->a:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "visit_history"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, v2, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    iget-object v2, v2, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_af

    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;
    :try_end_99
    .catchall {:try_start_21 .. :try_end_99} :catchall_ac
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_21 .. :try_end_99} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_99} :catch_b6

    goto/16 :goto_11

    :catch_9b
    move-exception v0

    :goto_9c
    const/4 v2, 0x0

    :try_start_9d
    sput-object v2, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    new-instance v0, Lcom/estrongs/android/util/ah;

    invoke-direct {v0}, Lcom/estrongs/android/util/ah;-><init>()V
    :try_end_aa
    .catchall {:try_start_9d .. :try_end_aa} :catchall_ac

    goto/16 :goto_11

    :catchall_ac
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_af
    :try_start_af
    invoke-static {}, Lcom/estrongs/android/util/ah;->j()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_ac
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_af .. :try_end_b2} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_b6

    :cond_b2
    :try_start_b2
    sget-object v0, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    goto/16 :goto_11

    :catch_b6
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/estrongs/android/util/ah;

    invoke-direct {v0}, Lcom/estrongs/android/util/ah;-><init>()V
    :try_end_c2
    .catchall {:try_start_b2 .. :try_end_c2} :catchall_ac

    goto/16 :goto_11

    :catch_c4
    move-exception v0

    move-object v1, v2

    goto :goto_9c
.end method

.method private b(ILjava/lang/String;)Lcom/estrongs/android/util/aj;
    .registers 12

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_7

    move-object v0, v8

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "file_cache"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "path"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "count"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "parent_id"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "isdir"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "server_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/estrongs/android/util/ah;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "count"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_a9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_58} :catch_9c

    move-result-object v1

    if-eqz v1, :cond_61

    :try_start_5b
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_b3

    move-result v0

    if-nez v0, :cond_68

    :cond_61
    if-eqz v1, :cond_66

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_66
    move-object v0, v8

    goto :goto_6

    :cond_68
    :try_start_68
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v0, Lcom/estrongs/android/util/aj;

    invoke-direct {v0}, Lcom/estrongs/android/util/aj;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/aj;->a:I

    iput p1, v0, Lcom/estrongs/android/util/aj;->b:I

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/util/aj;->d:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/aj;->e:I

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/aj;->c:I

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/estrongs/android/util/aj;->f:I
    :try_end_95
    .catchall {:try_start_68 .. :try_end_95} :catchall_b0
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_95} :catch_b3

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    :catch_9c
    move-exception v0

    move-object v1, v8

    :goto_9e
    :try_start_9e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_b0

    if-eqz v1, :cond_a6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a6
    move-object v0, v8

    goto/16 :goto_6

    :catchall_a9
    move-exception v0

    :goto_aa
    if-eqz v8, :cond_af

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_af
    throw v0

    :catchall_b0
    move-exception v0

    move-object v8, v1

    goto :goto_aa

    :catch_b3
    move-exception v0

    goto :goto_9e
.end method

.method private b(Lcom/estrongs/android/util/aj;)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE file_cache SET count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/estrongs/android/util/aj;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "server_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/util/aj;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/util/aj;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4b} :catch_4c

    goto :goto_4

    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method static synthetic c(Lcom/estrongs/android/util/ah;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/util/ah;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static d(I)V
    .registers 3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    :goto_3
    return-void

    :cond_4
    if-ge p0, v0, :cond_f

    :try_start_6
    const-string v0, "ALTER TABLE visit_history ADD isdir INTEGER"

    sget-object v1, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    iget-object v1, v1, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_19

    :cond_f
    const-string v0, "UPDATE cachedb_version SET dbver=2"

    sget-object v1, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    iget-object v1, v1, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    const-string v0, "\"\""

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private f(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/estrongs/android/util/ah;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_9
    iget-object v1, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "INSERT INTO server_id (server) values("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_24

    goto :goto_4

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private g(Ljava/lang/String;)I
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_8

    move v0, v8

    :goto_7
    return v0

    :cond_8
    sget-object v0, Lcom/estrongs/android/util/ah;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_63

    invoke-direct {p0, p1}, Lcom/estrongs/android/util/ah;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_16
    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "server_id"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "server="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_76
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_38} :catch_80

    move-result-object v1

    if-eqz v1, :cond_41

    :try_start_3b
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_7d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_6b

    move-result v0

    if-nez v0, :cond_48

    :cond_41
    if-eqz v1, :cond_46

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_46
    move v0, v8

    goto :goto_7

    :cond_48
    :try_start_48
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lcom/estrongs/android/util/ah;->d:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_7d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_58} :catch_6b

    :try_start_58
    sget-object v3, Lcom/estrongs/android/util/ah;->d:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_68

    if-eqz v1, :cond_63

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_63
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7

    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_7d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6b} :catch_6b

    :catch_6b
    move-exception v0

    :goto_6c
    :try_start_6c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_7d

    if-eqz v1, :cond_74

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_74
    move v0, v8

    goto :goto_7

    :catchall_76
    move-exception v0

    :goto_77
    if-eqz v9, :cond_7c

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7c
    throw v0

    :catchall_7d
    move-exception v0

    move-object v9, v1

    goto :goto_77

    :catch_80
    move-exception v0

    move-object v1, v9

    goto :goto_6c
.end method

.method private static j()V
    .registers 2

    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS server_id (id INTEGER PRIMARY KEY,server TEXT UNIQUE)"

    sget-object v1, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    iget-object v1, v1, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS file_cache (id INTEGER PRIMARY KEY,server_id INTEGER,path TEXT,parent_id INTEGER,isdir INTEGER,count INTEGER, UNIQUE(server_id, path))"

    sget-object v1, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    iget-object v1, v1, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS visit_history (id INTEGER PRIMARY KEY,isdir INTEGER,path TEXT UNIQUE)"

    sget-object v1, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    iget-object v1, v1, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS cachedb_version (dbver INTEGER UNIQUE)"

    sget-object v1, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    iget-object v1, v1, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/util/ah;->k()I

    move-result v0

    invoke-static {v0}, Lcom/estrongs/android/util/ah;->d(I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method

.method private static k()I
    .registers 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    sget-object v0, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    iget-object v0, v0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cachedb_version"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dbver"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_3f

    move-result-object v1

    if-eqz v1, :cond_21

    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_31

    :cond_21
    sget-object v0, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    iget-object v0, v0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "INSERT INTO cachedb_version (dbver) values(2)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_53
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2a} :catch_55

    if-eqz v1, :cond_2f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2f
    move v0, v8

    :cond_30
    :goto_30
    return v0

    :cond_31
    :try_start_31
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_53
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_38} :catch_55

    move-result v0

    if-eqz v1, :cond_30

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_30

    :catch_3f
    move-exception v0

    move-object v1, v9

    :goto_41
    :try_start_41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_53

    if-eqz v1, :cond_49

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_49
    move v0, v8

    goto :goto_30

    :catchall_4b
    move-exception v0

    move-object v1, v9

    :goto_4d
    if-eqz v1, :cond_52

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_52
    throw v0

    :catchall_53
    move-exception v0

    goto :goto_4d

    :catch_55
    move-exception v0

    goto :goto_41
.end method


# virtual methods
.method public a(II)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/aj;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/estrongs/android/util/ah;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public a(IILjava/lang/String;)Ljava/util/HashMap;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/aj;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_7

    move-object v0, v8

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "file_cache"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "path"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "count"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "isdir"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "server_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "parent_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "count"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_c2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4f} :catch_b5

    move-result-object v1

    if-eqz v1, :cond_58

    :try_start_52
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_ca
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_cc

    move-result v0

    if-nez v0, :cond_5f

    :cond_58
    if-eqz v1, :cond_5d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5d
    move-object v0, v8

    goto :goto_6

    :cond_5f
    :try_start_5f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_ca
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_67} :catch_cc

    move-result v2

    :goto_68
    if-nez v2, :cond_70

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :cond_70
    :try_start_70
    new-instance v3, Lcom/estrongs/android/util/aj;

    invoke-direct {v3}, Lcom/estrongs/android/util/aj;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/estrongs/android/util/aj;->a:I

    iput p1, v3, Lcom/estrongs/android/util/aj;->b:I

    iput p2, v3, Lcom/estrongs/android/util/aj;->c:I

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/estrongs/android/util/aj;->d:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/estrongs/android/util/aj;->e:I

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/estrongs/android/util/aj;->f:I

    if-nez p3, :cond_a1

    iget-object v2, v3, Lcom/estrongs/android/util/aj;->d:Ljava/lang/String;

    :goto_99
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    goto :goto_68

    :cond_a1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/estrongs/android/util/aj;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b3
    .catchall {:try_start_70 .. :try_end_b3} :catchall_ca
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_b3} :catch_cc

    move-result-object v2

    goto :goto_99

    :catch_b5
    move-exception v0

    move-object v1, v8

    :goto_b7
    :try_start_b7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_ca

    if-eqz v1, :cond_bf

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_bf
    move-object v0, v8

    goto/16 :goto_6

    :catchall_c2
    move-exception v0

    move-object v1, v8

    :goto_c4
    if-eqz v1, :cond_c9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c9
    throw v0

    :catchall_ca
    move-exception v0

    goto :goto_c4

    :catch_cc
    move-exception v0

    goto :goto_b7
.end method

.method public a(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/estrongs/android/util/ah;->j:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/util/ah;->j:Z

    invoke-virtual {p0, p1}, Lcom/estrongs/android/util/ah;->c(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/util/ah;->i()V

    goto :goto_4
.end method

.method public a(Lcom/estrongs/android/util/aj;Z)V
    .registers 7

    const/4 v3, 0x1

    if-eqz p2, :cond_31

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM file_cache WHERE server_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/estrongs/android/util/aj;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/estrongs/android/util/aj;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_31
    iget v0, p1, Lcom/estrongs/android/util/aj;->f:I

    if-ne v0, v3, :cond_7b

    iget v0, p1, Lcom/estrongs/android/util/aj;->b:I

    iget v1, p1, Lcom/estrongs/android/util/aj;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/util/ah;->a(II)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM file_cache WHERE server_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/estrongs/android/util/aj;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parent_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/estrongs/android/util/aj;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_75
    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7c

    :cond_7b
    :goto_7b
    return-void

    :cond_7c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/aj;

    iget v2, v0, Lcom/estrongs/android/util/aj;->f:I

    if-ne v2, v3, :cond_75

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/util/ah;->a(Lcom/estrongs/android/util/aj;Z)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_90} :catch_91

    goto :goto_75

    :catch_91
    move-exception v0

    goto :goto_7b
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 6

    iget-object v1, p0, Lcom/estrongs/android/util/ah;->k:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/util/ah;->m:Ljava/lang/Thread;

    if-nez v0, :cond_13

    new-instance v0, Lcom/estrongs/android/util/ai;

    invoke-direct {v0, p0}, Lcom/estrongs/android/util/ai;-><init>(Lcom/estrongs/android/util/ah;)V

    iput-object v0, p0, Lcom/estrongs/android/util/ah;->m:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/util/ah;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->l:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->n:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v1

    return-void

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/util/ah;->j:Z

    return v0
.end method

.method public b(I)Lcom/estrongs/android/util/ak;
    .registers 6

    sget-object v1, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    monitor-enter v1

    if-ltz p1, :cond_9

    :try_start_5
    sget v0, Lcom/estrongs/android/util/ah;->i:I

    if-lt p1, v0, :cond_c

    :cond_9
    monitor-exit v1

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/estrongs/android/util/ak;

    invoke-direct {v0}, Lcom/estrongs/android/util/ak;-><init>()V

    sget-object v2, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    sget v3, Lcom/estrongs/android/util/ah;->i:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    sget-object v2, Lcom/estrongs/android/util/ah;->g:[Z

    sget v3, Lcom/estrongs/android/util/ah;->i:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-boolean v2, v2, v3

    iput-boolean v2, v0, Lcom/estrongs/android/util/ak;->b:Z

    monitor-exit v1

    goto :goto_b

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "local"

    :goto_d
    invoke-direct {p0, v0}, Lcom/estrongs/android/util/ah;->g(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    :try_start_13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM server_id WHERE id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE FROM file_cache WHERE server_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3b} :catch_3c

    goto :goto_4

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_41
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public b(Ljava/lang/String;Z)V
    .registers 8

    const/4 v0, 0x0

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    :try_start_7
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const-string v1, "local"

    move-object v3, v1

    move-object v1, p1

    :goto_11
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_2d
    invoke-direct {p0, v3}, Lcom/estrongs/android/util/ah;->g(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3a

    invoke-direct {p0, v3}, Lcom/estrongs/android/util/ah;->f(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/estrongs/android/util/ah;->g(Ljava/lang/String;)I

    move-result v1

    :cond_3a
    if-eqz v1, :cond_6

    invoke-direct {p0, v1, v2}, Lcom/estrongs/android/util/ah;->b(ILjava/lang/String;)Lcom/estrongs/android/util/aj;

    move-result-object v3

    if-nez v3, :cond_6e

    if-eqz p2, :cond_45

    const/4 v0, 0x1

    :cond_45
    invoke-direct {p0, v1, v2, v0}, Lcom/estrongs/android/util/ah;->a(ILjava/lang/String;I)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_48} :catch_49

    goto :goto_6

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_4e
    :try_start_4e
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_6

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_6

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    goto :goto_11

    :cond_6e
    iget v0, v3, Lcom/estrongs/android/util/aj;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lcom/estrongs/android/util/aj;->e:I

    invoke-direct {p0, v3}, Lcom/estrongs/android/util/ah;->b(Lcom/estrongs/android/util/aj;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_77} :catch_49

    goto :goto_6

    :cond_78
    move-object v2, v1

    goto :goto_2d
.end method

.method public c(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/util/aj;",
            ">;"
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    :try_start_7
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "local"

    move-object v2, v0

    move-object v3, v1

    move-object v1, p1

    :goto_12
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2d
    invoke-direct {p0, v3}, Lcom/estrongs/android/util/ah;->g(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v3, v1}, Lcom/estrongs/android/util/ah;->a(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v3, v1, v2}, Lcom/estrongs/android/util/ah;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_6

    :cond_3e
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_6

    add-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_6

    add-int v5, v2, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_64} :catch_69

    move-result-object v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_12

    :catch_69
    move-exception v1

    goto :goto_6
.end method

.method public c()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/util/ah;->m:Ljava/lang/Thread;

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/util/ah;->o:Z

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->n:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->m:Ljava/lang/Thread;

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/Thread;->join(JI)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/util/ah;->m:Ljava/lang/Thread;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    :cond_26
    :goto_26
    return-void

    :catch_27
    move-exception v0

    goto :goto_26
.end method

.method public c(I)V
    .registers 4

    sget v0, Lcom/estrongs/android/util/ah;->e:I

    if-ne p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v1, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_9
    sput v0, Lcom/estrongs/android/util/ah;->i:I

    sget-object v0, Lcom/estrongs/android/util/ah;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sput p1, Lcom/estrongs/android/util/ah;->e:I

    sget v0, Lcom/estrongs/android/util/ah;->e:I

    if-lez v0, :cond_22

    sget v0, Lcom/estrongs/android/util/ah;->e:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/estrongs/android/util/ah;->g:[Z

    sget v0, Lcom/estrongs/android/util/ah;->e:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    :cond_22
    monitor-exit v1

    goto :goto_4

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public c(Ljava/lang/String;Z)V
    .registers 8

    const/4 v1, 0x0

    sget v0, Lcom/estrongs/android/util/ah;->e:I

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    if-eqz p2, :cond_29

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_29
    sget-object v2, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    monitor-enter v2

    :try_start_2c
    sget-object v0, Lcom/estrongs/android/util/ah;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_86

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3a
    sget v1, Lcom/estrongs/android/util/ah;->i:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_62

    sget-object v0, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    sget v1, Lcom/estrongs/android/util/ah;->i:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    sget-object v0, Lcom/estrongs/android/util/ah;->g:[Z

    sget v1, Lcom/estrongs/android/util/ah;->i:I

    add-int/lit8 v1, v1, -0x1

    aput-boolean p2, v0, v1

    sget-object v0, Lcom/estrongs/android/util/ah;->h:Ljava/util/HashMap;

    sget v1, Lcom/estrongs/android/util/ah;->i:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_b

    :catchall_5f
    move-exception v0

    monitor-exit v2
    :try_end_61
    .catchall {:try_start_2c .. :try_end_61} :catchall_5f

    throw v0

    :cond_62
    :try_start_62
    sget-object v1, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v1, v0

    sget-object v1, Lcom/estrongs/android/util/ah;->g:[Z

    sget-object v3, Lcom/estrongs/android/util/ah;->g:[Z

    add-int/lit8 v4, v0, 0x1

    aget-boolean v3, v3, v4

    aput-boolean v3, v1, v0

    sget-object v1, Lcom/estrongs/android/util/ah;->h:Ljava/util/HashMap;

    sget-object v3, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_86
    sget v0, Lcom/estrongs/android/util/ah;->i:I

    sget v3, Lcom/estrongs/android/util/ah;->e:I

    if-ge v0, v3, :cond_ac

    sget-object v0, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    sget v1, Lcom/estrongs/android/util/ah;->i:I

    aput-object p1, v0, v1

    sget-object v0, Lcom/estrongs/android/util/ah;->g:[Z

    sget v1, Lcom/estrongs/android/util/ah;->i:I

    aput-boolean p2, v0, v1

    sget-object v0, Lcom/estrongs/android/util/ah;->h:Ljava/util/HashMap;

    sget v1, Lcom/estrongs/android/util/ah;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/estrongs/android/util/ah;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/estrongs/android/util/ah;->i:I

    :goto_a9
    monitor-exit v2

    goto/16 :goto_b

    :cond_ac
    sget-object v0, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    sget-object v3, Lcom/estrongs/android/util/ah;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_b7
    sget v1, Lcom/estrongs/android/util/ah;->e:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_db

    sget-object v0, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    sget v1, Lcom/estrongs/android/util/ah;->e:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    sget-object v0, Lcom/estrongs/android/util/ah;->g:[Z

    sget v1, Lcom/estrongs/android/util/ah;->e:I

    add-int/lit8 v1, v1, -0x1

    aput-boolean p2, v0, v1

    sget-object v0, Lcom/estrongs/android/util/ah;->h:Ljava/util/HashMap;

    sget v1, Lcom/estrongs/android/util/ah;->e:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a9

    :cond_db
    sget-object v1, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    aput-object v3, v1, v0

    sget-object v1, Lcom/estrongs/android/util/ah;->g:[Z

    sget-object v3, Lcom/estrongs/android/util/ah;->g:[Z

    add-int/lit8 v4, v0, 0x1

    aget-boolean v3, v3, v4

    aput-boolean v3, v1, v0

    sget-object v1, Lcom/estrongs/android/util/ah;->h:Ljava/util/HashMap;

    sget-object v3, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fc
    .catchall {:try_start_62 .. :try_end_fc} :catchall_5f

    add-int/lit8 v0, v0, 0x1

    goto :goto_b7
.end method

.method public d(Ljava/lang/String;)V
    .registers 6

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    :try_start_6
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "local"

    move-object v1, v0

    move-object v0, p1

    :goto_10
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2b
    invoke-direct {p0, v1}, Lcom/estrongs/android/util/ah;->g(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/util/ah;->b(ILjava/lang/String;)Lcom/estrongs/android/util/aj;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/util/ah;->a(Lcom/estrongs/android/util/aj;Z)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3b} :catch_3c

    goto :goto_5

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_41
    :try_start_41
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_5

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5e} :catch_3c

    move-result-object v0

    goto :goto_10
.end method

.method public d()[Lcom/estrongs/android/util/ak;
    .registers 7

    const/4 v1, 0x0

    sget v0, Lcom/estrongs/android/util/ah;->i:I

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Lcom/estrongs/android/util/ak;

    move v0, v1

    :goto_8
    sget v3, Lcom/estrongs/android/util/ah;->i:I

    if-lt v0, v3, :cond_1a

    new-instance v0, Lcom/estrongs/android/util/ak;

    invoke-direct {v0}, Lcom/estrongs/android/util/ak;-><init>()V

    aput-object v0, v2, v1

    aget-object v0, v2, v1

    const-string v1, "Clean"

    iput-object v1, v0, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    return-object v2

    :cond_1a
    add-int/lit8 v3, v0, 0x1

    new-instance v4, Lcom/estrongs/android/util/ak;

    invoke-direct {v4}, Lcom/estrongs/android/util/ak;-><init>()V

    aput-object v4, v2, v3

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v2, v3

    sget-object v4, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    sget v5, Lcom/estrongs/android/util/ah;->i:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/estrongs/android/util/ak;->a:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v2, v3

    sget-object v4, Lcom/estrongs/android/util/ah;->g:[Z

    sget v5, Lcom/estrongs/android/util/ah;->i:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-boolean v4, v4, v5

    iput-boolean v4, v3, Lcom/estrongs/android/util/ak;->b:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public e()V
    .registers 3

    sget-object v1, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput v0, Lcom/estrongs/android/util/ah;->i:I

    sget-object v0, Lcom/estrongs/android/util/ah;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public f()I
    .registers 2

    sget v0, Lcom/estrongs/android/util/ah;->e:I

    return v0
.end method

.method public g()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    const-string v0, "DELETE FROM visit_history"

    iget-object v1, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_4

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public h()V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/estrongs/android/util/ah;->g()V

    move v2, v1

    :goto_a
    sget v0, Lcom/estrongs/android/util/ah;->i:I

    if-ge v2, v0, :cond_5

    sget v0, Lcom/estrongs/android/util/ah;->e:I

    if-ge v2, v0, :cond_5

    sget-object v0, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    iget-object v3, v0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "INSERT INTO visit_history (path,isdir) values("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/estrongs/android/util/ah;->f:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {p0, v4}, Lcom/estrongs/android/util/ah;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/estrongs/android/util/ah;->g:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4b

    const/4 v0, 0x1

    :goto_36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_47} :catch_4d

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_4b
    move v0, v1

    goto :goto_36

    :catch_4d
    move-exception v0

    goto :goto_5
.end method

.method public i()V
    .registers 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_b

    sget v0, Lcom/estrongs/android/util/ah;->e:I

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    :try_start_c
    sget-object v0, Lcom/estrongs/android/util/ah;->b:Lcom/estrongs/android/util/ah;

    iget-object v0, v0, Lcom/estrongs/android/util/ah;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "visit_history"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "path"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "isdir"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_7c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_71

    move-result-object v1

    if-eqz v1, :cond_30

    :try_start_2a
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_84
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_86

    move-result v0

    if-nez v0, :cond_36

    :cond_30
    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :cond_36
    :try_start_36
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sget v2, Lcom/estrongs/android/util/ah;->e:I

    if-le v0, v2, :cond_55

    sget v2, Lcom/estrongs/android/util/ah;->e:I

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    :goto_45
    const/4 v2, 0x0

    sput v2, Lcom/estrongs/android/util/ah;->i:I

    sget-object v2, Lcom/estrongs/android/util/ah;->h:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_4d
    .catchall {:try_start_36 .. :try_end_4d} :catchall_84
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4d} :catch_86

    :goto_4d
    if-nez v0, :cond_5a

    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :cond_55
    :try_start_55
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    goto :goto_45

    :cond_5a
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6f

    move v0, v9

    :goto_67
    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/util/ah;->c(Ljava/lang/String;Z)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6d
    .catchall {:try_start_55 .. :try_end_6d} :catchall_84
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_6d} :catch_86

    move-result v0

    goto :goto_4d

    :cond_6f
    move v0, v10

    goto :goto_67

    :catch_71
    move-exception v0

    move-object v1, v8

    :goto_73
    :try_start_73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_84

    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_7c
    move-exception v0

    move-object v1, v8

    :goto_7e
    if-eqz v1, :cond_83

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_83
    throw v0

    :catchall_84
    move-exception v0

    goto :goto_7e

    :catch_86
    move-exception v0

    goto :goto_73
.end method
