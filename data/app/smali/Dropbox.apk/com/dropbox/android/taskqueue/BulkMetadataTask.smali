.class public Lcom/dropbox/android/taskqueue/BulkMetadataTask;
.super Lcom/dropbox/android/taskqueue/k;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;

.field private static h:Lcom/dropbox/android/taskqueue/m;

.field private static i:Z

.field private static j:Lcom/dropbox/android/taskqueue/a;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/dropbox/android/provider/g;

.field private final d:Lcom/dropbox/android/filemanager/U;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->a:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->a:Lcom/dropbox/android/taskqueue/m;

    sput-object v0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->h:Lcom/dropbox/android/taskqueue/m;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->i:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/android/provider/g;Lcom/dropbox/android/filemanager/U;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/k;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->b:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->c:Lcom/dropbox/android/provider/g;

    .line 59
    iput-object p3, p0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->d:Lcom/dropbox/android/filemanager/U;

    .line 60
    return-void
.end method

.method public static a()Lcom/dropbox/android/taskqueue/m;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->h:Lcom/dropbox/android/taskqueue/m;

    return-object v0
.end method

.method public static a(Lcom/dropbox/android/taskqueue/a;)V
    .registers 1
    .parameter

    .prologue
    .line 52
    sput-object p0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->j:Lcom/dropbox/android/taskqueue/a;

    .line 53
    return-void
.end method

.method private b(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    .registers 3
    .parameter

    .prologue
    .line 139
    sput-object p1, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->h:Lcom/dropbox/android/taskqueue/m;

    .line 140
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->i:Z

    .line 141
    sget-object v0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->j:Lcom/dropbox/android/taskqueue/a;

    if-eqz v0, :cond_e

    .line 142
    sget-object v0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->j:Lcom/dropbox/android/taskqueue/a;

    invoke-interface {v0}, Lcom/dropbox/android/taskqueue/a;->a()V

    .line 144
    :cond_e
    return-object p1
.end method

.method public static i_()Z
    .registers 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->i:Z

    return v0
.end method


# virtual methods
.method public final c()Lcom/dropbox/android/taskqueue/m;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 65
    :try_start_1
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->a:Lcom/dropbox/android/taskqueue/m;

    sput-object v0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->h:Lcom/dropbox/android/taskqueue/m;

    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->i:Z

    .line 67
    sget-object v0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->j:Lcom/dropbox/android/taskqueue/a;

    if-eqz v0, :cond_11

    .line 68
    sget-object v0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->j:Lcom/dropbox/android/taskqueue/a;

    invoke-interface {v0}, Lcom/dropbox/android/taskqueue/a;->a()V

    .line 71
    :cond_11
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->c:Lcom/dropbox/android/provider/g;

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/dropbox/android/filemanager/s;->b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/LinkedList;

    move-result-object v1

    .line 74
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 75
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/filemanager/LocalEntry;

    .line 76
    iget-object v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_24

    .line 118
    :catchall_36
    move-exception v0

    sput-boolean v6, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->i:Z

    throw v0

    .line 79
    :cond_3a
    :try_start_3a
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_49

    .line 81
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->b:Lcom/dropbox/android/taskqueue/m;

    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->b(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_36

    move-result-object v0

    .line 118
    sput-boolean v6, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->i:Z

    :goto_48
    return-object v0

    .line 84
    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->d:Lcom/dropbox/android/filemanager/U;

    .line 85
    new-instance v3, Lcom/dropbox/android/filemanager/r;

    iget-object v4, p0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->c:Lcom/dropbox/android/provider/g;

    invoke-direct {v3, v4, v5}, Lcom/dropbox/android/filemanager/r;-><init>(Landroid/content/Context;Lcom/dropbox/android/provider/g;)V
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_36

    .line 88
    :try_start_54
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v4

    .line 89
    iget-object v4, v4, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Ldbxyzptlk/p/i;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 90
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-eq v4, v5, :cond_a5

    .line 91
    sget-object v0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->a:Ljava/lang/String;

    const-string v1, "Remote and local elements are different sizes!"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->b(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_75
    .catchall {:try_start_54 .. :try_end_75} :catchall_36
    .catch Ldbxyzptlk/m/i; {:try_start_54 .. :try_end_75} :catch_79
    .catch Ldbxyzptlk/m/b; {:try_start_54 .. :try_end_75} :catch_88
    .catch Ldbxyzptlk/m/a; {:try_start_54 .. :try_end_75} :catch_94

    move-result-object v0

    .line 118
    sput-boolean v6, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->i:Z

    goto :goto_48

    .line 95
    :catch_79
    move-exception v0

    .line 96
    :try_start_7a
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dropbox/android/util/b;->b(Landroid/content/Context;)V

    .line 97
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->b(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_36

    move-result-object v0

    .line 118
    sput-boolean v6, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->i:Z

    goto :goto_48

    .line 98
    :catch_88
    move-exception v0

    .line 99
    :try_start_89
    sget-object v0, Lcom/dropbox/android/filemanager/U;->a:Lcom/dropbox/android/filemanager/U;

    .line 100
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->c:Lcom/dropbox/android/taskqueue/m;

    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->b(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_36

    move-result-object v0

    .line 118
    sput-boolean v6, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->i:Z

    goto :goto_48

    .line 101
    :catch_94
    move-exception v0

    .line 103
    :try_start_95
    sget-object v1, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->a:Ljava/lang/String;

    const-string v2, "Error: "

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->b(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_a1
    .catchall {:try_start_95 .. :try_end_a1} :catchall_36

    move-result-object v0

    .line 118
    sput-boolean v6, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->i:Z

    goto :goto_48

    .line 107
    :cond_a5
    :try_start_a5
    invoke-virtual {v3, v1, v2, v0}, Lcom/dropbox/android/filemanager/r;->a(Ljava/util/List;Ljava/util/List;Lcom/dropbox/android/filemanager/U;)Z

    move-result v0

    .line 110
    if-eqz v0, :cond_b7

    .line 111
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/e;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 114
    :cond_b7
    invoke-virtual {v3}, Lcom/dropbox/android/filemanager/r;->a()V

    .line 116
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->b:Lcom/dropbox/android/taskqueue/m;

    invoke-direct {p0, v0}, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->b(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_bf
    .catchall {:try_start_a5 .. :try_end_bf} :catchall_36

    move-result-object v0

    .line 118
    sput-boolean v6, Lcom/dropbox/android/taskqueue/BulkMetadataTask;->i:Z

    goto :goto_48
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    const-string v0, "favorites"

    return-object v0
.end method

.method public final e()Ldbxyzptlk/i/i;
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    const-string v0, "favorites"

    return-object v0
.end method
