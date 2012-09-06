.class public Lcom/dropbox/android/provider/ZipperedUploadProvider;
.super Landroid/content/ContentProvider;
.source "panda.py"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    const-class v0, Lcom/dropbox/android/provider/ZipperedUploadProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/ZipperedUploadProvider;->c:Ljava/lang/String;

    .line 22
    const-string v0, "com.dropbox.android.ZipperedUploadProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/ZipperedUploadProvider;->a:Landroid/net/Uri;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/ZipperedUploadProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/ZipperedUploadProvider;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 43
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->k()Lcom/dropbox/android/taskqueue/G;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_2c

    .line 55
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/G;->d()Landroid/database/Cursor;

    move-result-object v1

    .line 56
    new-instance v3, Lcom/dropbox/android/provider/C;

    const-string v4, "_upload_in_progress"

    invoke-direct {v3, v1, v4}, Lcom/dropbox/android/provider/C;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v0}, Lcom/dropbox/android/taskqueue/G;->e()Landroid/database/Cursor;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/dropbox/android/provider/C;

    const-string v3, "_camera_upload_status"

    invoke-direct {v1, v0, v3}, Lcom/dropbox/android/provider/C;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_2c
    invoke-virtual {p0}, Lcom/dropbox/android/provider/ZipperedUploadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/UploadLogProvider;->c:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 64
    invoke-virtual {p0}, Lcom/dropbox/android/provider/ZipperedUploadProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/provider/UploadLogProvider;->b:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_5a

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6a

    .line 66
    :cond_5a
    new-instance v1, Lcom/dropbox/android/provider/C;

    const-string v2, "_upload_history_item_sep"

    invoke-static {v2}, Lcom/dropbox/android/provider/E;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "_separator"

    invoke-direct {v1, v2, v3}, Lcom/dropbox/android/provider/C;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_6a
    new-instance v1, Lcom/dropbox/android/provider/C;

    const-string v2, "_upload_failure"

    invoke-direct {v1, v7, v2}, Lcom/dropbox/android/provider/C;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Lcom/dropbox/android/provider/C;

    const-string v2, "_upload_history_item"

    invoke-direct {v1, v0, v2}, Lcom/dropbox/android/provider/C;-><init>(Landroid/database/Cursor;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/Cursor;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/Cursor;

    .line 72
    new-instance v1, Landroid/database/MergeCursor;

    invoke-direct {v1, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 74
    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method
