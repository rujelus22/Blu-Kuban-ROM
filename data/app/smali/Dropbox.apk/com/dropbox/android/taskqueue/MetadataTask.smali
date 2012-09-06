.class public Lcom/dropbox/android/taskqueue/MetadataTask;
.super Lcom/dropbox/android/taskqueue/k;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/dropbox/android/provider/g;

.field private final d:Landroid/net/Uri;

.field private final h:Lcom/dropbox/android/provider/u;

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/dropbox/android/taskqueue/MetadataTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/taskqueue/MetadataTask;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/android/provider/g;Landroid/net/Uri;Lcom/dropbox/android/provider/u;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/k;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->b:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->c:Lcom/dropbox/android/provider/g;

    .line 35
    iput-object p3, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->d:Landroid/net/Uri;

    .line 36
    iput-object p4, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->h:Lcom/dropbox/android/provider/u;

    .line 37
    iput p5, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->i:I

    .line 38
    return-void
.end method


# virtual methods
.method public final c()Lcom/dropbox/android/taskqueue/m;
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 42
    invoke-super {p0}, Lcom/dropbox/android/taskqueue/k;->c()Lcom/dropbox/android/taskqueue/m;

    .line 44
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->c:Lcom/dropbox/android/provider/g;

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 47
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->d:Landroid/net/Uri;

    invoke-static {v5, v0}, Lcom/dropbox/android/filemanager/s;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_9c

    .line 50
    iget-object v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->i:Ljava/lang/String;

    .line 54
    :goto_15
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->d:Landroid/net/Uri;

    iget-object v6, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->h:Lcom/dropbox/android/provider/u;

    invoke-static {v2, v4, v0, v6}, Lcom/dropbox/android/filemanager/s;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/dropbox/android/provider/u;)Ldbxyzptlk/l/k;

    move-result-object v6

    .line 58
    if-nez v6, :cond_87

    sget-object v0, Lcom/dropbox/android/filemanager/U;->a:Lcom/dropbox/android/filemanager/U;

    move-object v4, v0

    .line 60
    :goto_24
    if-eqz v6, :cond_8f

    move v2, v3

    .line 63
    :goto_27
    if-eqz v2, :cond_4f

    .line 65
    sget-object v0, Lcom/dropbox/android/taskqueue/MetadataTask;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Directory changed, going through line-by-line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->d:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, v6, Ldbxyzptlk/l/k;->u:Ljava/util/List;

    .line 69
    iput-object v1, v6, Ldbxyzptlk/l/k;->u:Ljava/util/List;

    .line 70
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 74
    :cond_4f
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->d:Landroid/net/Uri;

    invoke-static {v5, v0, v3}, Lcom/dropbox/android/filemanager/s;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Z)Ljava/util/LinkedList;

    move-result-object v0

    .line 76
    new-instance v3, Lcom/dropbox/android/filemanager/r;

    iget-object v5, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->b:Landroid/content/Context;

    iget-object v7, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->c:Lcom/dropbox/android/provider/g;

    invoke-direct {v3, v5, v7}, Lcom/dropbox/android/filemanager/r;-><init>(Landroid/content/Context;Lcom/dropbox/android/provider/g;)V

    .line 77
    invoke-virtual {v3, v0, v1, v4}, Lcom/dropbox/android/filemanager/r;->a(Ljava/util/List;Ljava/util/List;Lcom/dropbox/android/filemanager/U;)Z

    .line 79
    if-eqz v2, :cond_6e

    .line 80
    iget v0, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->i:I

    if-lez v0, :cond_6e

    .line 82
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->d:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/dropbox/android/provider/t;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 86
    :cond_6e
    if-eqz v6, :cond_81

    iget-object v0, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->h:Lcom/dropbox/android/provider/u;

    if-eqz v0, :cond_81

    .line 87
    iget-boolean v0, v6, Ldbxyzptlk/l/k;->t:Z

    if-eqz v0, :cond_92

    .line 88
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->h:Lcom/dropbox/android/provider/u;

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->b:Landroid/content/Context;

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;I)V

    .line 94
    :cond_81
    :goto_81
    invoke-virtual {v3}, Lcom/dropbox/android/filemanager/r;->a()V

    .line 96
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->b:Lcom/dropbox/android/taskqueue/m;

    return-object v0

    .line 58
    :cond_87
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/T;->a(Landroid/content/Context;)Lcom/dropbox/android/filemanager/U;

    move-result-object v0

    move-object v4, v0

    goto :goto_24

    .line 60
    :cond_8f
    const/4 v0, 0x0

    move v2, v0

    goto :goto_27

    .line 90
    :cond_92
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->h:Lcom/dropbox/android/provider/u;

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->b:Landroid/content/Context;

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;I)V

    goto :goto_81

    :cond_9c
    move-object v0, v1

    goto/16 :goto_15
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/MetadataTask;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ldbxyzptlk/i/i;
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/MetadataTask;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
